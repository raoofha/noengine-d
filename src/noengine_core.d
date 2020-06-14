/*
if [ "$1" == "xterm-send" ]; then xterm-send bash $0 $2 ; exit 1 ; fi
echo -ne "\033c"

sdir=`dirname $0`
odir=${sdir}/../bin
ofilename=`basename $0 .${0##*.}`
ofilepath=${odir}/${ofilename}

mkdir -p $odir
cd $odir

build="noengine ldc2 $0 -of$ofilepath"
build="noengine  dmd $0 -of$ofilepath"

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

module noengine_core;

import core.stdc.stdio;
public import noengine;

struct Data {
  struct Image(size_t size = 0) {
    int width;
    int height;
    int bytesPerPixel;
    ubyte[size - 3 * int.sizeof] data;
  }

  struct Font(size_t siz, size_t numberOfGlyphs, size_t fontSize) {
    Image!siz image;
    char[numberOfGlyphs] glyphs;
    size_t size = fontSize;
    alias image this;
  }
}

struct Line {
  alias transform this;
  Transform!Children transform;
  static float[] vertexData = [0, 0, 0, 1];
  float[4 * 2] colorData = 1;
  float lineWidth = 1;

  void init_(float height, Color color = Color.white) {
    size = Vector(0, height);
    setOriginTop;
    hs = hiddenState;
    hs.matrix = matrix.value;
    hs.vertexData = vertexData;
    hs.colorData = colorData;
    hs.textureData = null;
    hs.vertexSize = 2;
    hs.primitiveType = 1;
    this.setColor(color);
    this.update();
  }

  void draw() {
    hs.lineWidth = lineWidth;
    hs.draw();
  }
}

struct Triangle {
  alias transform this;
  Transform!Children transform;
  static float[] vertexData = [0, 0, 1, 0, 1, 1];
  float[3 * 4] colorData = 1;
  float lineWidth = 1;
  uint vao;
  uint vertexBuffer;
  uint colorBuffer;
  uint textureCoordinateBuffer;
  uint texture;

  void init_(float width, Color color = Color.white) {
    size = Vector(width, width);
    setOriginTopRight;
    hs.vao = &vao;
    hs.vertexBuffer = &vertexBuffer;
    hs.colorBuffer = &colorBuffer;
    hs.textureCoordinateBuffer = &textureCoordinateBuffer;
    hs.texture = &texture;
    hs.matrix = matrix.value;
    hs.vertexData = vertexData;
    hs.colorData = colorData;
    hs.vertexSize = 2;
    hs.primitiveType = 2;
    this.setColor(color);
    this.update();
  }
  void draw() {
    hs.lineWidth = lineWidth;
    hs.draw();
  }
}

struct Rect {
  alias transform this;
  Transform!Children transform;
  static float[] vertexData = [0, 0, 1, 0, 0, 1, 1, 1];
  float[4 * 4] colorData = 1;
  uint vao;
  uint vertexBuffer;
  uint colorBuffer;
  uint textureCoordinateBuffer;
  uint texture;

  this(float width, float height, Color color = Color.white) {
    init_(width, height, color);
  }

  void init_(float width, float height, Color color = Color.white) {
    size = Vector(width, height);
    setOriginCenter;
    hs.vao = &vao;
    hs.vertexBuffer = &vertexBuffer;
    hs.colorBuffer = &colorBuffer;
    hs.textureCoordinateBuffer = &textureCoordinateBuffer;
    hs.texture = &texture;
    hs.matrix = matrix.value;
    hs.vertexData = vertexData;
    hs.colorData = colorData;
    hs.textureData = null;
    hs.vertexSize = 2;
    hs.primitiveType = 5;
    hs.lineWidth = 0;
    this.setColor(color);
    this.update();
  }

  void draw() {
    hs.draw();
  }
}

struct RectEmpty {
  alias transform this;
  Transform!Children transform;
  static float[] vertexData = [0, 0, 1, 0, 1, 1, 0, 1];
  float[4 * 4] colorData = 1;
  float lineWidth;
  uint vao;
  uint vertexBuffer;
  uint colorBuffer;
  uint textureCoordinateBuffer;
  uint texture;

  void init_(float width, float height, Color color = Color.white, float lineWidth = 1) {
    this.lineWidth = lineWidth;
    size = Vector(width, height);
    setOriginCenter;
    hs.vao = &vao;
    hs.vertexBuffer = &vertexBuffer;
    hs.colorBuffer = &colorBuffer;
    hs.textureCoordinateBuffer = &textureCoordinateBuffer;
    hs.texture = &texture;
    hs.matrix = matrix.value;
    hs.vertexData = vertexData;
    hs.colorData = colorData;
    hs.vertexSize = 2;
    hs.primitiveType = 2;
    this.setColor(color);
    this.update();
  }

  void draw() {
    hs.lineWidth = lineWidth;
    hs.draw();
  }
}

struct Text(int textSize) {
  alias transform this;
  Transform!Children transform;
  enum stride = 12;
  bool hidden = false;
  float[textSize * stride] vertexData;
  float[textSize * stride * 2] colorData = 1;
  float[textSize * stride] textureCoordinateData;
  char[textSize + 1] text = "*";
  size_t textLength = 1;
  alias Data.Font!(194572, 95, 32) DefaultFontType;
  DefaultFontType* font;
  size_t fontSize = 32;
  uint vao;
  uint vertexBuffer;
  uint colorBuffer;
  uint textureCoordinateBuffer;

  void init_(string text, size_t fontSize = 32, Color color = Color.white) {
    textLength = 0;
    for(size_t i = 0 ; i < text.length ; i += 1) {
      this.text[i] = text[i];
      textLength += 1;
    }
    this.fontSize = fontSize;
    this.setColor(color);

    size = Vector(cast(float) (fontSize / 2 * textLength), fontSize );
    setOriginCenter;

    if (!font) {
      font = cast(DefaultFontType*) import("data/font.32.font").ptr;
      hiddenState.textureData = font.data;
      hiddenState.textureWidth = font.width;
      hiddenState.textureHeight = font.height;
    }

    hs.vao = &vao;
    hs.vertexBuffer = &vertexBuffer;
    hs.colorBuffer = &colorBuffer;
    hs.textureCoordinateBuffer = &textureCoordinateBuffer;
    hs.texture = &hiddenStateTexture;
    hs.matrix = matrix.value;
    hs.vertexData = vertexData;
    hs.vertexSize = 2;
    hs.primitiveType = 4;
    hs.lineWidth = 0;
    hs.colorData = colorData;
    hs.textureCoordinateData = textureCoordinateData = 0;
    hs.textureData = font.data;
    hs.textureWidth = font.width;
    hs.textureHeight = font.height;
    hs.textureBytesPerPixel = font.bytesPerPixel;
    hs.vertexDataIsDirty = true;
    hs.textureCoordinateDataIsDirty = true;
    this.update();

    float px = 0;
    float py = 0;
    float pxp = 0;

    int vertexData_length = cast(int) ( stride * textLength);

    for(int i = 0 ; i < vertexData_length ; i += stride) {
      if ( i > 0 && text[(i - 1) / stride ] == '\n' ) {
        py += cast(float) 1 / 1;
        //pxp = cast(float) i / stride / textLength;
        pxp = cast(float) i / stride / textLength;
      }
      //px = cast(float) (i / stride) / textLength - pxp;
      px = cast(float) (i / stride) / textLength - pxp;
      char c = text[i / stride];
      if ( c > '~' || c < ' ' ) {
        c = ' ';
      }
      //printf("py = %f\n", py);

      vertexData[ i + 0  ] = px + 0;
      vertexData[ i + 1  ] = py + 0;
      //vertexData[ i + 2  ] = px + 1.0 / textLength;
      vertexData[ i + 2  ] = px + 1.0 / textLength;
      vertexData[ i + 3  ] = py + 0;
      //vertexData[ i + 4  ] = px + 1.0 / textLength;
      vertexData[ i + 4  ] = px + 1.0 / textLength;
      vertexData[ i + 5  ] = py + 1.0 / 1;
      vertexData[ i + 6  ] = px + 0;
      vertexData[ i + 7  ] = py + 1.0 / 1;
      vertexData[ i + 8  ] = px + 0;
      vertexData[ i + 9  ] = py + 0;
      //vertexData[ i + 10 ] = px + 1.0 / textLength;
      vertexData[ i + 10 ] = px + 1.0 / textLength;
      vertexData[ i + 11 ] = py + 1.0 / 1;

      px = cast(float) (c - ' ') / font.glyphs.length;
      textureCoordinateData[ i + 0 ] = px + 0;
      textureCoordinateData[ i + 1 ] =      0;
      textureCoordinateData[ i + 2 ] = px + 1.0 / font.glyphs.length;
      textureCoordinateData[ i + 3 ] =      0;
      textureCoordinateData[ i + 4 ] = px + 1.0 / font.glyphs.length;
      textureCoordinateData[ i + 5 ] =      1;
      textureCoordinateData[ i + 6 ] = px + 0;
      textureCoordinateData[ i + 7 ] =      1;
      textureCoordinateData[ i + 8 ] = px + 0;
      textureCoordinateData[ i + 9 ] =      0;
      textureCoordinateData[ i + 10] = px + 1.0 / font.glyphs.length;
      textureCoordinateData[ i + 11] =      1;
    }
  }

  void init_(int txt, size_t fontSize = 32, Color color = Color.white) {
    textLength = snprintf(text.ptr, textSize, "%d", txt);
    init_(cast(string) this.text[0..textLength], fontSize, color);
  }

  void init_(float txt, int fpnum = 3, uint fontSize = 32, Color color = Color.white) {
    textLength = snprintf(text.ptr, textSize, "%f", txt);
    init_(cast(string) this.text[0..textLength], fontSize, color);
  }

  void draw() {
    hs.draw();
    //printf("hiddenStateTexture = %d\n", hiddenStateTexture);
  }
}

struct Button {
  struct Children {
    Rect rect;
    Text!100 text;
  }
  alias transform this;
  Transform!Children transform;
  void init_(string txt) {
    children.text.init_(txt);
    children.rect.init_(children.text.size.x * 2, children.text.size.x * 2, Color.gray);
    children.text.parent = &this;
    children.rect.parent = &this;
    this.update();
  }
}
