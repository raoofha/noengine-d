/*
if [ "$1" == "xterm-send" ]; then xterm-send bash $0 $2 ; exit 1 ; fi
echo -ne "\033c"

sdir=`dirname $0`
odir=${sdir}/../bin
ofilename=`basename $0 .${0##*.}`
ofilepath=${odir}/${ofilename}

mkdir -p $odir
cd $odir

build="ldc2 -betterC $0 -I$sdir -I$sdir/libs -of$ofilepath -J$sdir -L-lSDL2 -L-lGL -L-wrap=main"
build=" dmd -betterC $0 -I$sdir -I$sdir/libs -of$ofilepath -J$sdir -L-lSDL2 -L-lGL -L-wrap=main"

cmd=$1
echo $cmd...
if [ "$cmd" == "build" ]; then
time $build &&
$ofilepath ; echo $?
elif [ "$cmd" == "debug_build" ]; then
time $build -g &&
gdb -ex r -ex="bt" -ex="set confirm off" -ex=quit $ofilepath
fi
exit 1
*/

//import core.stdc.stdio;
//import core.stdc.stdlib;
//import core.stdc.string;
//import core.stdc.time;
//import core.stdc.math;
import std.math;
//import core.math;
import std.traits;

import SDL2;
import SDL2_opengl;
import SDL2_opengl_glext;

extern (C) {
float *_memsetFloat(float *p, float value, size_t count) {
    float *pstart = p;
    float *ptop;

    for (ptop = &p[count]; p < ptop; p++)
        *p = value;
    return pstart;
}
}

size_t strlen(const char* s) {
  size_t l = 0;
  while ( s[l] ) l += 1;
  return l;
}

IO io;
IO _lastIo;
SDL_Window* _window;
SDL_GLContext _glContext;
Vector position;
Vector scale = Vector(1, 1, 1);
SDL_Event _sdlEvent;
SDL_Event _lastSdlEvent;
ulong now = 0;
ulong last = 0;
ulong last0 = 0;
ulong tick = 0;
double t = 0;
double dt = 0;
double mspf = 1000 / 60;
HiddenState hiddenState;
HiddenState.Shader hiddenStateShader;
uint hiddenStateVao;
uint hiddenStateVertexBuffer;
uint hiddenStateColorBuffer;
uint hiddenStateTextureCoordinateBuffer;
uint hiddenStateTexture;
Unit unit;

uint createProgram(string vertex_shader_source, string fragment_shader_source, uint* vertexShaderId, uint* fragmentShaderId) {
  uint loadShader(char* source, uint shaderType) {
    uint shader = glCreateShader(shaderType);
    int length = cast(int) strlen(source);
    glShaderSource(shader, 1, &source , &length);
    glCompileShader(shader);
    int success = 0;
    glGetShaderiv( shader, GL_COMPILE_STATUS, &success );
    if ( success == 0 )
    {
      char[512] log;
      glGetShaderInfoLog( shader, 512, &length, log.ptr);
    }
    return shader;
  }

  auto getProgramInfoLog(uint program) {
    int length = 0;
    char[512] log;
    glGetProgramInfoLog( program, 512, &length, log.ptr );
    log[length] = 0;
    return log;
  }

  uint program = glCreateProgram();
  uint vertex_shader = loadShader(cast(char*) vertex_shader_source.ptr, GL_VERTEX_SHADER);
  uint fragment_shader = loadShader(cast(char*) fragment_shader_source.ptr, GL_FRAGMENT_SHADER);
  *vertexShaderId = vertex_shader;
  *fragmentShaderId = fragment_shader;
  glAttachShader(program, vertex_shader);
  glAttachShader(program, fragment_shader);
  glLinkProgram(program);
  int success = 0;
  glGetProgramiv(program, GL_LINK_STATUS, &success);
  if (success == 0) {
    SDL_Log("shader program error: %s", getProgramInfoLog(program).ptr);
  } else {
    glDeleteShader(vertex_shader);
    glDeleteShader(fragment_shader);
  }
  return program;
}

void checkForShaderErr(uint shader, uint vertexShader, uint fragmentShader, string file = __FILE__, int line = __LINE__) {
  auto getShaderInfoLog(uint program) {
    int length = 0;
    char[512] log;
    glGetShaderInfoLog( program, 512, &length, log.ptr );
    log[length] = 0;
    return log;
  }

  uint err = glGetError();
  if ( err != GL_NO_ERROR ) {
    int s = 0;
    glValidateProgram(shader);
    glGetProgramiv(shader, GL_VALIDATE_STATUS, &s);
    SDL_Log("%s:%d\n\tGL_VALIDATE_STATUS = %d\n\tGLError = %d\n\t%s %s\n", file.ptr, line, s == GL_TRUE, err, getShaderInfoLog(vertexShader).ptr, getShaderInfoLog(fragmentShader).ptr);
  }
}

struct HiddenState {
  struct Shader {
    uint id;
    uint vertexShaderId;
    uint fragmentShaderId;
    int vertexLocation;
    int textureCoordinateLocation;
    int colorDataLocation;
    int matrixLocation;
    int textureLocation;
    int hasTextureLocation;

    void init_() {
      id = createProgram(
          "
          attribute vec2 a_position;
          attribute vec2 a_texCoord;
          attribute vec4 a_color;
          uniform mat4 u_mvp;
          varying vec2 v_texCoord;
          varying vec4 v_color;
          void main() {
            gl_Position = u_mvp * vec4(a_position, 0.0, 1.0);
            v_texCoord = a_texCoord;
            v_color = a_color;
          }
          ",
          "
          precision mediump float;
          varying vec2 v_texCoord;
          varying vec4 v_color;
          uniform sampler2D u_texture;
          uniform bool u_hasTexture;
          void main() {
            if ( u_hasTexture ) {
              gl_FragColor = texture2D(u_texture, v_texCoord) * v_color;
            } else {
              gl_FragColor = v_color;
            }
          }
          ",
          &vertexShaderId, &fragmentShaderId
            );

      vertexLocation = glGetAttribLocation(id, "a_position" );
      textureCoordinateLocation = glGetAttribLocation(id , "a_texCoord" );
      colorDataLocation = glGetAttribLocation(id , "a_color" );
      matrixLocation = glGetUniformLocation(id, "u_mvp" );
      textureLocation = glGetUniformLocation(id, "u_texture");
      hasTextureLocation = glGetUniformLocation(id, "u_hasTexture");

      checkForShaderErr(id, vertexShaderId, fragmentShaderId);
    }
  }

  float[] matrix = Matrix.identity().value;
  float[] vertexData;
  int vertexSize = 2;
  int primitiveType = 4;
  float lineWidth = 0;
  float[] colorData;
  float[] textureCoordinateData = null; 
  ubyte[] textureData = null;
  int textureWidth = 0;
  int textureHeight = 0;
  int textureBytesPerPixel = 0;
  bool vertexDataIsDirty = true;
  bool colorDataIsDirty = true;
  bool textureCoordinateDataIsDirty = true;
  bool textureDataIsDirty = true;

  uint* vao;
  uint* vertexBuffer;
  uint* colorBuffer;
  uint* textureCoordinateBuffer;
  uint* texture;

  void updateTexture() {
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, *texture);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    //uint mode = (bytesPerPixel == 3 ? GL_RGB : GL_RGBA);
    uint mode;
    switch(textureBytesPerPixel) {
      case 4:
        mode = GL_RGBA;
        break;
      case 3:
        mode = GL_RGB;
        break;
      case 1:
        mode = GL_ALPHA;
        break;
      default:
        mode = GL_RGBA;
        break;
    }
    glTexImage2D(GL_TEXTURE_2D, 0, mode, textureWidth, textureHeight, 0, mode, GL_UNSIGNED_BYTE, textureData.ptr);

    auto shader = &hiddenStateShader;
    checkForShaderErr(shader.id, shader.vertexShaderId, shader.fragmentShaderId);
  }

  void draw() {
    auto shader = &hiddenStateShader;
    if ( vao && !*vao ) {
      glGenVertexArrays(1, vao);
      glBindVertexArray(*vao);

      glGenBuffers(1, vertexBuffer);
      glBindBuffer(GL_ARRAY_BUFFER, *vertexBuffer);
      glBufferData(GL_ARRAY_BUFFER, cast(int) (float.sizeof * vertexData.length), vertexData.ptr, GL_STATIC_DRAW);
      glVertexAttribPointer(0, vertexSize, GL_FLOAT, GL_FALSE, 0, null);
      glEnableVertexAttribArray(0);

      if ( textureData ) {
        glGenBuffers(1, textureCoordinateBuffer);
        glBindBuffer(GL_ARRAY_BUFFER, *textureCoordinateBuffer);
        glBufferData(GL_ARRAY_BUFFER, cast(int) (float.sizeof * vertexData.length / vertexSize * 2), textureCoordinateData.ptr, GL_STATIC_DRAW);
        glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 0, null);
        glEnableVertexAttribArray(1);
      }

      glGenBuffers(1, colorBuffer);
      glBindBuffer(GL_ARRAY_BUFFER, *colorBuffer);
      glBufferData(GL_ARRAY_BUFFER, cast(int) (float.sizeof * colorData.length), colorData.ptr, GL_STATIC_DRAW);
      glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE, 0, null);
      glEnableVertexAttribArray(2);

      checkForShaderErr(shader.id, shader.vertexShaderId, shader.fragmentShaderId);


      if (textureData && texture && !*texture) {
        glUseProgram(shader.id);
        glUniform1i(shader.textureLocation, 0);

        glGenTextures(1, texture);
        updateTexture();
      }
    }

    glUseProgram(shader.id);

    glBindVertexArray(*vao);

    glUniformMatrix4fv(shader.matrixLocation, 1, GL_FALSE, matrix.ptr);

    if ( vertexDataIsDirty ) {
      glBindBuffer(GL_ARRAY_BUFFER, *vertexBuffer);
      glBufferData(GL_ARRAY_BUFFER, cast(int) (float.sizeof * vertexData.length), vertexData.ptr, GL_STATIC_DRAW);
      vertexDataIsDirty = false;
    }

    if ( colorDataIsDirty ) {
      glBindBuffer(GL_ARRAY_BUFFER, *colorBuffer);
      glBufferData(GL_ARRAY_BUFFER, cast(int) (float.sizeof * colorData.length), colorData.ptr, GL_STATIC_DRAW);
      colorDataIsDirty = false;
    }

    if ( textureData && textureCoordinateDataIsDirty ) {
      glBindBuffer(GL_ARRAY_BUFFER, *textureCoordinateBuffer);
      glBufferData(GL_ARRAY_BUFFER, cast(int) (float.sizeof * vertexData.length / vertexSize * 2), textureCoordinateData.ptr, GL_STATIC_DRAW);
      textureCoordinateDataIsDirty = false;
    }

    if ( textureDataIsDirty ) {
      updateTexture();
    }

    if ( textureData && textureCoordinateData ) {
      glUniform1f(shader.hasTextureLocation , 1);
      glActiveTexture(GL_TEXTURE0);
      glBindTexture(GL_TEXTURE_2D, *texture);
    } else {
      glUniform1f(shader.hasTextureLocation , 0);
    }

    if ( lineWidth > 0 ) {
      glLineWidth(lineWidth);
    }

    glDrawArrays(primitiveType, 0, cast(uint) vertexData.length / vertexSize);

    checkForShaderErr(shader.id, shader.vertexShaderId, shader.fragmentShaderId);
  }
}

struct Vector {
  float x = 0;
  float y = 0;
  float z = 0;

  Vector opBinary(string op) (float scalar) {
    static if ( op == "*") {
      return Vector(scalar * x, scalar * y, scalar * z);
    } else static if ( op == "/") {
      return Vector(x / scalar, y / scalar, z / scalar );
    } else static if ( op == "-") {
      return Vector(x - scalar, y - scalar, z - scalar );
    } else static if ( op == "+") {
      return Vector(x + scalar, y + scalar, z + scalar );
    } else static assert(0, "Operator "~op~" not implemented");
  }

  Vector opBinaryRight(string op) (float scalar) {
    static if ( op == "*") {
      return Vector(scalar * x, scalar * y, scalar * z);
    } else static if ( op == "-") {
      return Vector(x - scalar, y - scalar, z - scalar );
    } else static assert(0, "Operator "~op~" not implemented");
  }

  Vector opBinary(string op) (Vector vector2) {
    static if ( op == "*") {
      return Vector(x * vector2.x, y * vector2.y, z * vector2.z);
    } else static if ( op == "/") {
      return Vector(x / vector2.x, y / vector2.y, z / vector2.z);
    } else static if ( op == "-") {
      return Vector(x - vector2.x, y - vector2.y, z - vector2.z);
    } else static if ( op == "+") {
      return Vector(x + vector2.x, y + vector2.y, z + vector2.z);
    } else static assert(0, "Operator "~op~" not implemented");
  }

  Vector opUnary(string s) () if (s == "-") {
    return -1 * this;
  }

  Vector normalize() {
    //float length = cast(float) sqrtf((x * x) + (y * y) + (z * z));
    float length = sqrt((x * x) + (y * y) + (z * z));
    if (length == 0) return this;
    x /= length;
    y /= length;
    z /= length;
    return this;
  }

  Vector cross(Vector vector) {
    auto x = this.y * vector.z - vector.y * this.z;
    auto y = vector.x * this.z - this.x * vector.z;
    auto z = this.x * vector.y - vector.x * this.y;
    //this.X = x;
    //this.Y = y;
    //this.Z = z;
    //return this;
    return Vector(x, y, z);
  }

  float dot(Vector vector) {
    return this.x * vector.x + this.y * vector.y + this.z * vector.z;
  }
}

struct Matrix {
  float[16] value = 0; //<--- for dmd
  this(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44) {
    this.value[0] = m11;
    this.value[1] = m12;
    this.value[2] = m13;
    this.value[3] = m14;
    this.value[4] = m21;
    this.value[5] = m22;
    this.value[6] = m23;
    this.value[7] = m24;
    this.value[8] = m31;
    this.value[9] = m32;
    this.value[10] = m33;
    this.value[11] = m34;
    this.value[12] = m41;
    this.value[13] = m42;
    this.value[14] = m43;
    this.value[15] = m44;
  }

  Matrix translate(Vector v) {
    auto translationMatrix = Matrix(
          1, 0, 0, 0,
          0, 1, 0, 0,
          0, 0, 1, 0,
          v.x, v.y, v.z, 1);
    return this.multiply(&translationMatrix);
  }

  Matrix scale(float x, float y, float z = 1) {
    auto scaleMatrix = Matrix(
          x,  0, 0, 0,
          0, y,  0, 0,
          0, 0, z,  0,
          0, 0, 0, 1
          );
    return this.multiply(&scaleMatrix); 
  }

  Matrix scale(Vector s) {
    return scale(s.x, s.y, s.z);
  }

  Matrix rotate(Vector r) {
    auto rx = Matrix.rotationX(r.x);
    auto ry = Matrix.rotationY(r.y);
    auto rz = Matrix.rotationZ(r.z);
    return this.multiply(&rx).multiply(&ry).multiply(&rz);
  }

  static Matrix rotationX(float teta) {
    auto c = cos(teta);
    auto s = sin(teta);
    return Matrix(
             1f, 0f, 0f, 0f,
             0f,  c, -s, 0f,
             0f,  s,  c, 0f,
             0f, 0f, 0f, 1f);
  }

  static Matrix rotationY(float teta) {
    auto c = cos(teta);
    auto s = sin(teta);
    return Matrix(
             c, 0f,  s, 0f,
             0f, 1f, 0f, 0f,
             -s, 0f,  c, 0f,
             0f, 0f, 0f, 1f);
  }

  static Matrix rotationZ(float teta) {
    auto c = cos(teta);
    auto s = sin(teta);
    return Matrix(
             c, -s, 0f, 0f,
             s,  c, 0f, 0f,
             0f, 0f, 1f, 0f,
             0f, 0f, 0f, 1f);
  }

  static Matrix identity() {
    return Matrix(
      1f, 0f, 0f, 0f,
      0f, 1f, 0f, 0f,
      0f, 0f, 1f, 0f,
      0f, 0f, 0f, 1f);
  }

  static Matrix ortho( float left, float right, float bottom, float top, float zNear = 0f, float zFar = 1f ) {
    return Matrix(
        2f / ( right - left ), 0, 0, 0,
        0, 2f / ( top - bottom ), 0, 0,
        0, 0, -2f / ( zFar - zNear ), 0,
        -( right + left ) / ( right - left ), -( top + bottom ) / ( top - bottom ), -( zFar + zNear ) / ( zFar - zNear ), 1
        );
  }

  static Matrix lookat(Vector cameraPosition, Vector cameraTarget, Vector cameraUpVector) {
    auto vector = (cameraPosition - cameraTarget).normalize();
    auto vector2 = cameraUpVector.cross(vector).normalize();
    auto vector3 = vector.cross(vector2).normalize();
    return Matrix(
        vector2.x, vector3.x, vector.x, 0f,
        vector2.y, vector3.y, vector.y, 0f,
        vector2.z, vector3.z, vector.z, 0f,
        -vector2.dot(cameraPosition), -vector3.dot(cameraPosition), -vector.dot(cameraPosition), 1f
        );
  }

  Matrix multiply(const Matrix* matrix) {
    Matrix m = Matrix(
        (this.value[0] * matrix.value[0]) + (this.value[4] * matrix.value[1]) + (this.value[8] * matrix.value[2]) + (this.value[12] * matrix.value[3]),
        (this.value[1] * matrix.value[0]) + (this.value[5] * matrix.value[1]) + (this.value[9] * matrix.value[2]) + (this.value[13] * matrix.value[3]),
        (this.value[2] * matrix.value[0]) + (this.value[6] * matrix.value[1]) + (this.value[10] * matrix.value[2]) + (this.value[14] * matrix.value[3]),
        (this.value[3] * matrix.value[0]) + (this.value[7] * matrix.value[1]) + (this.value[11] * matrix.value[2]) + (this.value[15] * matrix.value[3]),
        (this.value[0] * matrix.value[4]) + (this.value[4] * matrix.value[5]) + (this.value[8] * matrix.value[6]) + (this.value[12] * matrix.value[7]),
        (this.value[1] * matrix.value[4]) + (this.value[5] * matrix.value[5]) + (this.value[9] * matrix.value[6]) + (this.value[13] * matrix.value[7]),
        (this.value[2] * matrix.value[4]) + (this.value[6] * matrix.value[5]) + (this.value[10] * matrix.value[6]) + (this.value[14] * matrix.value[7]),
        (this.value[3] * matrix.value[4]) + (this.value[7] * matrix.value[5]) + (this.value[11] * matrix.value[6]) + (this.value[15] * matrix.value[7]),
        (this.value[0] * matrix.value[8]) + (this.value[4] * matrix.value[9]) + (this.value[8] * matrix.value[10]) + (this.value[12] * matrix.value[11]),
        (this.value[1] * matrix.value[8]) + (this.value[5] * matrix.value[9]) + (this.value[9] * matrix.value[10]) + (this.value[13] * matrix.value[11]),
        (this.value[2] * matrix.value[8]) + (this.value[6] * matrix.value[9]) + (this.value[10] * matrix.value[10]) + (this.value[14] * matrix.value[11]),
        (this.value[3] * matrix.value[8]) + (this.value[7] * matrix.value[9]) + (this.value[11] * matrix.value[10]) + (this.value[15] * matrix.value[11]),
        (this.value[0] * matrix.value[12]) + (this.value[4] * matrix.value[13]) + (this.value[8] * matrix.value[14]) + (this.value[12] * matrix.value[15]),
        (this.value[1] * matrix.value[12]) + (this.value[5] * matrix.value[13]) + (this.value[9] * matrix.value[14]) + (this.value[13] * matrix.value[15]),
        (this.value[2] * matrix.value[12]) + (this.value[6] * matrix.value[13]) + (this.value[10] * matrix.value[14]) + (this.value[14] * matrix.value[15]),
        (this.value[3] * matrix.value[12]) + (this.value[7] * matrix.value[13]) + (this.value[11] * matrix.value[14]) + (this.value[15] * matrix.value[15])
        );
    return m;
  }
}

struct Color {
  float[4] value;

  const static Color white = Color(255, 255, 255, 255);
  const static Color black = Color(0, 0, 0, 255);
  const static Color red = Color(255, 0, 0, 255);
  const static Color green = Color(0, 255, 0, 255);
  const static Color blue = Color(0, 0, 255, 255);
  const static Color gray = Color(114, 114, 114, 255);
  const static Color yellow = Color(229, 255, 63, 255);

  const static Color gray2 = Color(40, 40, 40, 255);
  const static Color gray3 = Color(60, 60, 60, 255);
  this(int r, int g, int b, int a = 255) {
    value[0] = cast(float) r / 255;
    value[1] = cast(float) g / 255;
    value[2] = cast(float) b / 255;
    value[3] = cast(float) a / 255;
  }
}

struct Camera {
  Matrix matrix;
  Vector viewSize = Vector(1920, 1080);
  Vector position = Vector(0, 0, -1000);
  Vector up = Vector(0, -1, 0);
  Vector lookat = Vector(0, 0, 0);
  int zoom_ratio = 2;
  float zoom_level = 1;

  this(Vector viewSize, Vector position = Vector(0, 0, -1000), Vector up = Vector(0, -1, 0), Vector lookat = Vector(0, 0, 0)) {
    this.viewSize = viewSize;
    this.position = position;
    this.up = up;
    this.lookat = lookat;
    this.update();
  }

  void update() {
    Matrix view = Matrix.lookat(position, lookat, up);
    Matrix projection = Matrix.ortho(
        //0,
        // viewSize.x / zoom_level,
        //-viewSize.y / zoom_level,
        //0,
        //-viewSize.x * 2,
        // viewSize.x * 2
        -viewSize.x / zoom_level / 2,
         viewSize.x / zoom_level / 2,
        -viewSize.y / zoom_level / 2,
         viewSize.y / zoom_level / 2,
        -viewSize.x * 2,
         viewSize.x * 2
        );
    matrix = projection.multiply(&view);
  }

  void move(float x, float y = 0, float z = 0) {
    move(Vector(x, y, z));
  }

  void move(Vector v) {
    position = position + v;
    lookat = lookat + v;
  }

  void zoom(int level, Vector m = Vector(0,0,0)) {
    m.z = 0;
    if (level != 0) {
      zoom_level = level < 0 ? zoom_level / zoom_ratio : zoom_level * zoom_ratio;
      if (level > 0) {
        position = position + m / zoom_level;
        lookat = lookat + m / zoom_level;
      } else {
        position = position + m / (-zoom_level * zoom_ratio);
        lookat = lookat + m / (-zoom_level * zoom_ratio);
      }
    }
  }
}

enum MS { emit , before, now, after }
struct Children {}

struct Transform(T) {
  HiddenState hs;
  size_t s = 0;
  size_t lastS = -1;
  bool hidden;
  bool dragStarted = false;
  Matrix matrix = defaultMatrix();
  Vector position = Vector(0, 0);
  Vector origin = Vector(0, 0);
  Vector size = Vector(1, 1);
  Vector scale = Vector(1, 1, 1);
  Vector rotation = Vector(0, 0, 0);
  void* parent;
  T children;

  static Matrix defaultMatrix() {
    Vector position = Vector(0, 0);
    Vector size = Vector(100, 100);
    Vector origin = size / 2;
    Vector scale = Vector(1, 1, 1);
    Vector rotation = Vector(0, 0, 0);

    Matrix matrix = Matrix.identity
      .translate(position)
      .rotate(rotation)
      .scale(scale)
      .translate(-origin)
      .scale(size)
      ;
    Camera camera;
    camera.update();
    return camera.matrix.multiply(&matrix);
  }

  void update() {
    Matrix modelMatrix = Matrix.identity
      .translate(position)
      .rotate(rotation)
      .scale(scale)
      .translate(-origin)
      .scale(size)
      ;
    if ( parent ) {
      matrix = (cast(Transform!Children*) parent).matrix.multiply(&modelMatrix);
    } else {
      matrix = io.camera.matrix.multiply(&modelMatrix);
    }
    foreach (childname; __traits(allMembers, T)) {
      updateArray(mixin("children." ~ childname));
    }
  }

  void draw() {
    if (!hidden) {
      foreach (childname; __traits(allMembers, T)) {
        drawArray(mixin("children." ~ childname));
      }
      static if ( is(T == Children) ) {
        //hs.draw();
      }
    }
  }

  void run(MS ms, size_t s) {}

  void setOriginCenter() {
    origin = Vector(size.x / 2, size.y / 2);
  }

  void setOriginLeft() {
    origin = Vector(0, size.y / 2);
  }

  void setOriginRight() {
    origin = Vector(size.x, size.y / 2);
  }

  void setOriginTop() {
    origin = Vector(size.x / 2, 0);
  }

  void setOriginTopLeft() {
    origin = Vector(0, 0);
  }

  void setOriginTopRight() {
    origin = Vector(size.x, 0);
  }

  void setOriginBottom() {
    origin = Vector(size.x / 2, size.y);
  }

  void setOriginBottomLeft() {
    origin = Vector(0, size.y);
  }

  void setOriginBottomRight() {
    origin = Vector(size.x, size.y);
  }

  Vector absolutePosition() {
    if ( parent ) {
      return (cast(Transform*) parent).absolutePosition + position;
      //return (cast(Transform*) parent).absolutePosition + (cast(Transform*) parent).origin + position - origin;
    }
    return position;
    //return position - origin;
  }

  bool contains(Vector p) {
    auto p2 = (p - (absolutePosition - origin * scale)) / scale ;
    //auto p2 = (p - absolutePosition) / scale ;
    if ( p2.x >= 0 && p2.x  <= size.x && p2.y >= 0 && p2.y <= size.y) {
      return true;
    }
    return false;
  }

  void setScaleWithSize(float x, float y) {
    scale.x = x / size.x;
    scale.y = y / size.y;
  }

  void scaleToFit() {
    float sx = io.camera.viewSize.x / size.x;
    float sy = io.camera.viewSize.y / size.y;
    float s = sx > sy ? sx : sy;
    scale = Vector(s, s);
  }

  Vector toLocal(Vector v) {
    if ( parent ) {
      return (cast(Transform*) parent).toLocal(v) - position;
    }
    return v - position;
  }

  bool onClick() {
    return contains(io.mousePosition) && io.click;
  }

  bool onDrag() {
    if ( contains(io.mousePosition) && io.dragStart ) {
      dragStarted = true;
    }
    if ( io.dragEnd ) {
      dragStarted = false;
    }
    return dragStarted && io.drag;
  }
}

void emit(T)(ref T self, size_t newS) {
  self.lastS = self.s;
  self.s = newS;
  if ( self.lastS != self.s) {
    self.run(MS.after, self.lastS);
    self.run(MS.before, self.s);
  }
  self.run(MS.now, self.s);
}

void updateArray(T)(ref T arr) {
  static if (isArray!(T)) {
    foreach( ref a ; arr ) {
      updateArray(a);
    }
  } else {
    arr.update();
  }
}

void drawArray(T)(ref T arr) {
  static if (isArray!(T)) {
    foreach( ref a ; arr ) {
      drawArray(a);
    }
  } else {
    arr.draw();
  }
}

void setColor(T)(ref T self, ref Color color) {
  for(size_t i = 0 ; i < self.colorData.length ; i += 4) {
    self.colorData[i + 0] = color.value[0];
    self.colorData[i + 1] = color.value[1];
    self.colorData[i + 2] = color.value[2];
    self.colorData[i + 3] = color.value[3];
  }
  self.hs.colorDataIsDirty = true;
}

struct Unit {
  alias transform this;
  Transform!Children transform;
  //static float[] vertexData = [ 0, 0, 1, 0, 0.5, sqrt(3.0)/2 ];
  static float[] vertexData = [ 0, 0, 1, 0, 0.5, 1 ];
  float[] colorData = [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ]; 

  void init_(int width = 100, Color color = Color.white) {
    size = Vector(width, width * sqrt(3.0) / 2);
    //size = Vector(width, width);
    //printf("%f %f\n", vertexData[5], size.y);
    origin = size / 2;
    hs = hiddenState;
    hs.matrix = matrix.value;
    hs.vertexData = vertexData; 
    hs.colorData = colorData;
    this.setColor(color);
    this.update();
  }

  void draw() {
    hs.draw();
  }
}

struct IO {
  bool unknown ; bool[3] padding0 ; bool a ; bool b ; bool c ; bool d ; bool e ; bool f ; bool g ; bool h ; bool i ; bool j ; bool k ; bool l ; bool m ; bool n ; bool o ; bool p ; bool q ; bool r ; bool s ; bool t ; bool u ; bool v ; bool w ; bool x ; bool y ; bool z ; bool _1 ; bool _2 ; bool _3 ; bool _4 ; bool _5 ; bool _6 ; bool _7 ; bool _8 ; bool _9 ; bool _0 ; bool _return ; bool escape ; bool backspace ; bool tab ; bool space ; bool minus ; bool equals ; bool leftbracket ; bool rightbracket ; bool backslash ; bool nonushash ; bool semicolon ; bool apostrophe ; bool grave ; bool comma ; bool period ; bool slash ; bool capslock ; bool f1 ; bool f2 ; bool f3 ; bool f4 ; bool f5 ; bool f6 ; bool f7 ; bool f8 ; bool f9 ; bool f10 ; bool f11 ; bool f12 ; bool printscreen ; bool scrolllock ; bool pause ; bool insert ; bool home ; bool pageup ; bool _delete ; bool end ; bool pagedown ; bool right ; bool left ; bool down ; bool up ; bool numlockclear ; bool kp_divide ; bool kp_multiply ; bool kp_minus ; bool kp_plus ; bool kp_enter ; bool kp_1 ; bool kp_2 ; bool kp_3 ; bool kp_4 ; bool kp_5 ; bool kp_6 ; bool kp_7 ; bool kp_8 ; bool kp_9 ; bool kp_0 ; bool kp_period ; bool nonusbackslash ; bool application ; bool power ; bool kp_equals ; bool f13 ; bool f14 ; bool f15 ; bool f16 ; bool f17 ; bool f18 ; bool f19 ; bool f20 ; bool f21 ; bool f22 ; bool f23 ; bool f24 ; bool execute ; bool help ; bool menu ; bool select ; bool stop ; bool again ; bool undo ; bool cut ; bool copy ; bool paste ; bool find ; bool mute ; bool volumeup ; bool volumedown ; bool[6] padding1 ; bool international2 ; bool international3 ; bool international4 ; bool international5 ; bool international6 ; bool international7 ; bool international8 ; bool international9 ; bool lang1 ; bool lang2 ; bool lang3 ; bool lang4 ; bool lang5 ; bool lang6 ; bool lang7 ; bool lang8 ; bool lang9 ; bool alterase ; bool sysreq ; bool cancel ; bool clear ; bool prior ; bool return2 ; bool separator ; bool _out ; bool oper ; bool clearagain ; bool crsel ; bool exsel ; bool[11] padding2 ; bool kp_00 ; bool kp_000 ; bool thousandsseparator ; bool decimalseparator ; bool currencyunit ; bool currencysubunit ; bool kp_leftparen ; bool kp_rightparen ; bool kp_leftbrace ; bool kp_rightbrace ; bool kp_tab ; bool kp_backspace ; bool kp_a ; bool kp_b ; bool kp_c ; bool kp_d ; bool kp_e ; bool kp_f ; bool kp_xor ; bool kp_power ; bool kp_percent ; bool kp_less ; bool kp_greater ; bool kp_ampersand ; bool kp_dblampersand ; bool kp_verticalbar ; bool kp_dblverticalbar ; bool kp_colon ; bool kp_hash ; bool kp_space ; bool kp_at ; bool kp_exclam ; bool kp_memstore ; bool kp_memrecall ; bool kp_memclear ; bool kp_memadd ; bool kp_memsubtract ; bool kp_memmultiply ; bool kp_memdivide ; bool kp_plusminus ; bool kp_clear ; bool kp_clearentry ; bool kp_binary ; bool kp_octal ; bool kp_decimal ; bool kp_hexadecimal ; bool[2] padding3 ; bool lctrl ; bool lshift ; bool lalt ; bool lgui ; bool rctrl ; bool rshift ; bool ralt ; bool rgui ; bool[25] padding4 ; bool mode ; bool audionext ; bool audioprev ; bool audiostop ; bool audioplay ; bool audiomute ; bool mediaselect ; bool www ; bool mail ; bool calculator ; bool computer ; bool ac_search ; bool ac_home ; bool ac_back ; bool ac_forward ; bool ac_stop ; bool ac_refresh ; bool ac_bookmarks ; bool brightnessdown ; bool brightnessup ; bool displayswitch ; bool kbdillumtoggle ; bool kbdillumdown ; bool kbdillumup ; bool eject ; bool sleep ; bool app1 ; bool app2 ; bool audiorewind ; bool audiofastforward ; bool[226] padding5;

  bool mouseMotion;
  bool mouseLeftButton;
  bool mouseMiddleButton;
  bool mouseRightButton;
  bool mouseWheelDown; 
  bool mouseWheelUp;
  bool click;
  bool doubleClick;
  bool dragStart;
  bool drag;
  bool dragEnd;
  bool windowResize;

  Camera camera = Camera(Vector(1920, 1080));

  int[2] mousePositionWindow;
  Vector mousePosition;

  uint windowID;
  Vector windowSize = Vector(960, 540);
  string windowTitle = "noengine";
  bool windowResizable = false;

  int quit = 0;
  int argc;
  char** args;
}

version ( WebAssembly ) {
} else {
//extern (C) int init_();
//extern (C) int init_() { return 0; }
extern (C) int __real_main();
extern (C) int __wrap_main(int argc, char** args) {
//extern int main();
//extern (C) int _d_run_main(int argc, char** args, void* mainFunc) {
  void _windowResized(int w, int h) {
    io.windowSize = Vector(w, h);
    io.windowResize = true;
    float sx = io.windowSize.x / io.camera.viewSize.x;
    float sy = io.windowSize.y / io.camera.viewSize.y;
    float s = sx < sy ? sx : sy;
    scale = Vector(s, s);
    position = (io.windowSize - s * io.camera.viewSize) / 2;
    glViewport(cast(int) position.x, cast(int) position.y, cast(int)(s * io.camera.viewSize.x), cast(int)(s * io.camera.viewSize.y));
    //glViewport(cast(int) position.x, cast(int) position.y - 1, cast(int)(s * io.camera.viewSize.x), cast(int)(s * io.camera.viewSize.y));
    //glViewport(0, 0, cast(int)(io.windowSize.x), cast(int)(io.windowSize.y));
  }

  io.camera.update();
  //srand(cast(uint) time(null));
  //srand(234234);
  io.argc = argc;
  io.args = args;

  //void* handle = dlopen(null, RTLD_NOW);
  //auto init_ = dlsym(handle, "init_");
  void* handle = SDL_LoadObject(null);
  auto init_ = SDL_LoadFunction(handle, "init_");
  if (init_) {
    int ret = (cast(int function()) init_)();
    if ( ret ) return ret;
    if ( io.quit ) return ret;
  }

  if( SDL_Init( SDL_INIT_VIDEO | SDL_INIT_AUDIO ) < 0 ) {
    SDL_Log("SDL could not initilize: %s\n", SDL_GetError());
    return 1;
  }

  _window = SDL_CreateWindow(io.windowTitle.ptr, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
      cast(int) io.windowSize.x, cast(int) io.windowSize.y, SDL_WINDOW_OPENGL  | ( io.windowResizable ? SDL_WINDOW_RESIZABLE : 0 )
      );
  //io.windowID = SDL_GetWindowID(_window);

  //SDL_SysWMinfo wmInfo;
  //SDL_VERSION(&wmInfo.version_);
  //SDL_GetWindowWMInfo(_window, &wmInfo);
  //io.windowID = wmInfo.info.x11.window;

  //printf("%lu\n", window);
  //SDL_ShowCursor(SDL_DISABLE);
  //SDL_SetWindowOpacity(window, 0);

  //SDL_GL_LoadLibrary(null);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);
  //SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_ES);
  _glContext = SDL_GL_CreateContext(_window);

  //glEnable(GL_DEPTH_TEST);
  glEnable(GL_BLEND);
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

  _windowResized(cast(int) io.windowSize.x, cast(int) io.windowSize.y);
  hiddenStateShader.init_();
  hiddenState.vao = &hiddenStateVao;
  hiddenState.vertexBuffer = &hiddenStateVertexBuffer;
  hiddenState.colorBuffer = &hiddenStateColorBuffer;
  hiddenState.textureCoordinateBuffer = &hiddenStateTextureCoordinateBuffer;
  hiddenState.texture = &hiddenStateTexture;
  hiddenState.draw();
  hiddenState.vertexDataIsDirty = true;
  hiddenState.colorDataIsDirty = true;
  hiddenState.textureCoordinateDataIsDirty = true;
  unit.init_();
  int ret = 0;
  last0 = last = SDL_GetPerformanceCounter();
  while (!io.quit) {
    glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
    glClear(GL_COLOR_BUFFER_BIT);

    now = SDL_GetPerformanceCounter();
    dt = (now - last) * 1000.0 / SDL_GetPerformanceFrequency();
    if (dt < mspf) {
      int d = cast(int) (mspf - dt);
      SDL_Delay(d);
      dt = mspf;
    }
    last = SDL_GetPerformanceCounter();

    while(SDL_PollEvent(&_sdlEvent) != 0) {
      switch (_sdlEvent.type) {
        case SDL_MOUSEBUTTONDOWN:
          if ( _sdlEvent.button.button == SDL_BUTTON_LEFT ) {
            io.mouseLeftButton = true;
          } else if ( _sdlEvent.button.button == SDL_BUTTON_RIGHT ) {
            io.mouseRightButton = true;
          } else if ( _sdlEvent.button.button == SDL_BUTTON_MIDDLE ) {
            io.mouseMiddleButton = true;
          }
          break;
        case SDL_MOUSEBUTTONUP:
          if ( _sdlEvent.button.button == SDL_BUTTON_LEFT ) {
            io.mouseLeftButton = false;
          } else if ( _sdlEvent.button.button == SDL_BUTTON_RIGHT ) {
            io.mouseRightButton = false;
          } else if ( _sdlEvent.button.button == SDL_BUTTON_MIDDLE ) {
            io.mouseMiddleButton = false;
          }
          break;
        case SDL_MOUSEMOTION:
          int mx, my;
          mx = _sdlEvent.motion.x;
          my = _sdlEvent.motion.y;
          io.mousePositionWindow = [mx, my];
          io.mousePosition = (Vector(mx, my) - position) / scale - io.camera.viewSize / 2;
          io.mouseMotion = true;
          break;
        case SDL_MOUSEWHEEL:
          if ( _sdlEvent.wheel.y > 0 ) {
            io.mouseWheelUp = true;
          } else if ( _sdlEvent.wheel.y < 0 ) {
            io.mouseWheelDown = true;
          }
          break;
        case SDL_KEYDOWN:
          (cast(bool*) &io)[_sdlEvent.key.keysym.scancode] = true;
          break;
        case SDL_KEYUP:
          (cast(bool*) &io)[_sdlEvent.key.keysym.scancode] = false;
          break;
        case SDL_WINDOWEVENT:
          switch (_sdlEvent.window.event) {
            case SDL_WINDOWEVENT_RESIZED:
              _windowResized(_sdlEvent.window.data1, _sdlEvent.window.data2);
              break;
            default:
              break;
          }
          break;
        case SDL_QUIT:
          return 0;
          break;
        default:
          break;
      }
    }

    if ( _sdlEvent.type == SDL_MOUSEBUTTONUP && _lastSdlEvent.type == SDL_MOUSEBUTTONDOWN ) {
      size_t eventDeltaTime = _sdlEvent.key.timestamp - _lastSdlEvent.key.timestamp;
      if ( eventDeltaTime < 500) { 
        io.click = true;
      }
    }

    if ( io.mouseLeftButton ) {
      io.dragStart = true;
    } else if ( _lastIo.drag ) {
      io.dragEnd = true;
      io.drag = false;
    }

    if ( io.mouseLeftButton && io.mouseMotion && (io.dragStart || io.drag) ) {
      io.drag = true;
    }

    if ( io.lctrl && io.w ) {
      //return 0;
      io.quit = true;
    }

    t = (SDL_GetPerformanceCounter() - last0) * 1000.0 / SDL_GetPerformanceFrequency();
    ret = __real_main();
    //ret = main();
    if (ret) {
      break;
    }

    //if ( io.windowSize != _lastio.windowSize && !(_sdlEvent.type == SDL_WINDOWEVENT && _sdlEvent.window.event == SDL_WINDOWEVENT_RESIZED) ) {
    //  int w = cast(int) io.windowSize.x;
    //  int h = cast(int) io.windowSize.y;
    //  int wOld = cast(int) _lastio.windowSize.x;
    //  int hOld = cast(int) _lastio.windowSize.y;
    //  int dw = w - wOld;
    //  int dh = h - hOld;
    //  int x, y;
    //  SDL_SetWindowSize(_window, w, h);
    //  SDL_GetWindowPosition(_window, &x, &y);
    //  SDL_SetWindowPosition(_window, x - dw / 2 , y - dh / 2);
    //  _windowResized(w, h);
    //}

    if ( io.windowTitle != _lastIo.windowTitle ) {
      SDL_SetWindowTitle(_window, io.windowTitle.ptr);
    }

    _lastSdlEvent = _sdlEvent;
    _lastIo = io;
    io.mouseMotion = false;
    io.mouseWheelUp = false;
    io.mouseWheelDown = false;
    io.click = false;
    io.dragEnd = false;
    io.windowResize = false;
    tick += 1;

    SDL_GL_SwapWindow(_window);
  }

  return ret;
}
version (App) {} else {
extern (C) void main() {}
}
}
