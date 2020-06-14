extern (C):

alias GLenum = uint;
alias GLboolean = ubyte;
alias GLbitfield = uint;
alias GLvoid = void;
alias GLbyte = byte;
alias GLshort = short;
alias GLint = int;
alias GLubyte = ubyte;
alias GLushort = ushort;
alias GLuint = uint;
alias GLsizei = int;
alias GLfloat = float;
alias GLclampf = float;
alias GLdouble = double;
alias GLclampd = double;

alias c_long = int;
alias c_ulong = uint;

/*
** Copyright (c) 2013-2014import core.stdc.config;

 The Khronos Group Inc.
**
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and/or associated documentation files (the
** "Materials"), to deal in the Materials without restriction, including
** without limitation the rights to use, copy, modify, merge, publish,
** distribute, sublicense, and/or sell copies of the Materials, and to
** permit persons to whom the Materials are furnished to do so, subject to
** the following conditions:
**
** The above copyright notice and this permission notice shall be included
** in all copies or substantial portions of the Materials.
**
** THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
** MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
** IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
** CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
** MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
*/
/*
** This header is generated from the Khronos OpenGL / OpenGL ES XML
** API Registry. The current version of the Registry, generator scripts
** used to make the header, and the header can be found at
**   http://www.opengl.org/registry/
**
** Khronos $Revision: 26745 $ on $Date: 2014-05-21 03:12:26 -0700 (Wed, 21 May 2014) $
*/

enum GL_GLEXT_VERSION = 20140521;

/* Generated C header for:
 * API: gl
 * Profile: compatibility
 * Versions considered: .*
 * Versions emitted: 1\.[2-9]|[234]\.[0-9]
 * Default extensions included: gl
 * Additional extensions included: _nomatch_^
 * Extensions removed: _nomatch_^
 */

enum GL_VERSION_1_2 = 1;
enum GL_UNSIGNED_BYTE_3_3_2 = 0x8032;
enum GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;
enum GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;
enum GL_UNSIGNED_INT_8_8_8_8 = 0x8035;
enum GL_UNSIGNED_INT_10_10_10_2 = 0x8036;
enum GL_TEXTURE_BINDING_3D = 0x806A;
enum GL_PACK_SKIP_IMAGES = 0x806B;
enum GL_PACK_IMAGE_HEIGHT = 0x806C;
enum GL_UNPACK_SKIP_IMAGES = 0x806D;
enum GL_UNPACK_IMAGE_HEIGHT = 0x806E;
enum GL_TEXTURE_3D = 0x806F;
enum GL_PROXY_TEXTURE_3D = 0x8070;
enum GL_TEXTURE_DEPTH = 0x8071;
enum GL_TEXTURE_WRAP_R = 0x8072;
enum GL_MAX_3D_TEXTURE_SIZE = 0x8073;
enum GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;
enum GL_UNSIGNED_SHORT_5_6_5 = 0x8363;
enum GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;
enum GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
enum GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
enum GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;
enum GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;
enum GL_BGR = 0x80E0;
enum GL_BGRA = 0x80E1;
enum GL_MAX_ELEMENTS_VERTICES = 0x80E8;
enum GL_MAX_ELEMENTS_INDICES = 0x80E9;
enum GL_CLAMP_TO_EDGE = 0x812F;
enum GL_TEXTURE_MIN_LOD = 0x813A;
enum GL_TEXTURE_MAX_LOD = 0x813B;
enum GL_TEXTURE_BASE_LEVEL = 0x813C;
enum GL_TEXTURE_MAX_LEVEL = 0x813D;
enum GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;
enum GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
enum GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
enum GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
enum GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;
enum GL_RESCALE_NORMAL = 0x803A;
enum GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
enum GL_SINGLE_COLOR = 0x81F9;
enum GL_SEPARATE_SPECULAR_COLOR = 0x81FA;
enum GL_ALIASED_POINT_SIZE_RANGE = 0x846D;
alias PFNGLDRAWRANGEELEMENTSPROC = void function (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(void)* indices);
alias PFNGLTEXIMAGE3DPROC = void function (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXSUBIMAGE3DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLCOPYTEXSUBIMAGE3DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glDrawRangeElements (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(void)* indices);
void glTexImage3D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
void glCopyTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);

/* GL_VERSION_1_2 */
/*
enum GL_VERSION_1_3 = 1;
enum GL_TEXTURE0 = 0x84C0;
enum GL_TEXTURE1 = 0x84C1;
enum GL_TEXTURE2 = 0x84C2;
enum GL_TEXTURE3 = 0x84C3;
enum GL_TEXTURE4 = 0x84C4;
enum GL_TEXTURE5 = 0x84C5;
enum GL_TEXTURE6 = 0x84C6;
enum GL_TEXTURE7 = 0x84C7;
enum GL_TEXTURE8 = 0x84C8;
enum GL_TEXTURE9 = 0x84C9;
enum GL_TEXTURE10 = 0x84CA;
enum GL_TEXTURE11 = 0x84CB;
enum GL_TEXTURE12 = 0x84CC;
enum GL_TEXTURE13 = 0x84CD;
enum GL_TEXTURE14 = 0x84CE;
enum GL_TEXTURE15 = 0x84CF;
enum GL_TEXTURE16 = 0x84D0;
enum GL_TEXTURE17 = 0x84D1;
enum GL_TEXTURE18 = 0x84D2;
enum GL_TEXTURE19 = 0x84D3;
enum GL_TEXTURE20 = 0x84D4;
enum GL_TEXTURE21 = 0x84D5;
enum GL_TEXTURE22 = 0x84D6;
enum GL_TEXTURE23 = 0x84D7;
enum GL_TEXTURE24 = 0x84D8;
enum GL_TEXTURE25 = 0x84D9;
enum GL_TEXTURE26 = 0x84DA;
enum GL_TEXTURE27 = 0x84DB;
enum GL_TEXTURE28 = 0x84DC;
enum GL_TEXTURE29 = 0x84DD;
enum GL_TEXTURE30 = 0x84DE;
enum GL_TEXTURE31 = 0x84DF;
enum GL_ACTIVE_TEXTURE = 0x84E0;
enum GL_MULTISAMPLE = 0x809D;
enum GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
enum GL_SAMPLE_ALPHA_TO_ONE = 0x809F;
enum GL_SAMPLE_COVERAGE = 0x80A0;
enum GL_SAMPLE_BUFFERS = 0x80A8;
enum GL_SAMPLES = 0x80A9;
enum GL_SAMPLE_COVERAGE_VALUE = 0x80AA;
enum GL_SAMPLE_COVERAGE_INVERT = 0x80AB;
enum GL_TEXTURE_CUBE_MAP = 0x8513;
enum GL_TEXTURE_BINDING_CUBE_MAP = 0x8514;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
enum GL_PROXY_TEXTURE_CUBE_MAP = 0x851B;
enum GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
enum GL_COMPRESSED_RGB = 0x84ED;
enum GL_COMPRESSED_RGBA = 0x84EE;
enum GL_TEXTURE_COMPRESSION_HINT = 0x84EF;
enum GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
enum GL_TEXTURE_COMPRESSED = 0x86A1;
enum GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
enum GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3;
enum GL_CLAMP_TO_BORDER = 0x812D;
enum GL_CLIENT_ACTIVE_TEXTURE = 0x84E1;
enum GL_MAX_TEXTURE_UNITS = 0x84E2;
enum GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
enum GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
enum GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
enum GL_TRANSPOSE_COLOR_MATRIX = 0x84E6;
enum GL_MULTISAMPLE_BIT = 0x20000000;
enum GL_NORMAL_MAP = 0x8511;
enum GL_REFLECTION_MAP = 0x8512;
enum GL_COMPRESSED_ALPHA = 0x84E9;
enum GL_COMPRESSED_LUMINANCE = 0x84EA;
enum GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
enum GL_COMPRESSED_INTENSITY = 0x84EC;
enum GL_COMBINE = 0x8570;
enum GL_COMBINE_RGB = 0x8571;
enum GL_COMBINE_ALPHA = 0x8572;
enum GL_SOURCE0_RGB = 0x8580;
enum GL_SOURCE1_RGB = 0x8581;
enum GL_SOURCE2_RGB = 0x8582;
enum GL_SOURCE0_ALPHA = 0x8588;
enum GL_SOURCE1_ALPHA = 0x8589;
enum GL_SOURCE2_ALPHA = 0x858A;
enum GL_OPERAND0_RGB = 0x8590;
enum GL_OPERAND1_RGB = 0x8591;
enum GL_OPERAND2_RGB = 0x8592;
enum GL_OPERAND0_ALPHA = 0x8598;
enum GL_OPERAND1_ALPHA = 0x8599;
enum GL_OPERAND2_ALPHA = 0x859A;
enum GL_RGB_SCALE = 0x8573;
enum GL_ADD_SIGNED = 0x8574;
enum GL_INTERPOLATE = 0x8575;
enum GL_SUBTRACT = 0x84E7;
enum GL_CONSTANT = 0x8576;
enum GL_PRIMARY_COLOR = 0x8577;
enum GL_PREVIOUS = 0x8578;
enum GL_DOT3_RGB = 0x86AE;
enum GL_DOT3_RGBA = 0x86AF;
alias PFNGLACTIVETEXTUREPROC = void function (GLenum texture);
alias PFNGLSAMPLECOVERAGEPROC = void function (GLfloat value, GLboolean invert);
alias PFNGLCOMPRESSEDTEXIMAGE3DPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXIMAGE2DPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXIMAGE1DPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC = void function (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* data);
alias PFNGLGETCOMPRESSEDTEXIMAGEPROC = void function (GLenum target, GLint level, void* img);
alias PFNGLCLIENTACTIVETEXTUREPROC = void function (GLenum texture);
alias PFNGLMULTITEXCOORD1DPROC = void function (GLenum target, GLdouble s);
alias PFNGLMULTITEXCOORD1DVPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD1FPROC = void function (GLenum target, GLfloat s);
alias PFNGLMULTITEXCOORD1FVPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD1IPROC = void function (GLenum target, GLint s);
alias PFNGLMULTITEXCOORD1IVPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD1SPROC = void function (GLenum target, GLshort s);
alias PFNGLMULTITEXCOORD1SVPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLMULTITEXCOORD2DPROC = void function (GLenum target, GLdouble s, GLdouble t);
alias PFNGLMULTITEXCOORD2DVPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD2FPROC = void function (GLenum target, GLfloat s, GLfloat t);
alias PFNGLMULTITEXCOORD2FVPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD2IPROC = void function (GLenum target, GLint s, GLint t);
alias PFNGLMULTITEXCOORD2IVPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD2SPROC = void function (GLenum target, GLshort s, GLshort t);
alias PFNGLMULTITEXCOORD2SVPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLMULTITEXCOORD3DPROC = void function (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias PFNGLMULTITEXCOORD3DVPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD3FPROC = void function (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias PFNGLMULTITEXCOORD3FVPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD3IPROC = void function (GLenum target, GLint s, GLint t, GLint r);
alias PFNGLMULTITEXCOORD3IVPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD3SPROC = void function (GLenum target, GLshort s, GLshort t, GLshort r);
alias PFNGLMULTITEXCOORD3SVPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLMULTITEXCOORD4DPROC = void function (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias PFNGLMULTITEXCOORD4DVPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD4FPROC = void function (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias PFNGLMULTITEXCOORD4FVPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD4IPROC = void function (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias PFNGLMULTITEXCOORD4IVPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD4SPROC = void function (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias PFNGLMULTITEXCOORD4SVPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLLOADTRANSPOSEMATRIXFPROC = void function (const(GLfloat)* m);
alias PFNGLLOADTRANSPOSEMATRIXDPROC = void function (const(GLdouble)* m);
alias PFNGLMULTTRANSPOSEMATRIXFPROC = void function (const(GLfloat)* m);
alias PFNGLMULTTRANSPOSEMATRIXDPROC = void function (const(GLdouble)* m);
void glActiveTexture (GLenum texture);
void glSampleCoverage (GLfloat value, GLboolean invert);
void glCompressedTexImage3D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* data);
void glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* data);
void glCompressedTexImage1D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* data);
void glCompressedTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* data);
void glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* data);
void glCompressedTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* data);
void glGetCompressedTexImage (GLenum target, GLint level, void* img);
void glClientActiveTexture (GLenum texture);
void glMultiTexCoord1d (GLenum target, GLdouble s);
void glMultiTexCoord1dv (GLenum target, const(GLdouble)* v);
void glMultiTexCoord1f (GLenum target, GLfloat s);
void glMultiTexCoord1fv (GLenum target, const(GLfloat)* v);
void glMultiTexCoord1i (GLenum target, GLint s);
void glMultiTexCoord1iv (GLenum target, const(GLint)* v);
void glMultiTexCoord1s (GLenum target, GLshort s);
void glMultiTexCoord1sv (GLenum target, const(GLshort)* v);
void glMultiTexCoord2d (GLenum target, GLdouble s, GLdouble t);
void glMultiTexCoord2dv (GLenum target, const(GLdouble)* v);
void glMultiTexCoord2f (GLenum target, GLfloat s, GLfloat t);
void glMultiTexCoord2fv (GLenum target, const(GLfloat)* v);
void glMultiTexCoord2i (GLenum target, GLint s, GLint t);
void glMultiTexCoord2iv (GLenum target, const(GLint)* v);
void glMultiTexCoord2s (GLenum target, GLshort s, GLshort t);
void glMultiTexCoord2sv (GLenum target, const(GLshort)* v);
void glMultiTexCoord3d (GLenum target, GLdouble s, GLdouble t, GLdouble r);
void glMultiTexCoord3dv (GLenum target, const(GLdouble)* v);
void glMultiTexCoord3f (GLenum target, GLfloat s, GLfloat t, GLfloat r);
void glMultiTexCoord3fv (GLenum target, const(GLfloat)* v);
void glMultiTexCoord3i (GLenum target, GLint s, GLint t, GLint r);
void glMultiTexCoord3iv (GLenum target, const(GLint)* v);
void glMultiTexCoord3s (GLenum target, GLshort s, GLshort t, GLshort r);
void glMultiTexCoord3sv (GLenum target, const(GLshort)* v);
void glMultiTexCoord4d (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glMultiTexCoord4dv (GLenum target, const(GLdouble)* v);
void glMultiTexCoord4f (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glMultiTexCoord4fv (GLenum target, const(GLfloat)* v);
void glMultiTexCoord4i (GLenum target, GLint s, GLint t, GLint r, GLint q);
void glMultiTexCoord4iv (GLenum target, const(GLint)* v);
void glMultiTexCoord4s (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void glMultiTexCoord4sv (GLenum target, const(GLshort)* v);
void glLoadTransposeMatrixf (const(GLfloat)* m);
void glLoadTransposeMatrixd (const(GLdouble)* m);
void glMultTransposeMatrixf (const(GLfloat)* m);
void glMultTransposeMatrixd (const(GLdouble)* m);
*/

/* GL_VERSION_1_3 */

enum GL_VERSION_1_4 = 1;
enum GL_BLEND_DST_RGB = 0x80C8;
enum GL_BLEND_SRC_RGB = 0x80C9;
enum GL_BLEND_DST_ALPHA = 0x80CA;
enum GL_BLEND_SRC_ALPHA = 0x80CB;
enum GL_POINT_FADE_THRESHOLD_SIZE = 0x8128;
enum GL_DEPTH_COMPONENT16 = 0x81A5;
enum GL_DEPTH_COMPONENT24 = 0x81A6;
enum GL_DEPTH_COMPONENT32 = 0x81A7;
enum GL_MIRRORED_REPEAT = 0x8370;
enum GL_MAX_TEXTURE_LOD_BIAS = 0x84FD;
enum GL_TEXTURE_LOD_BIAS = 0x8501;
enum GL_INCR_WRAP = 0x8507;
enum GL_DECR_WRAP = 0x8508;
enum GL_TEXTURE_DEPTH_SIZE = 0x884A;
enum GL_TEXTURE_COMPARE_MODE = 0x884C;
enum GL_TEXTURE_COMPARE_FUNC = 0x884D;
enum GL_POINT_SIZE_MIN = 0x8126;
enum GL_POINT_SIZE_MAX = 0x8127;
enum GL_POINT_DISTANCE_ATTENUATION = 0x8129;
enum GL_GENERATE_MIPMAP = 0x8191;
enum GL_GENERATE_MIPMAP_HINT = 0x8192;
enum GL_FOG_COORDINATE_SOURCE = 0x8450;
enum GL_FOG_COORDINATE = 0x8451;
enum GL_FRAGMENT_DEPTH = 0x8452;
enum GL_CURRENT_FOG_COORDINATE = 0x8453;
enum GL_FOG_COORDINATE_ARRAY_TYPE = 0x8454;
enum GL_FOG_COORDINATE_ARRAY_STRIDE = 0x8455;
enum GL_FOG_COORDINATE_ARRAY_POINTER = 0x8456;
enum GL_FOG_COORDINATE_ARRAY = 0x8457;
enum GL_COLOR_SUM = 0x8458;
enum GL_CURRENT_SECONDARY_COLOR = 0x8459;
enum GL_SECONDARY_COLOR_ARRAY_SIZE = 0x845A;
enum GL_SECONDARY_COLOR_ARRAY_TYPE = 0x845B;
enum GL_SECONDARY_COLOR_ARRAY_STRIDE = 0x845C;
enum GL_SECONDARY_COLOR_ARRAY_POINTER = 0x845D;
enum GL_SECONDARY_COLOR_ARRAY = 0x845E;
enum GL_TEXTURE_FILTER_CONTROL = 0x8500;
enum GL_DEPTH_TEXTURE_MODE = 0x884B;
enum GL_COMPARE_R_TO_TEXTURE = 0x884E;
enum GL_FUNC_ADD = 0x8006;
enum GL_FUNC_SUBTRACT = 0x800A;
enum GL_FUNC_REVERSE_SUBTRACT = 0x800B;
enum GL_MIN = 0x8007;
enum GL_MAX = 0x8008;
enum GL_CONSTANT_COLOR = 0x8001;
enum GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
enum GL_CONSTANT_ALPHA = 0x8003;
enum GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;
alias PFNGLBLENDFUNCSEPARATEPROC = void function (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
alias PFNGLMULTIDRAWARRAYSPROC = void function (GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei drawcount);
alias PFNGLMULTIDRAWELEMENTSPROC = void function (GLenum mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei drawcount);
alias PFNGLPOINTPARAMETERFPROC = void function (GLenum pname, GLfloat param);
alias PFNGLPOINTPARAMETERFVPROC = void function (GLenum pname, const(GLfloat)* params);
alias PFNGLPOINTPARAMETERIPROC = void function (GLenum pname, GLint param);
alias PFNGLPOINTPARAMETERIVPROC = void function (GLenum pname, const(GLint)* params);
alias PFNGLFOGCOORDFPROC = void function (GLfloat coord);
alias PFNGLFOGCOORDFVPROC = void function (const(GLfloat)* coord);
alias PFNGLFOGCOORDDPROC = void function (GLdouble coord);
alias PFNGLFOGCOORDDVPROC = void function (const(GLdouble)* coord);
alias PFNGLFOGCOORDPOINTERPROC = void function (GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLSECONDARYCOLOR3BPROC = void function (GLbyte red, GLbyte green, GLbyte blue);
alias PFNGLSECONDARYCOLOR3BVPROC = void function (const(GLbyte)* v);
alias PFNGLSECONDARYCOLOR3DPROC = void function (GLdouble red, GLdouble green, GLdouble blue);
alias PFNGLSECONDARYCOLOR3DVPROC = void function (const(GLdouble)* v);
alias PFNGLSECONDARYCOLOR3FPROC = void function (GLfloat red, GLfloat green, GLfloat blue);
alias PFNGLSECONDARYCOLOR3FVPROC = void function (const(GLfloat)* v);
alias PFNGLSECONDARYCOLOR3IPROC = void function (GLint red, GLint green, GLint blue);
alias PFNGLSECONDARYCOLOR3IVPROC = void function (const(GLint)* v);
alias PFNGLSECONDARYCOLOR3SPROC = void function (GLshort red, GLshort green, GLshort blue);
alias PFNGLSECONDARYCOLOR3SVPROC = void function (const(GLshort)* v);
alias PFNGLSECONDARYCOLOR3UBPROC = void function (GLubyte red, GLubyte green, GLubyte blue);
alias PFNGLSECONDARYCOLOR3UBVPROC = void function (const(GLubyte)* v);
alias PFNGLSECONDARYCOLOR3UIPROC = void function (GLuint red, GLuint green, GLuint blue);
alias PFNGLSECONDARYCOLOR3UIVPROC = void function (const(GLuint)* v);
alias PFNGLSECONDARYCOLOR3USPROC = void function (GLushort red, GLushort green, GLushort blue);
alias PFNGLSECONDARYCOLOR3USVPROC = void function (const(GLushort)* v);
alias PFNGLSECONDARYCOLORPOINTERPROC = void function (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLWINDOWPOS2DPROC = void function (GLdouble x, GLdouble y);
alias PFNGLWINDOWPOS2DVPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS2FPROC = void function (GLfloat x, GLfloat y);
alias PFNGLWINDOWPOS2FVPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS2IPROC = void function (GLint x, GLint y);
alias PFNGLWINDOWPOS2IVPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS2SPROC = void function (GLshort x, GLshort y);
alias PFNGLWINDOWPOS2SVPROC = void function (const(GLshort)* v);
alias PFNGLWINDOWPOS3DPROC = void function (GLdouble x, GLdouble y, GLdouble z);
alias PFNGLWINDOWPOS3DVPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS3FPROC = void function (GLfloat x, GLfloat y, GLfloat z);
alias PFNGLWINDOWPOS3FVPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS3IPROC = void function (GLint x, GLint y, GLint z);
alias PFNGLWINDOWPOS3IVPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS3SPROC = void function (GLshort x, GLshort y, GLshort z);
alias PFNGLWINDOWPOS3SVPROC = void function (const(GLshort)* v);
alias PFNGLBLENDCOLORPROC = void function (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
alias PFNGLBLENDEQUATIONPROC = void function (GLenum mode);
void glBlendFuncSeparate (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
void glMultiDrawArrays (GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei drawcount);
void glMultiDrawElements (GLenum mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei drawcount);
void glPointParameterf (GLenum pname, GLfloat param);
void glPointParameterfv (GLenum pname, const(GLfloat)* params);
void glPointParameteri (GLenum pname, GLint param);
void glPointParameteriv (GLenum pname, const(GLint)* params);
void glFogCoordf (GLfloat coord);
void glFogCoordfv (const(GLfloat)* coord);
void glFogCoordd (GLdouble coord);
void glFogCoorddv (const(GLdouble)* coord);
void glFogCoordPointer (GLenum type, GLsizei stride, const(void)* pointer);
void glSecondaryColor3b (GLbyte red, GLbyte green, GLbyte blue);
void glSecondaryColor3bv (const(GLbyte)* v);
void glSecondaryColor3d (GLdouble red, GLdouble green, GLdouble blue);
void glSecondaryColor3dv (const(GLdouble)* v);
void glSecondaryColor3f (GLfloat red, GLfloat green, GLfloat blue);
void glSecondaryColor3fv (const(GLfloat)* v);
void glSecondaryColor3i (GLint red, GLint green, GLint blue);
void glSecondaryColor3iv (const(GLint)* v);
void glSecondaryColor3s (GLshort red, GLshort green, GLshort blue);
void glSecondaryColor3sv (const(GLshort)* v);
void glSecondaryColor3ub (GLubyte red, GLubyte green, GLubyte blue);
void glSecondaryColor3ubv (const(GLubyte)* v);
void glSecondaryColor3ui (GLuint red, GLuint green, GLuint blue);
void glSecondaryColor3uiv (const(GLuint)* v);
void glSecondaryColor3us (GLushort red, GLushort green, GLushort blue);
void glSecondaryColor3usv (const(GLushort)* v);
void glSecondaryColorPointer (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glWindowPos2d (GLdouble x, GLdouble y);
void glWindowPos2dv (const(GLdouble)* v);
void glWindowPos2f (GLfloat x, GLfloat y);
void glWindowPos2fv (const(GLfloat)* v);
void glWindowPos2i (GLint x, GLint y);
void glWindowPos2iv (const(GLint)* v);
void glWindowPos2s (GLshort x, GLshort y);
void glWindowPos2sv (const(GLshort)* v);
void glWindowPos3d (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dv (const(GLdouble)* v);
void glWindowPos3f (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fv (const(GLfloat)* v);
void glWindowPos3i (GLint x, GLint y, GLint z);
void glWindowPos3iv (const(GLint)* v);
void glWindowPos3s (GLshort x, GLshort y, GLshort z);
void glWindowPos3sv (const(GLshort)* v);
void glBlendColor (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glBlendEquation (GLenum mode);

/* GL_VERSION_1_4 */

enum GL_VERSION_1_5 = 1;

alias GLsizeiptr = c_long;
alias GLintptr = c_long;

enum GL_BUFFER_SIZE = 0x8764;
enum GL_BUFFER_USAGE = 0x8765;
enum GL_QUERY_COUNTER_BITS = 0x8864;
enum GL_CURRENT_QUERY = 0x8865;
enum GL_QUERY_RESULT = 0x8866;
enum GL_QUERY_RESULT_AVAILABLE = 0x8867;
enum GL_ARRAY_BUFFER = 0x8892;
enum GL_ELEMENT_ARRAY_BUFFER = 0x8893;
enum GL_ARRAY_BUFFER_BINDING = 0x8894;
enum GL_ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
enum GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
enum GL_READ_ONLY = 0x88B8;
enum GL_WRITE_ONLY = 0x88B9;
enum GL_READ_WRITE = 0x88BA;
enum GL_BUFFER_ACCESS = 0x88BB;
enum GL_BUFFER_MAPPED = 0x88BC;
enum GL_BUFFER_MAP_POINTER = 0x88BD;
enum GL_STREAM_DRAW = 0x88E0;
enum GL_STREAM_READ = 0x88E1;
enum GL_STREAM_COPY = 0x88E2;
enum GL_STATIC_DRAW = 0x88E4;
enum GL_STATIC_READ = 0x88E5;
enum GL_STATIC_COPY = 0x88E6;
enum GL_DYNAMIC_DRAW = 0x88E8;
enum GL_DYNAMIC_READ = 0x88E9;
enum GL_DYNAMIC_COPY = 0x88EA;
enum GL_SAMPLES_PASSED = 0x8914;
enum GL_SRC1_ALPHA = 0x8589;
enum GL_VERTEX_ARRAY_BUFFER_BINDING = 0x8896;
enum GL_NORMAL_ARRAY_BUFFER_BINDING = 0x8897;
enum GL_COLOR_ARRAY_BUFFER_BINDING = 0x8898;
enum GL_INDEX_ARRAY_BUFFER_BINDING = 0x8899;
enum GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A;
enum GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B;
enum GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C;
enum GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D;
enum GL_WEIGHT_ARRAY_BUFFER_BINDING = 0x889E;
enum GL_FOG_COORD_SRC = 0x8450;
enum GL_FOG_COORD = 0x8451;
enum GL_CURRENT_FOG_COORD = 0x8453;
enum GL_FOG_COORD_ARRAY_TYPE = 0x8454;
enum GL_FOG_COORD_ARRAY_STRIDE = 0x8455;
enum GL_FOG_COORD_ARRAY_POINTER = 0x8456;
enum GL_FOG_COORD_ARRAY = 0x8457;
enum GL_FOG_COORD_ARRAY_BUFFER_BINDING = 0x889D;
enum GL_SRC0_RGB = 0x8580;
enum GL_SRC1_RGB = 0x8581;
enum GL_SRC2_RGB = 0x8582;
enum GL_SRC0_ALPHA = 0x8588;
enum GL_SRC2_ALPHA = 0x858A;
alias PFNGLGENQUERIESPROC = void function (GLsizei n, GLuint* ids);
alias PFNGLDELETEQUERIESPROC = void function (GLsizei n, const(GLuint)* ids);
alias PFNGLISQUERYPROC = ubyte function (GLuint id);
alias PFNGLBEGINQUERYPROC = void function (GLenum target, GLuint id);
alias PFNGLENDQUERYPROC = void function (GLenum target);
alias PFNGLGETQUERYIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETQUERYOBJECTIVPROC = void function (GLuint id, GLenum pname, GLint* params);
alias PFNGLGETQUERYOBJECTUIVPROC = void function (GLuint id, GLenum pname, GLuint* params);
alias PFNGLBINDBUFFERPROC = void function (GLenum target, GLuint buffer);
alias PFNGLDELETEBUFFERSPROC = void function (GLsizei n, const(GLuint)* buffers);
alias PFNGLGENBUFFERSPROC = void function (GLsizei n, GLuint* buffers);
alias PFNGLISBUFFERPROC = ubyte function (GLuint buffer);
alias PFNGLBUFFERDATAPROC = void function (GLenum target, GLsizeiptr size, const(void)* data, GLenum usage);
alias PFNGLBUFFERSUBDATAPROC = void function (GLenum target, GLintptr offset, GLsizeiptr size, const(void)* data);
alias PFNGLGETBUFFERSUBDATAPROC = void function (GLenum target, GLintptr offset, GLsizeiptr size, void* data);
alias PFNGLMAPBUFFERPROC = void* function (GLenum target, GLenum access);
alias PFNGLUNMAPBUFFERPROC = ubyte function (GLenum target);
alias PFNGLGETBUFFERPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETBUFFERPOINTERVPROC = void function (GLenum target, GLenum pname, void** params);
void glGenQueries (GLsizei n, GLuint* ids);
void glDeleteQueries (GLsizei n, const(GLuint)* ids);
GLboolean glIsQuery (GLuint id);
void glBeginQuery (GLenum target, GLuint id);
void glEndQuery (GLenum target);
void glGetQueryiv (GLenum target, GLenum pname, GLint* params);
void glGetQueryObjectiv (GLuint id, GLenum pname, GLint* params);
void glGetQueryObjectuiv (GLuint id, GLenum pname, GLuint* params);
void glBindBuffer (GLenum target, GLuint buffer);
void glDeleteBuffers (GLsizei n, const(GLuint)* buffers);
void glGenBuffers (GLsizei n, GLuint* buffers);
GLboolean glIsBuffer (GLuint buffer);
void glBufferData (GLenum target, GLsizeiptr size, const(void)* data, GLenum usage);
void glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, const(void)* data);
void glGetBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, void* data);
void* glMapBuffer (GLenum target, GLenum access);
GLboolean glUnmapBuffer (GLenum target);
void glGetBufferParameteriv (GLenum target, GLenum pname, GLint* params);
void glGetBufferPointerv (GLenum target, GLenum pname, void** params);

/* GL_VERSION_1_5 */

enum GL_VERSION_2_0 = 1;
alias GLchar = char;
enum GL_BLEND_EQUATION_RGB = 0x8009;
enum GL_VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
enum GL_VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
enum GL_VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
enum GL_VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
enum GL_CURRENT_VERTEX_ATTRIB = 0x8626;
enum GL_VERTEX_PROGRAM_POINT_SIZE = 0x8642;
enum GL_VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
enum GL_STENCIL_BACK_FUNC = 0x8800;
enum GL_STENCIL_BACK_FAIL = 0x8801;
enum GL_STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
enum GL_STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
enum GL_MAX_DRAW_BUFFERS = 0x8824;
enum GL_DRAW_BUFFER0 = 0x8825;
enum GL_DRAW_BUFFER1 = 0x8826;
enum GL_DRAW_BUFFER2 = 0x8827;
enum GL_DRAW_BUFFER3 = 0x8828;
enum GL_DRAW_BUFFER4 = 0x8829;
enum GL_DRAW_BUFFER5 = 0x882A;
enum GL_DRAW_BUFFER6 = 0x882B;
enum GL_DRAW_BUFFER7 = 0x882C;
enum GL_DRAW_BUFFER8 = 0x882D;
enum GL_DRAW_BUFFER9 = 0x882E;
enum GL_DRAW_BUFFER10 = 0x882F;
enum GL_DRAW_BUFFER11 = 0x8830;
enum GL_DRAW_BUFFER12 = 0x8831;
enum GL_DRAW_BUFFER13 = 0x8832;
enum GL_DRAW_BUFFER14 = 0x8833;
enum GL_DRAW_BUFFER15 = 0x8834;
enum GL_BLEND_EQUATION_ALPHA = 0x883D;
enum GL_MAX_VERTEX_ATTRIBS = 0x8869;
enum GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
enum GL_MAX_TEXTURE_IMAGE_UNITS = 0x8872;
enum GL_FRAGMENT_SHADER = 0x8B30;
enum GL_VERTEX_SHADER = 0x8B31;
enum GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;
enum GL_MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;
enum GL_MAX_VARYING_FLOATS = 0x8B4B;
enum GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
enum GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
enum GL_SHADER_TYPE = 0x8B4F;
enum GL_FLOAT_VEC2 = 0x8B50;
enum GL_FLOAT_VEC3 = 0x8B51;
enum GL_FLOAT_VEC4 = 0x8B52;
enum GL_INT_VEC2 = 0x8B53;
enum GL_INT_VEC3 = 0x8B54;
enum GL_INT_VEC4 = 0x8B55;
enum GL_BOOL = 0x8B56;
enum GL_BOOL_VEC2 = 0x8B57;
enum GL_BOOL_VEC3 = 0x8B58;
enum GL_BOOL_VEC4 = 0x8B59;
enum GL_FLOAT_MAT2 = 0x8B5A;
enum GL_FLOAT_MAT3 = 0x8B5B;
enum GL_FLOAT_MAT4 = 0x8B5C;
enum GL_SAMPLER_1D = 0x8B5D;
enum GL_SAMPLER_2D = 0x8B5E;
enum GL_SAMPLER_3D = 0x8B5F;
enum GL_SAMPLER_CUBE = 0x8B60;
enum GL_SAMPLER_1D_SHADOW = 0x8B61;
enum GL_SAMPLER_2D_SHADOW = 0x8B62;
enum GL_DELETE_STATUS = 0x8B80;
enum GL_COMPILE_STATUS = 0x8B81;
enum GL_LINK_STATUS = 0x8B82;
enum GL_VALIDATE_STATUS = 0x8B83;
enum GL_INFO_LOG_LENGTH = 0x8B84;
enum GL_ATTACHED_SHADERS = 0x8B85;
enum GL_ACTIVE_UNIFORMS = 0x8B86;
enum GL_ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;
enum GL_SHADER_SOURCE_LENGTH = 0x8B88;
enum GL_ACTIVE_ATTRIBUTES = 0x8B89;
enum GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;
enum GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
enum GL_SHADING_LANGUAGE_VERSION = 0x8B8C;
enum GL_CURRENT_PROGRAM = 0x8B8D;
enum GL_POINT_SPRITE_COORD_ORIGIN = 0x8CA0;
enum GL_LOWER_LEFT = 0x8CA1;
enum GL_UPPER_LEFT = 0x8CA2;
enum GL_STENCIL_BACK_REF = 0x8CA3;
enum GL_STENCIL_BACK_VALUE_MASK = 0x8CA4;
enum GL_STENCIL_BACK_WRITEMASK = 0x8CA5;
enum GL_VERTEX_PROGRAM_TWO_SIDE = 0x8643;
enum GL_POINT_SPRITE = 0x8861;
enum GL_COORD_REPLACE = 0x8862;
enum GL_MAX_TEXTURE_COORDS = 0x8871;
alias PFNGLBLENDEQUATIONSEPARATEPROC = void function (GLenum modeRGB, GLenum modeAlpha);
alias PFNGLDRAWBUFFERSPROC = void function (GLsizei n, const(GLenum)* bufs);
alias PFNGLSTENCILOPSEPARATEPROC = void function (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
alias PFNGLSTENCILFUNCSEPARATEPROC = void function (GLenum face, GLenum func, GLint ref_, GLuint mask);
alias PFNGLSTENCILMASKSEPARATEPROC = void function (GLenum face, GLuint mask);
alias PFNGLATTACHSHADERPROC = void function (GLuint program, GLuint shader);
alias PFNGLBINDATTRIBLOCATIONPROC = void function (GLuint program, GLuint index, const(GLchar)* name);
alias PFNGLCOMPILESHADERPROC = void function (GLuint shader);
alias PFNGLCREATEPROGRAMPROC = uint function ();
alias PFNGLCREATESHADERPROC = uint function (GLenum type);
alias PFNGLDELETEPROGRAMPROC = void function (GLuint program);
alias PFNGLDELETESHADERPROC = void function (GLuint shader);
alias PFNGLDETACHSHADERPROC = void function (GLuint program, GLuint shader);
alias PFNGLDISABLEVERTEXATTRIBARRAYPROC = void function (GLuint index);
alias PFNGLENABLEVERTEXATTRIBARRAYPROC = void function (GLuint index);
alias PFNGLGETACTIVEATTRIBPROC = void function (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
alias PFNGLGETACTIVEUNIFORMPROC = void function (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
alias PFNGLGETATTACHEDSHADERSPROC = void function (GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders);
alias PFNGLGETATTRIBLOCATIONPROC = int function (GLuint program, const(GLchar)* name);
alias PFNGLGETPROGRAMIVPROC = void function (GLuint program, GLenum pname, GLint* params);
alias PFNGLGETPROGRAMINFOLOGPROC = void function (GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
alias PFNGLGETSHADERIVPROC = void function (GLuint shader, GLenum pname, GLint* params);
alias PFNGLGETSHADERINFOLOGPROC = void function (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
alias PFNGLGETSHADERSOURCEPROC = void function (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source);
alias PFNGLGETUNIFORMLOCATIONPROC = int function (GLuint program, const(GLchar)* name);
alias PFNGLGETUNIFORMFVPROC = void function (GLuint program, GLint location, GLfloat* params);
alias PFNGLGETUNIFORMIVPROC = void function (GLuint program, GLint location, GLint* params);
alias PFNGLGETVERTEXATTRIBDVPROC = void function (GLuint index, GLenum pname, GLdouble* params);
alias PFNGLGETVERTEXATTRIBFVPROC = void function (GLuint index, GLenum pname, GLfloat* params);
alias PFNGLGETVERTEXATTRIBIVPROC = void function (GLuint index, GLenum pname, GLint* params);
alias PFNGLGETVERTEXATTRIBPOINTERVPROC = void function (GLuint index, GLenum pname, void** pointer);
alias PFNGLISPROGRAMPROC = ubyte function (GLuint program);
alias PFNGLISSHADERPROC = ubyte function (GLuint shader);
alias PFNGLLINKPROGRAMPROC = void function (GLuint program);
alias PFNGLSHADERSOURCEPROC = void function (GLuint shader, GLsizei count, const(GLchar*)* string, const(GLint)* length);
alias PFNGLUSEPROGRAMPROC = void function (GLuint program);
alias PFNGLUNIFORM1FPROC = void function (GLint location, GLfloat v0);
alias PFNGLUNIFORM2FPROC = void function (GLint location, GLfloat v0, GLfloat v1);
alias PFNGLUNIFORM3FPROC = void function (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
alias PFNGLUNIFORM4FPROC = void function (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
alias PFNGLUNIFORM1IPROC = void function (GLint location, GLint v0);
alias PFNGLUNIFORM2IPROC = void function (GLint location, GLint v0, GLint v1);
alias PFNGLUNIFORM3IPROC = void function (GLint location, GLint v0, GLint v1, GLint v2);
alias PFNGLUNIFORM4IPROC = void function (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
alias PFNGLUNIFORM1FVPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM2FVPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM3FVPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM4FVPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM1IVPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORM2IVPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORM3IVPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORM4IVPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORMMATRIX2FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX3FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX4FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLVALIDATEPROGRAMPROC = void function (GLuint program);
alias PFNGLVERTEXATTRIB1DPROC = void function (GLuint index, GLdouble x);
alias PFNGLVERTEXATTRIB1DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB1FPROC = void function (GLuint index, GLfloat x);
alias PFNGLVERTEXATTRIB1FVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB1SPROC = void function (GLuint index, GLshort x);
alias PFNGLVERTEXATTRIB1SVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB2DPROC = void function (GLuint index, GLdouble x, GLdouble y);
alias PFNGLVERTEXATTRIB2DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB2FPROC = void function (GLuint index, GLfloat x, GLfloat y);
alias PFNGLVERTEXATTRIB2FVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB2SPROC = void function (GLuint index, GLshort x, GLshort y);
alias PFNGLVERTEXATTRIB2SVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB3DPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLVERTEXATTRIB3DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB3FPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLVERTEXATTRIB3FVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB3SPROC = void function (GLuint index, GLshort x, GLshort y, GLshort z);
alias PFNGLVERTEXATTRIB3SVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4NBVPROC = void function (GLuint index, const(GLbyte)* v);
alias PFNGLVERTEXATTRIB4NIVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIB4NSVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4NUBPROC = void function (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias PFNGLVERTEXATTRIB4NUBVPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIB4NUIVPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIB4NUSVPROC = void function (GLuint index, const(GLushort)* v);
alias PFNGLVERTEXATTRIB4BVPROC = void function (GLuint index, const(GLbyte)* v);
alias PFNGLVERTEXATTRIB4DPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLVERTEXATTRIB4DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB4FPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLVERTEXATTRIB4FVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB4IVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIB4SPROC = void function (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias PFNGLVERTEXATTRIB4SVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4UBVPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIB4UIVPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIB4USVPROC = void function (GLuint index, const(GLushort)* v);
alias PFNGLVERTEXATTRIBPOINTERPROC = void function (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(void)* pointer);
void glBlendEquationSeparate (GLenum modeRGB, GLenum modeAlpha);
void glDrawBuffers (GLsizei n, const(GLenum)* bufs);
void glStencilOpSeparate (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilFuncSeparate (GLenum face, GLenum func, GLint ref_, GLuint mask);
void glStencilMaskSeparate (GLenum face, GLuint mask);
void glAttachShader (GLuint program, GLuint shader);
void glBindAttribLocation (GLuint program, GLuint index, const(GLchar)* name);
void glCompileShader (GLuint shader);
GLuint glCreateProgram ();
GLuint glCreateShader (GLenum type);
void glDeleteProgram (GLuint program);
void glDeleteShader (GLuint shader);
void glDetachShader (GLuint program, GLuint shader);
void glDisableVertexAttribArray (GLuint index);
void glEnableVertexAttribArray (GLuint index);
void glGetActiveAttrib (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
void glGetActiveUniform (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
void glGetAttachedShaders (GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders);
GLint glGetAttribLocation (GLuint program, const(GLchar)* name);
void glGetProgramiv (GLuint program, GLenum pname, GLint* params);
void glGetProgramInfoLog (GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
void glGetShaderiv (GLuint shader, GLenum pname, GLint* params);
void glGetShaderInfoLog (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
void glGetShaderSource (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source);
GLint glGetUniformLocation (GLuint program, const(GLchar)* name);
void glGetUniformfv (GLuint program, GLint location, GLfloat* params);
void glGetUniformiv (GLuint program, GLint location, GLint* params);
void glGetVertexAttribdv (GLuint index, GLenum pname, GLdouble* params);
void glGetVertexAttribfv (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribiv (GLuint index, GLenum pname, GLint* params);
void glGetVertexAttribPointerv (GLuint index, GLenum pname, void** pointer);
GLboolean glIsProgram (GLuint program);
GLboolean glIsShader (GLuint shader);
void glLinkProgram (GLuint program);
void glShaderSource (GLuint shader, GLsizei count, const(GLchar*)* string, const(GLint)* length);
void glUseProgram (GLuint program);
void glUniform1f (GLint location, GLfloat v0);
void glUniform2f (GLint location, GLfloat v0, GLfloat v1);
void glUniform3f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform4f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform1i (GLint location, GLint v0);
void glUniform2i (GLint location, GLint v0, GLint v1);
void glUniform3i (GLint location, GLint v0, GLint v1, GLint v2);
void glUniform4i (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform1fv (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform2fv (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform3fv (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform4fv (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform1iv (GLint location, GLsizei count, const(GLint)* value);
void glUniform2iv (GLint location, GLsizei count, const(GLint)* value);
void glUniform3iv (GLint location, GLsizei count, const(GLint)* value);
void glUniform4iv (GLint location, GLsizei count, const(GLint)* value);
void glUniformMatrix2fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix3fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix4fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glValidateProgram (GLuint program);
void glVertexAttrib1d (GLuint index, GLdouble x);
void glVertexAttrib1dv (GLuint index, const(GLdouble)* v);
void glVertexAttrib1f (GLuint index, GLfloat x);
void glVertexAttrib1fv (GLuint index, const(GLfloat)* v);
void glVertexAttrib1s (GLuint index, GLshort x);
void glVertexAttrib1sv (GLuint index, const(GLshort)* v);
void glVertexAttrib2d (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dv (GLuint index, const(GLdouble)* v);
void glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fv (GLuint index, const(GLfloat)* v);
void glVertexAttrib2s (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2sv (GLuint index, const(GLshort)* v);
void glVertexAttrib3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dv (GLuint index, const(GLdouble)* v);
void glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fv (GLuint index, const(GLfloat)* v);
void glVertexAttrib3s (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3sv (GLuint index, const(GLshort)* v);
void glVertexAttrib4Nbv (GLuint index, const(GLbyte)* v);
void glVertexAttrib4Niv (GLuint index, const(GLint)* v);
void glVertexAttrib4Nsv (GLuint index, const(GLshort)* v);
void glVertexAttrib4Nub (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4Nubv (GLuint index, const(GLubyte)* v);
void glVertexAttrib4Nuiv (GLuint index, const(GLuint)* v);
void glVertexAttrib4Nusv (GLuint index, const(GLushort)* v);
void glVertexAttrib4bv (GLuint index, const(GLbyte)* v);
void glVertexAttrib4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dv (GLuint index, const(GLdouble)* v);
void glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fv (GLuint index, const(GLfloat)* v);
void glVertexAttrib4iv (GLuint index, const(GLint)* v);
void glVertexAttrib4s (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4sv (GLuint index, const(GLshort)* v);
void glVertexAttrib4ubv (GLuint index, const(GLubyte)* v);
void glVertexAttrib4uiv (GLuint index, const(GLuint)* v);
void glVertexAttrib4usv (GLuint index, const(GLushort)* v);
void glVertexAttribPointer (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(void)* pointer);

/* GL_VERSION_2_0 */

enum GL_VERSION_2_1 = 1;
enum GL_PIXEL_PACK_BUFFER = 0x88EB;
enum GL_PIXEL_UNPACK_BUFFER = 0x88EC;
enum GL_PIXEL_PACK_BUFFER_BINDING = 0x88ED;
enum GL_PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;
enum GL_FLOAT_MAT2x3 = 0x8B65;
enum GL_FLOAT_MAT2x4 = 0x8B66;
enum GL_FLOAT_MAT3x2 = 0x8B67;
enum GL_FLOAT_MAT3x4 = 0x8B68;
enum GL_FLOAT_MAT4x2 = 0x8B69;
enum GL_FLOAT_MAT4x3 = 0x8B6A;
enum GL_SRGB = 0x8C40;
enum GL_SRGB8 = 0x8C41;
enum GL_SRGB_ALPHA = 0x8C42;
enum GL_SRGB8_ALPHA8 = 0x8C43;
enum GL_COMPRESSED_SRGB = 0x8C48;
enum GL_COMPRESSED_SRGB_ALPHA = 0x8C49;
enum GL_CURRENT_RASTER_SECONDARY_COLOR = 0x845F;
enum GL_SLUMINANCE_ALPHA = 0x8C44;
enum GL_SLUMINANCE8_ALPHA8 = 0x8C45;
enum GL_SLUMINANCE = 0x8C46;
enum GL_SLUMINANCE8 = 0x8C47;
enum GL_COMPRESSED_SLUMINANCE = 0x8C4A;
enum GL_COMPRESSED_SLUMINANCE_ALPHA = 0x8C4B;
alias PFNGLUNIFORMMATRIX2X3FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX3X2FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX2X4FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX4X2FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX3X4FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX4X3FVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix2x3fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix3x2fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix2x4fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix4x2fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix3x4fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix4x3fv (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);

/* GL_VERSION_2_1 */

enum GL_VERSION_3_0 = 1;
alias GLhalf = ushort;
enum GL_COMPARE_REF_TO_TEXTURE = 0x884E;
enum GL_CLIP_DISTANCE0 = 0x3000;
enum GL_CLIP_DISTANCE1 = 0x3001;
enum GL_CLIP_DISTANCE2 = 0x3002;
enum GL_CLIP_DISTANCE3 = 0x3003;
enum GL_CLIP_DISTANCE4 = 0x3004;
enum GL_CLIP_DISTANCE5 = 0x3005;
enum GL_CLIP_DISTANCE6 = 0x3006;
enum GL_CLIP_DISTANCE7 = 0x3007;
enum GL_MAX_CLIP_DISTANCES = 0x0D32;
enum GL_MAJOR_VERSION = 0x821B;
enum GL_MINOR_VERSION = 0x821C;
enum GL_NUM_EXTENSIONS = 0x821D;
enum GL_CONTEXT_FLAGS = 0x821E;
enum GL_COMPRESSED_RED = 0x8225;
enum GL_COMPRESSED_RG = 0x8226;
enum GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001;
enum GL_RGBA32F = 0x8814;
enum GL_RGB32F = 0x8815;
enum GL_RGBA16F = 0x881A;
enum GL_RGB16F = 0x881B;
enum GL_VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
enum GL_MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;
enum GL_MIN_PROGRAM_TEXEL_OFFSET = 0x8904;
enum GL_MAX_PROGRAM_TEXEL_OFFSET = 0x8905;
enum GL_CLAMP_READ_COLOR = 0x891C;
enum GL_FIXED_ONLY = 0x891D;
enum GL_MAX_VARYING_COMPONENTS = 0x8B4B;
enum GL_TEXTURE_1D_ARRAY = 0x8C18;
enum GL_PROXY_TEXTURE_1D_ARRAY = 0x8C19;
enum GL_TEXTURE_2D_ARRAY = 0x8C1A;
enum GL_PROXY_TEXTURE_2D_ARRAY = 0x8C1B;
enum GL_TEXTURE_BINDING_1D_ARRAY = 0x8C1C;
enum GL_TEXTURE_BINDING_2D_ARRAY = 0x8C1D;
enum GL_R11F_G11F_B10F = 0x8C3A;
enum GL_UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
enum GL_RGB9_E5 = 0x8C3D;
enum GL_UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;
enum GL_TEXTURE_SHARED_SIZE = 0x8C3F;
enum GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76;
enum GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;
enum GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;
enum GL_TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;
enum GL_TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
enum GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
enum GL_PRIMITIVES_GENERATED = 0x8C87;
enum GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;
enum GL_RASTERIZER_DISCARD = 0x8C89;
enum GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;
enum GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;
enum GL_INTERLEAVED_ATTRIBS = 0x8C8C;
enum GL_SEPARATE_ATTRIBS = 0x8C8D;
enum GL_TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
enum GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;
enum GL_RGBA32UI = 0x8D70;
enum GL_RGB32UI = 0x8D71;
enum GL_RGBA16UI = 0x8D76;
enum GL_RGB16UI = 0x8D77;
enum GL_RGBA8UI = 0x8D7C;
enum GL_RGB8UI = 0x8D7D;
enum GL_RGBA32I = 0x8D82;
enum GL_RGB32I = 0x8D83;
enum GL_RGBA16I = 0x8D88;
enum GL_RGB16I = 0x8D89;
enum GL_RGBA8I = 0x8D8E;
enum GL_RGB8I = 0x8D8F;
enum GL_RED_INTEGER = 0x8D94;
enum GL_GREEN_INTEGER = 0x8D95;
enum GL_BLUE_INTEGER = 0x8D96;
enum GL_RGB_INTEGER = 0x8D98;
enum GL_RGBA_INTEGER = 0x8D99;
enum GL_BGR_INTEGER = 0x8D9A;
enum GL_BGRA_INTEGER = 0x8D9B;
enum GL_SAMPLER_1D_ARRAY = 0x8DC0;
enum GL_SAMPLER_2D_ARRAY = 0x8DC1;
enum GL_SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;
enum GL_SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
enum GL_SAMPLER_CUBE_SHADOW = 0x8DC5;
enum GL_UNSIGNED_INT_VEC2 = 0x8DC6;
enum GL_UNSIGNED_INT_VEC3 = 0x8DC7;
enum GL_UNSIGNED_INT_VEC4 = 0x8DC8;
enum GL_INT_SAMPLER_1D = 0x8DC9;
enum GL_INT_SAMPLER_2D = 0x8DCA;
enum GL_INT_SAMPLER_3D = 0x8DCB;
enum GL_INT_SAMPLER_CUBE = 0x8DCC;
enum GL_INT_SAMPLER_1D_ARRAY = 0x8DCE;
enum GL_INT_SAMPLER_2D_ARRAY = 0x8DCF;
enum GL_UNSIGNED_INT_SAMPLER_1D = 0x8DD1;
enum GL_UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
enum GL_UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
enum GL_UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
enum GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;
enum GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
enum GL_QUERY_WAIT = 0x8E13;
enum GL_QUERY_NO_WAIT = 0x8E14;
enum GL_QUERY_BY_REGION_WAIT = 0x8E15;
enum GL_QUERY_BY_REGION_NO_WAIT = 0x8E16;
enum GL_BUFFER_ACCESS_FLAGS = 0x911F;
enum GL_BUFFER_MAP_LENGTH = 0x9120;
enum GL_BUFFER_MAP_OFFSET = 0x9121;
enum GL_DEPTH_COMPONENT32F = 0x8CAC;
enum GL_DEPTH32F_STENCIL8 = 0x8CAD;
enum GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;
enum GL_INVALID_FRAMEBUFFER_OPERATION = 0x0506;
enum GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;
enum GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;
enum GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;
enum GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;
enum GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;
enum GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;
enum GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;
enum GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;
enum GL_FRAMEBUFFER_DEFAULT = 0x8218;
enum GL_FRAMEBUFFER_UNDEFINED = 0x8219;
enum GL_DEPTH_STENCIL_ATTACHMENT = 0x821A;
enum GL_MAX_RENDERBUFFER_SIZE = 0x84E8;
enum GL_DEPTH_STENCIL = 0x84F9;
enum GL_UNSIGNED_INT_24_8 = 0x84FA;
enum GL_DEPTH24_STENCIL8 = 0x88F0;
enum GL_TEXTURE_STENCIL_SIZE = 0x88F1;
enum GL_TEXTURE_RED_TYPE = 0x8C10;
enum GL_TEXTURE_GREEN_TYPE = 0x8C11;
enum GL_TEXTURE_BLUE_TYPE = 0x8C12;
enum GL_TEXTURE_ALPHA_TYPE = 0x8C13;
enum GL_TEXTURE_DEPTH_TYPE = 0x8C16;
enum GL_UNSIGNED_NORMALIZED = 0x8C17;
enum GL_FRAMEBUFFER_BINDING = 0x8CA6;
enum GL_DRAW_FRAMEBUFFER_BINDING = 0x8CA6;
enum GL_RENDERBUFFER_BINDING = 0x8CA7;
enum GL_READ_FRAMEBUFFER = 0x8CA8;
enum GL_DRAW_FRAMEBUFFER = 0x8CA9;
enum GL_READ_FRAMEBUFFER_BINDING = 0x8CAA;
enum GL_RENDERBUFFER_SAMPLES = 0x8CAB;
enum GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
enum GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;
enum GL_FRAMEBUFFER_COMPLETE = 0x8CD5;
enum GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
enum GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
enum GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB;
enum GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC;
enum GL_FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
enum GL_MAX_COLOR_ATTACHMENTS = 0x8CDF;
enum GL_COLOR_ATTACHMENT0 = 0x8CE0;
enum GL_COLOR_ATTACHMENT1 = 0x8CE1;
enum GL_COLOR_ATTACHMENT2 = 0x8CE2;
enum GL_COLOR_ATTACHMENT3 = 0x8CE3;
enum GL_COLOR_ATTACHMENT4 = 0x8CE4;
enum GL_COLOR_ATTACHMENT5 = 0x8CE5;
enum GL_COLOR_ATTACHMENT6 = 0x8CE6;
enum GL_COLOR_ATTACHMENT7 = 0x8CE7;
enum GL_COLOR_ATTACHMENT8 = 0x8CE8;
enum GL_COLOR_ATTACHMENT9 = 0x8CE9;
enum GL_COLOR_ATTACHMENT10 = 0x8CEA;
enum GL_COLOR_ATTACHMENT11 = 0x8CEB;
enum GL_COLOR_ATTACHMENT12 = 0x8CEC;
enum GL_COLOR_ATTACHMENT13 = 0x8CED;
enum GL_COLOR_ATTACHMENT14 = 0x8CEE;
enum GL_COLOR_ATTACHMENT15 = 0x8CEF;
enum GL_DEPTH_ATTACHMENT = 0x8D00;
enum GL_STENCIL_ATTACHMENT = 0x8D20;
enum GL_FRAMEBUFFER = 0x8D40;
enum GL_RENDERBUFFER = 0x8D41;
enum GL_RENDERBUFFER_WIDTH = 0x8D42;
enum GL_RENDERBUFFER_HEIGHT = 0x8D43;
enum GL_RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
enum GL_STENCIL_INDEX1 = 0x8D46;
enum GL_STENCIL_INDEX4 = 0x8D47;
enum GL_STENCIL_INDEX8 = 0x8D48;
enum GL_STENCIL_INDEX16 = 0x8D49;
enum GL_RENDERBUFFER_RED_SIZE = 0x8D50;
enum GL_RENDERBUFFER_GREEN_SIZE = 0x8D51;
enum GL_RENDERBUFFER_BLUE_SIZE = 0x8D52;
enum GL_RENDERBUFFER_ALPHA_SIZE = 0x8D53;
enum GL_RENDERBUFFER_DEPTH_SIZE = 0x8D54;
enum GL_RENDERBUFFER_STENCIL_SIZE = 0x8D55;
enum GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;
enum GL_MAX_SAMPLES = 0x8D57;
enum GL_INDEX = 0x8222;
enum GL_TEXTURE_LUMINANCE_TYPE = 0x8C14;
enum GL_TEXTURE_INTENSITY_TYPE = 0x8C15;
enum GL_FRAMEBUFFER_SRGB = 0x8DB9;
enum GL_HALF_FLOAT = 0x140B;
enum GL_MAP_READ_BIT = 0x0001;
enum GL_MAP_WRITE_BIT = 0x0002;
enum GL_MAP_INVALIDATE_RANGE_BIT = 0x0004;
enum GL_MAP_INVALIDATE_BUFFER_BIT = 0x0008;
enum GL_MAP_FLUSH_EXPLICIT_BIT = 0x0010;
enum GL_MAP_UNSYNCHRONIZED_BIT = 0x0020;
enum GL_COMPRESSED_RED_RGTC1 = 0x8DBB;
enum GL_COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC;
enum GL_COMPRESSED_RG_RGTC2 = 0x8DBD;
enum GL_COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE;
enum GL_RG = 0x8227;
enum GL_RG_INTEGER = 0x8228;
enum GL_R8 = 0x8229;
enum GL_R16 = 0x822A;
enum GL_RG8 = 0x822B;
enum GL_RG16 = 0x822C;
enum GL_R16F = 0x822D;
enum GL_R32F = 0x822E;
enum GL_RG16F = 0x822F;
enum GL_RG32F = 0x8230;
enum GL_R8I = 0x8231;
enum GL_R8UI = 0x8232;
enum GL_R16I = 0x8233;
enum GL_R16UI = 0x8234;
enum GL_R32I = 0x8235;
enum GL_R32UI = 0x8236;
enum GL_RG8I = 0x8237;
enum GL_RG8UI = 0x8238;
enum GL_RG16I = 0x8239;
enum GL_RG16UI = 0x823A;
enum GL_RG32I = 0x823B;
enum GL_RG32UI = 0x823C;
enum GL_VERTEX_ARRAY_BINDING = 0x85B5;
enum GL_CLAMP_VERTEX_COLOR = 0x891A;
enum GL_CLAMP_FRAGMENT_COLOR = 0x891B;
enum GL_ALPHA_INTEGER = 0x8D97;
alias PFNGLCOLORMASKIPROC = void function (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
alias PFNGLGETBOOLEANI_VPROC = void function (GLenum target, GLuint index, GLboolean* data);
alias PFNGLGETINTEGERI_VPROC = void function (GLenum target, GLuint index, GLint* data);
alias PFNGLENABLEIPROC = void function (GLenum target, GLuint index);
alias PFNGLDISABLEIPROC = void function (GLenum target, GLuint index);
alias PFNGLISENABLEDIPROC = ubyte function (GLenum target, GLuint index);
alias PFNGLBEGINTRANSFORMFEEDBACKPROC = void function (GLenum primitiveMode);
alias PFNGLENDTRANSFORMFEEDBACKPROC = void function ();
alias PFNGLBINDBUFFERRANGEPROC = void function (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
alias PFNGLBINDBUFFERBASEPROC = void function (GLenum target, GLuint index, GLuint buffer);
alias PFNGLTRANSFORMFEEDBACKVARYINGSPROC = void function (GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode);
alias PFNGLGETTRANSFORMFEEDBACKVARYINGPROC = void function (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
alias PFNGLCLAMPCOLORPROC = void function (GLenum target, GLenum clamp);
alias PFNGLBEGINCONDITIONALRENDERPROC = void function (GLuint id, GLenum mode);
alias PFNGLENDCONDITIONALRENDERPROC = void function ();
alias PFNGLVERTEXATTRIBIPOINTERPROC = void function (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLGETVERTEXATTRIBIIVPROC = void function (GLuint index, GLenum pname, GLint* params);
alias PFNGLGETVERTEXATTRIBIUIVPROC = void function (GLuint index, GLenum pname, GLuint* params);
alias PFNGLVERTEXATTRIBI1IPROC = void function (GLuint index, GLint x);
alias PFNGLVERTEXATTRIBI2IPROC = void function (GLuint index, GLint x, GLint y);
alias PFNGLVERTEXATTRIBI3IPROC = void function (GLuint index, GLint x, GLint y, GLint z);
alias PFNGLVERTEXATTRIBI4IPROC = void function (GLuint index, GLint x, GLint y, GLint z, GLint w);
alias PFNGLVERTEXATTRIBI1UIPROC = void function (GLuint index, GLuint x);
alias PFNGLVERTEXATTRIBI2UIPROC = void function (GLuint index, GLuint x, GLuint y);
alias PFNGLVERTEXATTRIBI3UIPROC = void function (GLuint index, GLuint x, GLuint y, GLuint z);
alias PFNGLVERTEXATTRIBI4UIPROC = void function (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
alias PFNGLVERTEXATTRIBI1IVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI2IVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI3IVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI4IVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI1UIVPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI2UIVPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI3UIVPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI4UIVPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI4BVPROC = void function (GLuint index, const(GLbyte)* v);
alias PFNGLVERTEXATTRIBI4SVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIBI4UBVPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIBI4USVPROC = void function (GLuint index, const(GLushort)* v);
alias PFNGLGETUNIFORMUIVPROC = void function (GLuint program, GLint location, GLuint* params);
alias PFNGLBINDFRAGDATALOCATIONPROC = void function (GLuint program, GLuint color, const(GLchar)* name);
alias PFNGLGETFRAGDATALOCATIONPROC = int function (GLuint program, const(GLchar)* name);
alias PFNGLUNIFORM1UIPROC = void function (GLint location, GLuint v0);
alias PFNGLUNIFORM2UIPROC = void function (GLint location, GLuint v0, GLuint v1);
alias PFNGLUNIFORM3UIPROC = void function (GLint location, GLuint v0, GLuint v1, GLuint v2);
alias PFNGLUNIFORM4UIPROC = void function (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
alias PFNGLUNIFORM1UIVPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLUNIFORM2UIVPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLUNIFORM3UIVPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLUNIFORM4UIVPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLTEXPARAMETERIIVPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLTEXPARAMETERIUIVPROC = void function (GLenum target, GLenum pname, const(GLuint)* params);
alias PFNGLGETTEXPARAMETERIIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETTEXPARAMETERIUIVPROC = void function (GLenum target, GLenum pname, GLuint* params);
alias PFNGLCLEARBUFFERIVPROC = void function (GLenum buffer, GLint drawbuffer, const(GLint)* value);
alias PFNGLCLEARBUFFERUIVPROC = void function (GLenum buffer, GLint drawbuffer, const(GLuint)* value);
alias PFNGLCLEARBUFFERFVPROC = void function (GLenum buffer, GLint drawbuffer, const(GLfloat)* value);
alias PFNGLCLEARBUFFERFIPROC = void function (GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
alias PFNGLGETSTRINGIPROC = const(ubyte)* function (GLenum name, GLuint index);
alias PFNGLISRENDERBUFFERPROC = ubyte function (GLuint renderbuffer);
alias PFNGLBINDRENDERBUFFERPROC = void function (GLenum target, GLuint renderbuffer);
alias PFNGLDELETERENDERBUFFERSPROC = void function (GLsizei n, const(GLuint)* renderbuffers);
alias PFNGLGENRENDERBUFFERSPROC = void function (GLsizei n, GLuint* renderbuffers);
alias PFNGLRENDERBUFFERSTORAGEPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLGETRENDERBUFFERPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLISFRAMEBUFFERPROC = ubyte function (GLuint framebuffer);
alias PFNGLBINDFRAMEBUFFERPROC = void function (GLenum target, GLuint framebuffer);
alias PFNGLDELETEFRAMEBUFFERSPROC = void function (GLsizei n, const(GLuint)* framebuffers);
alias PFNGLGENFRAMEBUFFERSPROC = void function (GLsizei n, GLuint* framebuffers);
alias PFNGLCHECKFRAMEBUFFERSTATUSPROC = uint function (GLenum target);
alias PFNGLFRAMEBUFFERTEXTURE1DPROC = void function (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
alias PFNGLFRAMEBUFFERTEXTURE2DPROC = void function (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
alias PFNGLFRAMEBUFFERTEXTURE3DPROC = void function (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
alias PFNGLFRAMEBUFFERRENDERBUFFERPROC = void function (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
alias PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC = void function (GLenum target, GLenum attachment, GLenum pname, GLint* params);
alias PFNGLGENERATEMIPMAPPROC = void function (GLenum target);
alias PFNGLBLITFRAMEBUFFERPROC = void function (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
alias PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC = void function (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLFRAMEBUFFERTEXTURELAYERPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
alias PFNGLMAPBUFFERRANGEPROC = void* function (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
alias PFNGLFLUSHMAPPEDBUFFERRANGEPROC = void function (GLenum target, GLintptr offset, GLsizeiptr length);
alias PFNGLBINDVERTEXARRAYPROC = void function (GLuint array);
alias PFNGLDELETEVERTEXARRAYSPROC = void function (GLsizei n, const(GLuint)* arrays);
alias PFNGLGENVERTEXARRAYSPROC = void function (GLsizei n, GLuint* arrays);
alias PFNGLISVERTEXARRAYPROC = ubyte function (GLuint array);
void glColorMaski (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glGetBooleani_v (GLenum target, GLuint index, GLboolean* data);
void glGetIntegeri_v (GLenum target, GLuint index, GLint* data);
void glEnablei (GLenum target, GLuint index);
void glDisablei (GLenum target, GLuint index);
GLboolean glIsEnabledi (GLenum target, GLuint index);
void glBeginTransformFeedback (GLenum primitiveMode);
void glEndTransformFeedback ();
void glBindBufferRange (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferBase (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryings (GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode);
void glGetTransformFeedbackVarying (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
void glClampColor (GLenum target, GLenum clamp);
void glBeginConditionalRender (GLuint id, GLenum mode);
void glEndConditionalRender ();
void glVertexAttribIPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glGetVertexAttribIiv (GLuint index, GLenum pname, GLint* params);
void glGetVertexAttribIuiv (GLuint index, GLenum pname, GLuint* params);
void glVertexAttribI1i (GLuint index, GLint x);
void glVertexAttribI2i (GLuint index, GLint x, GLint y);
void glVertexAttribI3i (GLuint index, GLint x, GLint y, GLint z);
void glVertexAttribI4i (GLuint index, GLint x, GLint y, GLint z, GLint w);
void glVertexAttribI1ui (GLuint index, GLuint x);
void glVertexAttribI2ui (GLuint index, GLuint x, GLuint y);
void glVertexAttribI3ui (GLuint index, GLuint x, GLuint y, GLuint z);
void glVertexAttribI4ui (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glVertexAttribI1iv (GLuint index, const(GLint)* v);
void glVertexAttribI2iv (GLuint index, const(GLint)* v);
void glVertexAttribI3iv (GLuint index, const(GLint)* v);
void glVertexAttribI4iv (GLuint index, const(GLint)* v);
void glVertexAttribI1uiv (GLuint index, const(GLuint)* v);
void glVertexAttribI2uiv (GLuint index, const(GLuint)* v);
void glVertexAttribI3uiv (GLuint index, const(GLuint)* v);
void glVertexAttribI4uiv (GLuint index, const(GLuint)* v);
void glVertexAttribI4bv (GLuint index, const(GLbyte)* v);
void glVertexAttribI4sv (GLuint index, const(GLshort)* v);
void glVertexAttribI4ubv (GLuint index, const(GLubyte)* v);
void glVertexAttribI4usv (GLuint index, const(GLushort)* v);
void glGetUniformuiv (GLuint program, GLint location, GLuint* params);
void glBindFragDataLocation (GLuint program, GLuint color, const(GLchar)* name);
GLint glGetFragDataLocation (GLuint program, const(GLchar)* name);
void glUniform1ui (GLint location, GLuint v0);
void glUniform2ui (GLint location, GLuint v0, GLuint v1);
void glUniform3ui (GLint location, GLuint v0, GLuint v1, GLuint v2);
void glUniform4ui (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glUniform1uiv (GLint location, GLsizei count, const(GLuint)* value);
void glUniform2uiv (GLint location, GLsizei count, const(GLuint)* value);
void glUniform3uiv (GLint location, GLsizei count, const(GLuint)* value);
void glUniform4uiv (GLint location, GLsizei count, const(GLuint)* value);
void glTexParameterIiv (GLenum target, GLenum pname, const(GLint)* params);
void glTexParameterIuiv (GLenum target, GLenum pname, const(GLuint)* params);
void glGetTexParameterIiv (GLenum target, GLenum pname, GLint* params);
void glGetTexParameterIuiv (GLenum target, GLenum pname, GLuint* params);
void glClearBufferiv (GLenum buffer, GLint drawbuffer, const(GLint)* value);
void glClearBufferuiv (GLenum buffer, GLint drawbuffer, const(GLuint)* value);
void glClearBufferfv (GLenum buffer, GLint drawbuffer, const(GLfloat)* value);
void glClearBufferfi (GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
const(GLubyte)* glGetStringi (GLenum name, GLuint index);
GLboolean glIsRenderbuffer (GLuint renderbuffer);
void glBindRenderbuffer (GLenum target, GLuint renderbuffer);
void glDeleteRenderbuffers (GLsizei n, const(GLuint)* renderbuffers);
void glGenRenderbuffers (GLsizei n, GLuint* renderbuffers);
void glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint* params);
GLboolean glIsFramebuffer (GLuint framebuffer);
void glBindFramebuffer (GLenum target, GLuint framebuffer);
void glDeleteFramebuffers (GLsizei n, const(GLuint)* framebuffers);
void glGenFramebuffers (GLsizei n, GLuint* framebuffers);
GLenum glCheckFramebufferStatus (GLenum target);
void glFramebufferTexture1D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint* params);
void glGenerateMipmap (GLenum target);
void glBlitFramebuffer (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
void glRenderbufferStorageMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glFramebufferTextureLayer (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void* glMapBufferRange (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
void glFlushMappedBufferRange (GLenum target, GLintptr offset, GLsizeiptr length);
void glBindVertexArray (GLuint array);
void glDeleteVertexArrays (GLsizei n, const(GLuint)* arrays);
void glGenVertexArrays (GLsizei n, GLuint* arrays);
GLboolean glIsVertexArray (GLuint array);

/* GL_VERSION_3_0 */

enum GL_VERSION_3_1 = 1;
enum GL_SAMPLER_2D_RECT = 0x8B63;
enum GL_SAMPLER_2D_RECT_SHADOW = 0x8B64;
enum GL_SAMPLER_BUFFER = 0x8DC2;
enum GL_INT_SAMPLER_2D_RECT = 0x8DCD;
enum GL_INT_SAMPLER_BUFFER = 0x8DD0;
enum GL_UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;
enum GL_UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;
enum GL_TEXTURE_BUFFER = 0x8C2A;
enum GL_MAX_TEXTURE_BUFFER_SIZE = 0x8C2B;
enum GL_TEXTURE_BINDING_BUFFER = 0x8C2C;
enum GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D;
enum GL_TEXTURE_RECTANGLE = 0x84F5;
enum GL_TEXTURE_BINDING_RECTANGLE = 0x84F6;
enum GL_PROXY_TEXTURE_RECTANGLE = 0x84F7;
enum GL_MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8;
enum GL_R8_SNORM = 0x8F94;
enum GL_RG8_SNORM = 0x8F95;
enum GL_RGB8_SNORM = 0x8F96;
enum GL_RGBA8_SNORM = 0x8F97;
enum GL_R16_SNORM = 0x8F98;
enum GL_RG16_SNORM = 0x8F99;
enum GL_RGB16_SNORM = 0x8F9A;
enum GL_RGBA16_SNORM = 0x8F9B;
enum GL_SIGNED_NORMALIZED = 0x8F9C;
enum GL_PRIMITIVE_RESTART = 0x8F9D;
enum GL_PRIMITIVE_RESTART_INDEX = 0x8F9E;
enum GL_COPY_READ_BUFFER = 0x8F36;
enum GL_COPY_WRITE_BUFFER = 0x8F37;
enum GL_UNIFORM_BUFFER = 0x8A11;
enum GL_UNIFORM_BUFFER_BINDING = 0x8A28;
enum GL_UNIFORM_BUFFER_START = 0x8A29;
enum GL_UNIFORM_BUFFER_SIZE = 0x8A2A;
enum GL_MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;
enum GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;
enum GL_MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;
enum GL_MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;
enum GL_MAX_UNIFORM_BLOCK_SIZE = 0x8A30;
enum GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;
enum GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;
enum GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;
enum GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35;
enum GL_ACTIVE_UNIFORM_BLOCKS = 0x8A36;
enum GL_UNIFORM_TYPE = 0x8A37;
enum GL_UNIFORM_SIZE = 0x8A38;
enum GL_UNIFORM_NAME_LENGTH = 0x8A39;
enum GL_UNIFORM_BLOCK_INDEX = 0x8A3A;
enum GL_UNIFORM_OFFSET = 0x8A3B;
enum GL_UNIFORM_ARRAY_STRIDE = 0x8A3C;
enum GL_UNIFORM_MATRIX_STRIDE = 0x8A3D;
enum GL_UNIFORM_IS_ROW_MAJOR = 0x8A3E;
enum GL_UNIFORM_BLOCK_BINDING = 0x8A3F;
enum GL_UNIFORM_BLOCK_DATA_SIZE = 0x8A40;
enum GL_UNIFORM_BLOCK_NAME_LENGTH = 0x8A41;
enum GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;
enum GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;
enum GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;
enum GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
enum GL_INVALID_INDEX = 0xFFFFFFFFu;
alias PFNGLDRAWARRAYSINSTANCEDPROC = void function (GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
alias PFNGLDRAWELEMENTSINSTANCEDPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount);
alias PFNGLTEXBUFFERPROC = void function (GLenum target, GLenum internalformat, GLuint buffer);
alias PFNGLPRIMITIVERESTARTINDEXPROC = void function (GLuint index);
alias PFNGLCOPYBUFFERSUBDATAPROC = void function (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
alias PFNGLGETUNIFORMINDICESPROC = void function (GLuint program, GLsizei uniformCount, const(GLchar*)* uniformNames, GLuint* uniformIndices);
alias PFNGLGETACTIVEUNIFORMSIVPROC = void function (GLuint program, GLsizei uniformCount, const(GLuint)* uniformIndices, GLenum pname, GLint* params);
alias PFNGLGETACTIVEUNIFORMNAMEPROC = void function (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName);
alias PFNGLGETUNIFORMBLOCKINDEXPROC = uint function (GLuint program, const(GLchar)* uniformBlockName);
alias PFNGLGETACTIVEUNIFORMBLOCKIVPROC = void function (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params);
alias PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC = void function (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName);
alias PFNGLUNIFORMBLOCKBINDINGPROC = void function (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
void glDrawArraysInstanced (GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
void glDrawElementsInstanced (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount);
void glTexBuffer (GLenum target, GLenum internalformat, GLuint buffer);
void glPrimitiveRestartIndex (GLuint index);
void glCopyBufferSubData (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void glGetUniformIndices (GLuint program, GLsizei uniformCount, const(GLchar*)* uniformNames, GLuint* uniformIndices);
void glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, const(GLuint)* uniformIndices, GLenum pname, GLint* params);
void glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName);
GLuint glGetUniformBlockIndex (GLuint program, const(GLchar)* uniformBlockName);
void glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params);
void glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName);
void glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);

/* GL_VERSION_3_1 */

enum GL_VERSION_3_2 = 1;
struct __GLsync;
alias GLsync = __GLsync*;

/* This code block is duplicated in glxext.h, so must be protected */
/* Define int32_t, int64_t, and uint64_t types for UST/MSC */
/* (as used in the GL_EXT_timer_query extension). */

/* __arch64__ */
/* __STDC__ */

/* Fallback if nothing above works */

alias GLuint64 = c_ulong;
alias GLint64 = c_long;
enum GL_CONTEXT_CORE_PROFILE_BIT = 0x00000001;
enum GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002;
enum GL_LINES_ADJACENCY = 0x000A;
enum GL_LINE_STRIP_ADJACENCY = 0x000B;
enum GL_TRIANGLES_ADJACENCY = 0x000C;
enum GL_TRIANGLE_STRIP_ADJACENCY = 0x000D;
enum GL_PROGRAM_POINT_SIZE = 0x8642;
enum GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29;
enum GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7;
enum GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8;
enum GL_GEOMETRY_SHADER = 0x8DD9;
enum GL_GEOMETRY_VERTICES_OUT = 0x8916;
enum GL_GEOMETRY_INPUT_TYPE = 0x8917;
enum GL_GEOMETRY_OUTPUT_TYPE = 0x8918;
enum GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF;
enum GL_MAX_GEOMETRY_OUTPUT_VERTICES = 0x8DE0;
enum GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1;
enum GL_MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;
enum GL_MAX_GEOMETRY_INPUT_COMPONENTS = 0x9123;
enum GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124;
enum GL_MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;
enum GL_CONTEXT_PROFILE_MASK = 0x9126;
enum GL_DEPTH_CLAMP = 0x864F;
enum GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C;
enum GL_FIRST_VERTEX_CONVENTION = 0x8E4D;
enum GL_LAST_VERTEX_CONVENTION = 0x8E4E;
enum GL_PROVOKING_VERTEX = 0x8E4F;
enum GL_TEXTURE_CUBE_MAP_SEAMLESS = 0x884F;
enum GL_MAX_SERVER_WAIT_TIMEOUT = 0x9111;
enum GL_OBJECT_TYPE = 0x9112;
enum GL_SYNC_CONDITION = 0x9113;
enum GL_SYNC_STATUS = 0x9114;
enum GL_SYNC_FLAGS = 0x9115;
enum GL_SYNC_FENCE = 0x9116;
enum GL_SYNC_GPU_COMMANDS_COMPLETE = 0x9117;
enum GL_UNSIGNALED = 0x9118;
enum GL_SIGNALED = 0x9119;
enum GL_ALREADY_SIGNALED = 0x911A;
enum GL_TIMEOUT_EXPIRED = 0x911B;
enum GL_CONDITION_SATISFIED = 0x911C;
enum GL_WAIT_FAILED = 0x911D;
enum GL_TIMEOUT_IGNORED = 0xFFFFFFFFFFFFFFFF;
enum GL_SYNC_FLUSH_COMMANDS_BIT = 0x00000001;
enum GL_SAMPLE_POSITION = 0x8E50;
enum GL_SAMPLE_MASK = 0x8E51;
enum GL_SAMPLE_MASK_VALUE = 0x8E52;
enum GL_MAX_SAMPLE_MASK_WORDS = 0x8E59;
enum GL_TEXTURE_2D_MULTISAMPLE = 0x9100;
enum GL_PROXY_TEXTURE_2D_MULTISAMPLE = 0x9101;
enum GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102;
enum GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103;
enum GL_TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104;
enum GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105;
enum GL_TEXTURE_SAMPLES = 0x9106;
enum GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107;
enum GL_SAMPLER_2D_MULTISAMPLE = 0x9108;
enum GL_INT_SAMPLER_2D_MULTISAMPLE = 0x9109;
enum GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A;
enum GL_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B;
enum GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C;
enum GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;
enum GL_MAX_COLOR_TEXTURE_SAMPLES = 0x910E;
enum GL_MAX_DEPTH_TEXTURE_SAMPLES = 0x910F;
enum GL_MAX_INTEGER_SAMPLES = 0x9110;
alias PFNGLDRAWELEMENTSBASEVERTEXPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLint basevertex);
alias PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC = void function (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(void)* indices, GLint basevertex);
alias PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex);
alias PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC = void function (GLenum mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei drawcount, const(GLint)* basevertex);
alias PFNGLPROVOKINGVERTEXPROC = void function (GLenum mode);
alias PFNGLFENCESYNCPROC = __GLsync* function (GLenum condition, GLbitfield flags);
alias PFNGLISSYNCPROC = ubyte function (GLsync sync);
alias PFNGLDELETESYNCPROC = void function (GLsync sync);
alias PFNGLCLIENTWAITSYNCPROC = uint function (GLsync sync, GLbitfield flags, GLuint64 timeout);
alias PFNGLWAITSYNCPROC = void function (GLsync sync, GLbitfield flags, GLuint64 timeout);
alias PFNGLGETINTEGER64VPROC = void function (GLenum pname, GLint64* data);
alias PFNGLGETSYNCIVPROC = void function (GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);
alias PFNGLGETINTEGER64I_VPROC = void function (GLenum target, GLuint index, GLint64* data);
alias PFNGLGETBUFFERPARAMETERI64VPROC = void function (GLenum target, GLenum pname, GLint64* params);
alias PFNGLFRAMEBUFFERTEXTUREPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level);
alias PFNGLTEXIMAGE2DMULTISAMPLEPROC = void function (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
alias PFNGLTEXIMAGE3DMULTISAMPLEPROC = void function (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
alias PFNGLGETMULTISAMPLEFVPROC = void function (GLenum pname, GLuint index, GLfloat* val);
alias PFNGLSAMPLEMASKIPROC = void function (GLuint maskNumber, GLbitfield mask);
void glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLint basevertex);
void glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(void)* indices, GLint basevertex);
void glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex);
void glMultiDrawElementsBaseVertex (GLenum mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei drawcount, const(GLint)* basevertex);
void glProvokingVertex (GLenum mode);
GLsync glFenceSync (GLenum condition, GLbitfield flags);
GLboolean glIsSync (GLsync sync);
void glDeleteSync (GLsync sync);
GLenum glClientWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
void glWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
void glGetInteger64v (GLenum pname, GLint64* data);
void glGetSynciv (GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);
void glGetInteger64i_v (GLenum target, GLuint index, GLint64* data);
void glGetBufferParameteri64v (GLenum target, GLenum pname, GLint64* params);
void glFramebufferTexture (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glTexImage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTexImage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glGetMultisamplefv (GLenum pname, GLuint index, GLfloat* val);
void glSampleMaski (GLuint maskNumber, GLbitfield mask);

/* GL_VERSION_3_2 */

enum GL_VERSION_3_3 = 1;
enum GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;
enum GL_SRC1_COLOR = 0x88F9;
enum GL_ONE_MINUS_SRC1_COLOR = 0x88FA;
enum GL_ONE_MINUS_SRC1_ALPHA = 0x88FB;
enum GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88FC;
enum GL_ANY_SAMPLES_PASSED = 0x8C2F;
enum GL_SAMPLER_BINDING = 0x8919;
enum GL_RGB10_A2UI = 0x906F;
enum GL_TEXTURE_SWIZZLE_R = 0x8E42;
enum GL_TEXTURE_SWIZZLE_G = 0x8E43;
enum GL_TEXTURE_SWIZZLE_B = 0x8E44;
enum GL_TEXTURE_SWIZZLE_A = 0x8E45;
enum GL_TEXTURE_SWIZZLE_RGBA = 0x8E46;
enum GL_TIME_ELAPSED = 0x88BF;
enum GL_TIMESTAMP = 0x8E28;
enum GL_INT_2_10_10_10_REV = 0x8D9F;
alias PFNGLBINDFRAGDATALOCATIONINDEXEDPROC = void function (GLuint program, GLuint colorNumber, GLuint index, const(GLchar)* name);
alias PFNGLGETFRAGDATAINDEXPROC = int function (GLuint program, const(GLchar)* name);
alias PFNGLGENSAMPLERSPROC = void function (GLsizei count, GLuint* samplers);
alias PFNGLDELETESAMPLERSPROC = void function (GLsizei count, const(GLuint)* samplers);
alias PFNGLISSAMPLERPROC = ubyte function (GLuint sampler);
alias PFNGLBINDSAMPLERPROC = void function (GLuint unit, GLuint sampler);
alias PFNGLSAMPLERPARAMETERIPROC = void function (GLuint sampler, GLenum pname, GLint param);
alias PFNGLSAMPLERPARAMETERIVPROC = void function (GLuint sampler, GLenum pname, const(GLint)* param);
alias PFNGLSAMPLERPARAMETERFPROC = void function (GLuint sampler, GLenum pname, GLfloat param);
alias PFNGLSAMPLERPARAMETERFVPROC = void function (GLuint sampler, GLenum pname, const(GLfloat)* param);
alias PFNGLSAMPLERPARAMETERIIVPROC = void function (GLuint sampler, GLenum pname, const(GLint)* param);
alias PFNGLSAMPLERPARAMETERIUIVPROC = void function (GLuint sampler, GLenum pname, const(GLuint)* param);
alias PFNGLGETSAMPLERPARAMETERIVPROC = void function (GLuint sampler, GLenum pname, GLint* params);
alias PFNGLGETSAMPLERPARAMETERIIVPROC = void function (GLuint sampler, GLenum pname, GLint* params);
alias PFNGLGETSAMPLERPARAMETERFVPROC = void function (GLuint sampler, GLenum pname, GLfloat* params);
alias PFNGLGETSAMPLERPARAMETERIUIVPROC = void function (GLuint sampler, GLenum pname, GLuint* params);
alias PFNGLQUERYCOUNTERPROC = void function (GLuint id, GLenum target);
alias PFNGLGETQUERYOBJECTI64VPROC = void function (GLuint id, GLenum pname, GLint64* params);
alias PFNGLGETQUERYOBJECTUI64VPROC = void function (GLuint id, GLenum pname, GLuint64* params);
alias PFNGLVERTEXATTRIBDIVISORPROC = void function (GLuint index, GLuint divisor);
alias PFNGLVERTEXATTRIBP1UIPROC = void function (GLuint index, GLenum type, GLboolean normalized, GLuint value);
alias PFNGLVERTEXATTRIBP1UIVPROC = void function (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
alias PFNGLVERTEXATTRIBP2UIPROC = void function (GLuint index, GLenum type, GLboolean normalized, GLuint value);
alias PFNGLVERTEXATTRIBP2UIVPROC = void function (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
alias PFNGLVERTEXATTRIBP3UIPROC = void function (GLuint index, GLenum type, GLboolean normalized, GLuint value);
alias PFNGLVERTEXATTRIBP3UIVPROC = void function (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
alias PFNGLVERTEXATTRIBP4UIPROC = void function (GLuint index, GLenum type, GLboolean normalized, GLuint value);
alias PFNGLVERTEXATTRIBP4UIVPROC = void function (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
alias PFNGLVERTEXP2UIPROC = void function (GLenum type, GLuint value);
alias PFNGLVERTEXP2UIVPROC = void function (GLenum type, const(GLuint)* value);
alias PFNGLVERTEXP3UIPROC = void function (GLenum type, GLuint value);
alias PFNGLVERTEXP3UIVPROC = void function (GLenum type, const(GLuint)* value);
alias PFNGLVERTEXP4UIPROC = void function (GLenum type, GLuint value);
alias PFNGLVERTEXP4UIVPROC = void function (GLenum type, const(GLuint)* value);
alias PFNGLTEXCOORDP1UIPROC = void function (GLenum type, GLuint coords);
alias PFNGLTEXCOORDP1UIVPROC = void function (GLenum type, const(GLuint)* coords);
alias PFNGLTEXCOORDP2UIPROC = void function (GLenum type, GLuint coords);
alias PFNGLTEXCOORDP2UIVPROC = void function (GLenum type, const(GLuint)* coords);
alias PFNGLTEXCOORDP3UIPROC = void function (GLenum type, GLuint coords);
alias PFNGLTEXCOORDP3UIVPROC = void function (GLenum type, const(GLuint)* coords);
alias PFNGLTEXCOORDP4UIPROC = void function (GLenum type, GLuint coords);
alias PFNGLTEXCOORDP4UIVPROC = void function (GLenum type, const(GLuint)* coords);
alias PFNGLMULTITEXCOORDP1UIPROC = void function (GLenum texture, GLenum type, GLuint coords);
alias PFNGLMULTITEXCOORDP1UIVPROC = void function (GLenum texture, GLenum type, const(GLuint)* coords);
alias PFNGLMULTITEXCOORDP2UIPROC = void function (GLenum texture, GLenum type, GLuint coords);
alias PFNGLMULTITEXCOORDP2UIVPROC = void function (GLenum texture, GLenum type, const(GLuint)* coords);
alias PFNGLMULTITEXCOORDP3UIPROC = void function (GLenum texture, GLenum type, GLuint coords);
alias PFNGLMULTITEXCOORDP3UIVPROC = void function (GLenum texture, GLenum type, const(GLuint)* coords);
alias PFNGLMULTITEXCOORDP4UIPROC = void function (GLenum texture, GLenum type, GLuint coords);
alias PFNGLMULTITEXCOORDP4UIVPROC = void function (GLenum texture, GLenum type, const(GLuint)* coords);
alias PFNGLNORMALP3UIPROC = void function (GLenum type, GLuint coords);
alias PFNGLNORMALP3UIVPROC = void function (GLenum type, const(GLuint)* coords);
alias PFNGLCOLORP3UIPROC = void function (GLenum type, GLuint color);
alias PFNGLCOLORP3UIVPROC = void function (GLenum type, const(GLuint)* color);
alias PFNGLCOLORP4UIPROC = void function (GLenum type, GLuint color);
alias PFNGLCOLORP4UIVPROC = void function (GLenum type, const(GLuint)* color);
alias PFNGLSECONDARYCOLORP3UIPROC = void function (GLenum type, GLuint color);
alias PFNGLSECONDARYCOLORP3UIVPROC = void function (GLenum type, const(GLuint)* color);
void glBindFragDataLocationIndexed (GLuint program, GLuint colorNumber, GLuint index, const(GLchar)* name);
GLint glGetFragDataIndex (GLuint program, const(GLchar)* name);
void glGenSamplers (GLsizei count, GLuint* samplers);
void glDeleteSamplers (GLsizei count, const(GLuint)* samplers);
GLboolean glIsSampler (GLuint sampler);
void glBindSampler (GLuint unit, GLuint sampler);
void glSamplerParameteri (GLuint sampler, GLenum pname, GLint param);
void glSamplerParameteriv (GLuint sampler, GLenum pname, const(GLint)* param);
void glSamplerParameterf (GLuint sampler, GLenum pname, GLfloat param);
void glSamplerParameterfv (GLuint sampler, GLenum pname, const(GLfloat)* param);
void glSamplerParameterIiv (GLuint sampler, GLenum pname, const(GLint)* param);
void glSamplerParameterIuiv (GLuint sampler, GLenum pname, const(GLuint)* param);
void glGetSamplerParameteriv (GLuint sampler, GLenum pname, GLint* params);
void glGetSamplerParameterIiv (GLuint sampler, GLenum pname, GLint* params);
void glGetSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat* params);
void glGetSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint* params);
void glQueryCounter (GLuint id, GLenum target);
void glGetQueryObjecti64v (GLuint id, GLenum pname, GLint64* params);
void glGetQueryObjectui64v (GLuint id, GLenum pname, GLuint64* params);
void glVertexAttribDivisor (GLuint index, GLuint divisor);
void glVertexAttribP1ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP1uiv (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
void glVertexAttribP2ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP2uiv (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
void glVertexAttribP3ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP3uiv (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
void glVertexAttribP4ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP4uiv (GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
void glVertexP2ui (GLenum type, GLuint value);
void glVertexP2uiv (GLenum type, const(GLuint)* value);
void glVertexP3ui (GLenum type, GLuint value);
void glVertexP3uiv (GLenum type, const(GLuint)* value);
void glVertexP4ui (GLenum type, GLuint value);
void glVertexP4uiv (GLenum type, const(GLuint)* value);
void glTexCoordP1ui (GLenum type, GLuint coords);
void glTexCoordP1uiv (GLenum type, const(GLuint)* coords);
void glTexCoordP2ui (GLenum type, GLuint coords);
void glTexCoordP2uiv (GLenum type, const(GLuint)* coords);
void glTexCoordP3ui (GLenum type, GLuint coords);
void glTexCoordP3uiv (GLenum type, const(GLuint)* coords);
void glTexCoordP4ui (GLenum type, GLuint coords);
void glTexCoordP4uiv (GLenum type, const(GLuint)* coords);
void glMultiTexCoordP1ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP1uiv (GLenum texture, GLenum type, const(GLuint)* coords);
void glMultiTexCoordP2ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP2uiv (GLenum texture, GLenum type, const(GLuint)* coords);
void glMultiTexCoordP3ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP3uiv (GLenum texture, GLenum type, const(GLuint)* coords);
void glMultiTexCoordP4ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP4uiv (GLenum texture, GLenum type, const(GLuint)* coords);
void glNormalP3ui (GLenum type, GLuint coords);
void glNormalP3uiv (GLenum type, const(GLuint)* coords);
void glColorP3ui (GLenum type, GLuint color);
void glColorP3uiv (GLenum type, const(GLuint)* color);
void glColorP4ui (GLenum type, GLuint color);
void glColorP4uiv (GLenum type, const(GLuint)* color);
void glSecondaryColorP3ui (GLenum type, GLuint color);
void glSecondaryColorP3uiv (GLenum type, const(GLuint)* color);

/* GL_VERSION_3_3 */

enum GL_VERSION_4_0 = 1;
enum GL_SAMPLE_SHADING = 0x8C36;
enum GL_MIN_SAMPLE_SHADING_VALUE = 0x8C37;
enum GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E;
enum GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F;
enum GL_TEXTURE_CUBE_MAP_ARRAY = 0x9009;
enum GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A;
enum GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = 0x900B;
enum GL_SAMPLER_CUBE_MAP_ARRAY = 0x900C;
enum GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D;
enum GL_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E;
enum GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F;
enum GL_DRAW_INDIRECT_BUFFER = 0x8F3F;
enum GL_DRAW_INDIRECT_BUFFER_BINDING = 0x8F43;
enum GL_GEOMETRY_SHADER_INVOCATIONS = 0x887F;
enum GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A;
enum GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B;
enum GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C;
enum GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D;
enum GL_MAX_VERTEX_STREAMS = 0x8E71;
enum GL_DOUBLE_VEC2 = 0x8FFC;
enum GL_DOUBLE_VEC3 = 0x8FFD;
enum GL_DOUBLE_VEC4 = 0x8FFE;
enum GL_DOUBLE_MAT2 = 0x8F46;
enum GL_DOUBLE_MAT3 = 0x8F47;
enum GL_DOUBLE_MAT4 = 0x8F48;
enum GL_DOUBLE_MAT2x3 = 0x8F49;
enum GL_DOUBLE_MAT2x4 = 0x8F4A;
enum GL_DOUBLE_MAT3x2 = 0x8F4B;
enum GL_DOUBLE_MAT3x4 = 0x8F4C;
enum GL_DOUBLE_MAT4x2 = 0x8F4D;
enum GL_DOUBLE_MAT4x3 = 0x8F4E;
enum GL_ACTIVE_SUBROUTINES = 0x8DE5;
enum GL_ACTIVE_SUBROUTINE_UNIFORMS = 0x8DE6;
enum GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8E47;
enum GL_ACTIVE_SUBROUTINE_MAX_LENGTH = 0x8E48;
enum GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49;
enum GL_MAX_SUBROUTINES = 0x8DE7;
enum GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8DE8;
enum GL_NUM_COMPATIBLE_SUBROUTINES = 0x8E4A;
enum GL_COMPATIBLE_SUBROUTINES = 0x8E4B;
enum GL_PATCHES = 0x000E;
enum GL_PATCH_VERTICES = 0x8E72;
enum GL_PATCH_DEFAULT_INNER_LEVEL = 0x8E73;
enum GL_PATCH_DEFAULT_OUTER_LEVEL = 0x8E74;
enum GL_TESS_CONTROL_OUTPUT_VERTICES = 0x8E75;
enum GL_TESS_GEN_MODE = 0x8E76;
enum GL_TESS_GEN_SPACING = 0x8E77;
enum GL_TESS_GEN_VERTEX_ORDER = 0x8E78;
enum GL_TESS_GEN_POINT_MODE = 0x8E79;
enum GL_ISOLINES = 0x8E7A;
enum GL_FRACTIONAL_ODD = 0x8E7B;
enum GL_FRACTIONAL_EVEN = 0x8E7C;
enum GL_MAX_PATCH_VERTICES = 0x8E7D;
enum GL_MAX_TESS_GEN_LEVEL = 0x8E7E;
enum GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E7F;
enum GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E80;
enum GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8E81;
enum GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8E82;
enum GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8E83;
enum GL_MAX_TESS_PATCH_COMPONENTS = 0x8E84;
enum GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8E85;
enum GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8E86;
enum GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8E89;
enum GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8E8A;
enum GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886C;
enum GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886D;
enum GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E1E;
enum GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E1F;
enum GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84F0;
enum GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1;
enum GL_TESS_EVALUATION_SHADER = 0x8E87;
enum GL_TESS_CONTROL_SHADER = 0x8E88;
enum GL_TRANSFORM_FEEDBACK = 0x8E22;
enum GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23;
enum GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24;
enum GL_TRANSFORM_FEEDBACK_BINDING = 0x8E25;
enum GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8E70;
alias PFNGLMINSAMPLESHADINGPROC = void function (GLfloat value);
alias PFNGLBLENDEQUATIONIPROC = void function (GLuint buf, GLenum mode);
alias PFNGLBLENDEQUATIONSEPARATEIPROC = void function (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
alias PFNGLBLENDFUNCIPROC = void function (GLuint buf, GLenum src, GLenum dst);
alias PFNGLBLENDFUNCSEPARATEIPROC = void function (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
alias PFNGLDRAWARRAYSINDIRECTPROC = void function (GLenum mode, const(void)* indirect);
alias PFNGLDRAWELEMENTSINDIRECTPROC = void function (GLenum mode, GLenum type, const(void)* indirect);
alias PFNGLUNIFORM1DPROC = void function (GLint location, GLdouble x);
alias PFNGLUNIFORM2DPROC = void function (GLint location, GLdouble x, GLdouble y);
alias PFNGLUNIFORM3DPROC = void function (GLint location, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLUNIFORM4DPROC = void function (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLUNIFORM1DVPROC = void function (GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLUNIFORM2DVPROC = void function (GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLUNIFORM3DVPROC = void function (GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLUNIFORM4DVPROC = void function (GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX2DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX3DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX4DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX2X3DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX2X4DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX3X2DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX3X4DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX4X2DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLUNIFORMMATRIX4X3DVPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLGETUNIFORMDVPROC = void function (GLuint program, GLint location, GLdouble* params);
alias PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC = int function (GLuint program, GLenum shadertype, const(GLchar)* name);
alias PFNGLGETSUBROUTINEINDEXPROC = uint function (GLuint program, GLenum shadertype, const(GLchar)* name);
alias PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC = void function (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values);
alias PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC = void function (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
alias PFNGLGETACTIVESUBROUTINENAMEPROC = void function (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
alias PFNGLUNIFORMSUBROUTINESUIVPROC = void function (GLenum shadertype, GLsizei count, const(GLuint)* indices);
alias PFNGLGETUNIFORMSUBROUTINEUIVPROC = void function (GLenum shadertype, GLint location, GLuint* params);
alias PFNGLGETPROGRAMSTAGEIVPROC = void function (GLuint program, GLenum shadertype, GLenum pname, GLint* values);
alias PFNGLPATCHPARAMETERIPROC = void function (GLenum pname, GLint value);
alias PFNGLPATCHPARAMETERFVPROC = void function (GLenum pname, const(GLfloat)* values);
alias PFNGLBINDTRANSFORMFEEDBACKPROC = void function (GLenum target, GLuint id);
alias PFNGLDELETETRANSFORMFEEDBACKSPROC = void function (GLsizei n, const(GLuint)* ids);
alias PFNGLGENTRANSFORMFEEDBACKSPROC = void function (GLsizei n, GLuint* ids);
alias PFNGLISTRANSFORMFEEDBACKPROC = ubyte function (GLuint id);
alias PFNGLPAUSETRANSFORMFEEDBACKPROC = void function ();
alias PFNGLRESUMETRANSFORMFEEDBACKPROC = void function ();
alias PFNGLDRAWTRANSFORMFEEDBACKPROC = void function (GLenum mode, GLuint id);
alias PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC = void function (GLenum mode, GLuint id, GLuint stream);
alias PFNGLBEGINQUERYINDEXEDPROC = void function (GLenum target, GLuint index, GLuint id);
alias PFNGLENDQUERYINDEXEDPROC = void function (GLenum target, GLuint index);
alias PFNGLGETQUERYINDEXEDIVPROC = void function (GLenum target, GLuint index, GLenum pname, GLint* params);
void glMinSampleShading (GLfloat value);
void glBlendEquationi (GLuint buf, GLenum mode);
void glBlendEquationSeparatei (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendFunci (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparatei (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glDrawArraysIndirect (GLenum mode, const(void)* indirect);
void glDrawElementsIndirect (GLenum mode, GLenum type, const(void)* indirect);
void glUniform1d (GLint location, GLdouble x);
void glUniform2d (GLint location, GLdouble x, GLdouble y);
void glUniform3d (GLint location, GLdouble x, GLdouble y, GLdouble z);
void glUniform4d (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glUniform1dv (GLint location, GLsizei count, const(GLdouble)* value);
void glUniform2dv (GLint location, GLsizei count, const(GLdouble)* value);
void glUniform3dv (GLint location, GLsizei count, const(GLdouble)* value);
void glUniform4dv (GLint location, GLsizei count, const(GLdouble)* value);
void glUniformMatrix2dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix3dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix4dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix2x3dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix2x4dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix3x2dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix3x4dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix4x2dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glUniformMatrix4x3dv (GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glGetUniformdv (GLuint program, GLint location, GLdouble* params);
GLint glGetSubroutineUniformLocation (GLuint program, GLenum shadertype, const(GLchar)* name);
GLuint glGetSubroutineIndex (GLuint program, GLenum shadertype, const(GLchar)* name);
void glGetActiveSubroutineUniformiv (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values);
void glGetActiveSubroutineUniformName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
void glGetActiveSubroutineName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
void glUniformSubroutinesuiv (GLenum shadertype, GLsizei count, const(GLuint)* indices);
void glGetUniformSubroutineuiv (GLenum shadertype, GLint location, GLuint* params);
void glGetProgramStageiv (GLuint program, GLenum shadertype, GLenum pname, GLint* values);
void glPatchParameteri (GLenum pname, GLint value);
void glPatchParameterfv (GLenum pname, const(GLfloat)* values);
void glBindTransformFeedback (GLenum target, GLuint id);
void glDeleteTransformFeedbacks (GLsizei n, const(GLuint)* ids);
void glGenTransformFeedbacks (GLsizei n, GLuint* ids);
GLboolean glIsTransformFeedback (GLuint id);
void glPauseTransformFeedback ();
void glResumeTransformFeedback ();
void glDrawTransformFeedback (GLenum mode, GLuint id);
void glDrawTransformFeedbackStream (GLenum mode, GLuint id, GLuint stream);
void glBeginQueryIndexed (GLenum target, GLuint index, GLuint id);
void glEndQueryIndexed (GLenum target, GLuint index);
void glGetQueryIndexediv (GLenum target, GLuint index, GLenum pname, GLint* params);

/* GL_VERSION_4_0 */

enum GL_VERSION_4_1 = 1;
enum GL_FIXED = 0x140C;
enum GL_IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
enum GL_IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
enum GL_LOW_FLOAT = 0x8DF0;
enum GL_MEDIUM_FLOAT = 0x8DF1;
enum GL_HIGH_FLOAT = 0x8DF2;
enum GL_LOW_INT = 0x8DF3;
enum GL_MEDIUM_INT = 0x8DF4;
enum GL_HIGH_INT = 0x8DF5;
enum GL_SHADER_COMPILER = 0x8DFA;
enum GL_SHADER_BINARY_FORMATS = 0x8DF8;
enum GL_NUM_SHADER_BINARY_FORMATS = 0x8DF9;
enum GL_MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
enum GL_MAX_VARYING_VECTORS = 0x8DFC;
enum GL_MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
enum GL_RGB565 = 0x8D62;
enum GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257;
enum GL_PROGRAM_BINARY_LENGTH = 0x8741;
enum GL_NUM_PROGRAM_BINARY_FORMATS = 0x87FE;
enum GL_PROGRAM_BINARY_FORMATS = 0x87FF;
enum GL_VERTEX_SHADER_BIT = 0x00000001;
enum GL_FRAGMENT_SHADER_BIT = 0x00000002;
enum GL_GEOMETRY_SHADER_BIT = 0x00000004;
enum GL_TESS_CONTROL_SHADER_BIT = 0x00000008;
enum GL_TESS_EVALUATION_SHADER_BIT = 0x00000010;
enum GL_ALL_SHADER_BITS = 0xFFFFFFFF;
enum GL_PROGRAM_SEPARABLE = 0x8258;
enum GL_ACTIVE_PROGRAM = 0x8259;
enum GL_PROGRAM_PIPELINE_BINDING = 0x825A;
enum GL_MAX_VIEWPORTS = 0x825B;
enum GL_VIEWPORT_SUBPIXEL_BITS = 0x825C;
enum GL_VIEWPORT_BOUNDS_RANGE = 0x825D;
enum GL_LAYER_PROVOKING_VERTEX = 0x825E;
enum GL_VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F;
enum GL_UNDEFINED_VERTEX = 0x8260;
alias PFNGLRELEASESHADERCOMPILERPROC = void function ();
alias PFNGLSHADERBINARYPROC = void function (GLsizei count, const(GLuint)* shaders, GLenum binaryformat, const(void)* binary, GLsizei length);
alias PFNGLGETSHADERPRECISIONFORMATPROC = void function (GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision);
alias PFNGLDEPTHRANGEFPROC = void function (GLfloat n, GLfloat f);
alias PFNGLCLEARDEPTHFPROC = void function (GLfloat d);
alias PFNGLGETPROGRAMBINARYPROC = void function (GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, void* binary);
alias PFNGLPROGRAMBINARYPROC = void function (GLuint program, GLenum binaryFormat, const(void)* binary, GLsizei length);
alias PFNGLPROGRAMPARAMETERIPROC = void function (GLuint program, GLenum pname, GLint value);
alias PFNGLUSEPROGRAMSTAGESPROC = void function (GLuint pipeline, GLbitfield stages, GLuint program);
alias PFNGLACTIVESHADERPROGRAMPROC = void function (GLuint pipeline, GLuint program);
alias PFNGLCREATESHADERPROGRAMVPROC = uint function (GLenum type, GLsizei count, const(GLchar*)* strings);
alias PFNGLBINDPROGRAMPIPELINEPROC = void function (GLuint pipeline);
alias PFNGLDELETEPROGRAMPIPELINESPROC = void function (GLsizei n, const(GLuint)* pipelines);
alias PFNGLGENPROGRAMPIPELINESPROC = void function (GLsizei n, GLuint* pipelines);
alias PFNGLISPROGRAMPIPELINEPROC = ubyte function (GLuint pipeline);
alias PFNGLGETPROGRAMPIPELINEIVPROC = void function (GLuint pipeline, GLenum pname, GLint* params);
alias PFNGLPROGRAMUNIFORM1IPROC = void function (GLuint program, GLint location, GLint v0);
alias PFNGLPROGRAMUNIFORM1IVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM1FPROC = void function (GLuint program, GLint location, GLfloat v0);
alias PFNGLPROGRAMUNIFORM1FVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM1DPROC = void function (GLuint program, GLint location, GLdouble v0);
alias PFNGLPROGRAMUNIFORM1DVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM1UIPROC = void function (GLuint program, GLint location, GLuint v0);
alias PFNGLPROGRAMUNIFORM1UIVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORM2IPROC = void function (GLuint program, GLint location, GLint v0, GLint v1);
alias PFNGLPROGRAMUNIFORM2IVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM2FPROC = void function (GLuint program, GLint location, GLfloat v0, GLfloat v1);
alias PFNGLPROGRAMUNIFORM2FVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM2DPROC = void function (GLuint program, GLint location, GLdouble v0, GLdouble v1);
alias PFNGLPROGRAMUNIFORM2DVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM2UIPROC = void function (GLuint program, GLint location, GLuint v0, GLuint v1);
alias PFNGLPROGRAMUNIFORM2UIVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORM3IPROC = void function (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
alias PFNGLPROGRAMUNIFORM3IVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM3FPROC = void function (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
alias PFNGLPROGRAMUNIFORM3FVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM3DPROC = void function (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2);
alias PFNGLPROGRAMUNIFORM3DVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM3UIPROC = void function (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
alias PFNGLPROGRAMUNIFORM3UIVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORM4IPROC = void function (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
alias PFNGLPROGRAMUNIFORM4IVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM4FPROC = void function (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
alias PFNGLPROGRAMUNIFORM4FVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM4DPROC = void function (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3);
alias PFNGLPROGRAMUNIFORM4DVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM4UIPROC = void function (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
alias PFNGLPROGRAMUNIFORM4UIVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLVALIDATEPROGRAMPIPELINEPROC = void function (GLuint pipeline);
alias PFNGLGETPROGRAMPIPELINEINFOLOGPROC = void function (GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
alias PFNGLVERTEXATTRIBL1DPROC = void function (GLuint index, GLdouble x);
alias PFNGLVERTEXATTRIBL2DPROC = void function (GLuint index, GLdouble x, GLdouble y);
alias PFNGLVERTEXATTRIBL3DPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLVERTEXATTRIBL4DPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLVERTEXATTRIBL1DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBL2DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBL3DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBL4DVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBLPOINTERPROC = void function (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLGETVERTEXATTRIBLDVPROC = void function (GLuint index, GLenum pname, GLdouble* params);
alias PFNGLVIEWPORTARRAYVPROC = void function (GLuint first, GLsizei count, const(GLfloat)* v);
alias PFNGLVIEWPORTINDEXEDFPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
alias PFNGLVIEWPORTINDEXEDFVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLSCISSORARRAYVPROC = void function (GLuint first, GLsizei count, const(GLint)* v);
alias PFNGLSCISSORINDEXEDPROC = void function (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
alias PFNGLSCISSORINDEXEDVPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLDEPTHRANGEARRAYVPROC = void function (GLuint first, GLsizei count, const(GLdouble)* v);
alias PFNGLDEPTHRANGEINDEXEDPROC = void function (GLuint index, GLdouble n, GLdouble f);
alias PFNGLGETFLOATI_VPROC = void function (GLenum target, GLuint index, GLfloat* data);
alias PFNGLGETDOUBLEI_VPROC = void function (GLenum target, GLuint index, GLdouble* data);
void glReleaseShaderCompiler ();
void glShaderBinary (GLsizei count, const(GLuint)* shaders, GLenum binaryformat, const(void)* binary, GLsizei length);
void glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision);
void glDepthRangef (GLfloat n, GLfloat f);
void glClearDepthf (GLfloat d);
void glGetProgramBinary (GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, void* binary);
void glProgramBinary (GLuint program, GLenum binaryFormat, const(void)* binary, GLsizei length);
void glProgramParameteri (GLuint program, GLenum pname, GLint value);
void glUseProgramStages (GLuint pipeline, GLbitfield stages, GLuint program);
void glActiveShaderProgram (GLuint pipeline, GLuint program);
GLuint glCreateShaderProgramv (GLenum type, GLsizei count, const(GLchar*)* strings);
void glBindProgramPipeline (GLuint pipeline);
void glDeleteProgramPipelines (GLsizei n, const(GLuint)* pipelines);
void glGenProgramPipelines (GLsizei n, GLuint* pipelines);
GLboolean glIsProgramPipeline (GLuint pipeline);
void glGetProgramPipelineiv (GLuint pipeline, GLenum pname, GLint* params);
void glProgramUniform1i (GLuint program, GLint location, GLint v0);
void glProgramUniform1iv (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform1f (GLuint program, GLint location, GLfloat v0);
void glProgramUniform1fv (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform1d (GLuint program, GLint location, GLdouble v0);
void glProgramUniform1dv (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform1ui (GLuint program, GLint location, GLuint v0);
void glProgramUniform1uiv (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniform2i (GLuint program, GLint location, GLint v0, GLint v1);
void glProgramUniform2iv (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform2f (GLuint program, GLint location, GLfloat v0, GLfloat v1);
void glProgramUniform2fv (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform2d (GLuint program, GLint location, GLdouble v0, GLdouble v1);
void glProgramUniform2dv (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform2ui (GLuint program, GLint location, GLuint v0, GLuint v1);
void glProgramUniform2uiv (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniform3i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
void glProgramUniform3iv (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform3f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glProgramUniform3fv (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform3d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2);
void glProgramUniform3dv (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform3ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
void glProgramUniform3uiv (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniform4i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glProgramUniform4iv (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform4f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glProgramUniform4fv (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform4d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3);
void glProgramUniform4dv (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform4ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glProgramUniform4uiv (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniformMatrix2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix2x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix3x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix2x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix4x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix3x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix4x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix2x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix3x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix2x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix4x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix3x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix4x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glValidateProgramPipeline (GLuint pipeline);
void glGetProgramPipelineInfoLog (GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
void glVertexAttribL1d (GLuint index, GLdouble x);
void glVertexAttribL2d (GLuint index, GLdouble x, GLdouble y);
void glVertexAttribL3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttribL4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttribL1dv (GLuint index, const(GLdouble)* v);
void glVertexAttribL2dv (GLuint index, const(GLdouble)* v);
void glVertexAttribL3dv (GLuint index, const(GLdouble)* v);
void glVertexAttribL4dv (GLuint index, const(GLdouble)* v);
void glVertexAttribLPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glGetVertexAttribLdv (GLuint index, GLenum pname, GLdouble* params);
void glViewportArrayv (GLuint first, GLsizei count, const(GLfloat)* v);
void glViewportIndexedf (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
void glViewportIndexedfv (GLuint index, const(GLfloat)* v);
void glScissorArrayv (GLuint first, GLsizei count, const(GLint)* v);
void glScissorIndexed (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
void glScissorIndexedv (GLuint index, const(GLint)* v);
void glDepthRangeArrayv (GLuint first, GLsizei count, const(GLdouble)* v);
void glDepthRangeIndexed (GLuint index, GLdouble n, GLdouble f);
void glGetFloati_v (GLenum target, GLuint index, GLfloat* data);
void glGetDoublei_v (GLenum target, GLuint index, GLdouble* data);

/* GL_VERSION_4_1 */

enum GL_VERSION_4_2 = 1;
enum GL_UNPACK_COMPRESSED_BLOCK_WIDTH = 0x9127;
enum GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128;
enum GL_UNPACK_COMPRESSED_BLOCK_DEPTH = 0x9129;
enum GL_UNPACK_COMPRESSED_BLOCK_SIZE = 0x912A;
enum GL_PACK_COMPRESSED_BLOCK_WIDTH = 0x912B;
enum GL_PACK_COMPRESSED_BLOCK_HEIGHT = 0x912C;
enum GL_PACK_COMPRESSED_BLOCK_DEPTH = 0x912D;
enum GL_PACK_COMPRESSED_BLOCK_SIZE = 0x912E;
enum GL_NUM_SAMPLE_COUNTS = 0x9380;
enum GL_MIN_MAP_BUFFER_ALIGNMENT = 0x90BC;
enum GL_ATOMIC_COUNTER_BUFFER = 0x92C0;
enum GL_ATOMIC_COUNTER_BUFFER_BINDING = 0x92C1;
enum GL_ATOMIC_COUNTER_BUFFER_START = 0x92C2;
enum GL_ATOMIC_COUNTER_BUFFER_SIZE = 0x92C3;
enum GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4;
enum GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5;
enum GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6;
enum GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7;
enum GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8;
enum GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9;
enum GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA;
enum GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB;
enum GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC;
enum GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD;
enum GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE;
enum GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF;
enum GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0;
enum GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1;
enum GL_MAX_VERTEX_ATOMIC_COUNTERS = 0x92D2;
enum GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3;
enum GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4;
enum GL_MAX_GEOMETRY_ATOMIC_COUNTERS = 0x92D5;
enum GL_MAX_FRAGMENT_ATOMIC_COUNTERS = 0x92D6;
enum GL_MAX_COMBINED_ATOMIC_COUNTERS = 0x92D7;
enum GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8;
enum GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC;
enum GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = 0x92D9;
enum GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA;
enum GL_UNSIGNED_INT_ATOMIC_COUNTER = 0x92DB;
enum GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001;
enum GL_ELEMENT_ARRAY_BARRIER_BIT = 0x00000002;
enum GL_UNIFORM_BARRIER_BIT = 0x00000004;
enum GL_TEXTURE_FETCH_BARRIER_BIT = 0x00000008;
enum GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020;
enum GL_COMMAND_BARRIER_BIT = 0x00000040;
enum GL_PIXEL_BUFFER_BARRIER_BIT = 0x00000080;
enum GL_TEXTURE_UPDATE_BARRIER_BIT = 0x00000100;
enum GL_BUFFER_UPDATE_BARRIER_BIT = 0x00000200;
enum GL_FRAMEBUFFER_BARRIER_BIT = 0x00000400;
enum GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800;
enum GL_ATOMIC_COUNTER_BARRIER_BIT = 0x00001000;
enum GL_ALL_BARRIER_BITS = 0xFFFFFFFF;
enum GL_MAX_IMAGE_UNITS = 0x8F38;
enum GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39;
enum GL_IMAGE_BINDING_NAME = 0x8F3A;
enum GL_IMAGE_BINDING_LEVEL = 0x8F3B;
enum GL_IMAGE_BINDING_LAYERED = 0x8F3C;
enum GL_IMAGE_BINDING_LAYER = 0x8F3D;
enum GL_IMAGE_BINDING_ACCESS = 0x8F3E;
enum GL_IMAGE_1D = 0x904C;
enum GL_IMAGE_2D = 0x904D;
enum GL_IMAGE_3D = 0x904E;
enum GL_IMAGE_2D_RECT = 0x904F;
enum GL_IMAGE_CUBE = 0x9050;
enum GL_IMAGE_BUFFER = 0x9051;
enum GL_IMAGE_1D_ARRAY = 0x9052;
enum GL_IMAGE_2D_ARRAY = 0x9053;
enum GL_IMAGE_CUBE_MAP_ARRAY = 0x9054;
enum GL_IMAGE_2D_MULTISAMPLE = 0x9055;
enum GL_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9056;
enum GL_INT_IMAGE_1D = 0x9057;
enum GL_INT_IMAGE_2D = 0x9058;
enum GL_INT_IMAGE_3D = 0x9059;
enum GL_INT_IMAGE_2D_RECT = 0x905A;
enum GL_INT_IMAGE_CUBE = 0x905B;
enum GL_INT_IMAGE_BUFFER = 0x905C;
enum GL_INT_IMAGE_1D_ARRAY = 0x905D;
enum GL_INT_IMAGE_2D_ARRAY = 0x905E;
enum GL_INT_IMAGE_CUBE_MAP_ARRAY = 0x905F;
enum GL_INT_IMAGE_2D_MULTISAMPLE = 0x9060;
enum GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061;
enum GL_UNSIGNED_INT_IMAGE_1D = 0x9062;
enum GL_UNSIGNED_INT_IMAGE_2D = 0x9063;
enum GL_UNSIGNED_INT_IMAGE_3D = 0x9064;
enum GL_UNSIGNED_INT_IMAGE_2D_RECT = 0x9065;
enum GL_UNSIGNED_INT_IMAGE_CUBE = 0x9066;
enum GL_UNSIGNED_INT_IMAGE_BUFFER = 0x9067;
enum GL_UNSIGNED_INT_IMAGE_1D_ARRAY = 0x9068;
enum GL_UNSIGNED_INT_IMAGE_2D_ARRAY = 0x9069;
enum GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A;
enum GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B;
enum GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C;
enum GL_MAX_IMAGE_SAMPLES = 0x906D;
enum GL_IMAGE_BINDING_FORMAT = 0x906E;
enum GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90C7;
enum GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90C8;
enum GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90C9;
enum GL_MAX_VERTEX_IMAGE_UNIFORMS = 0x90CA;
enum GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90CB;
enum GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90CC;
enum GL_MAX_GEOMETRY_IMAGE_UNIFORMS = 0x90CD;
enum GL_MAX_FRAGMENT_IMAGE_UNIFORMS = 0x90CE;
enum GL_MAX_COMBINED_IMAGE_UNIFORMS = 0x90CF;
enum GL_COMPRESSED_RGBA_BPTC_UNORM = 0x8E8C;
enum GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 0x8E8D;
enum GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 0x8E8E;
enum GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = 0x8E8F;
enum GL_TEXTURE_IMMUTABLE_FORMAT = 0x912F;
alias PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC = void function (GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance);
alias PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLuint baseinstance);
alias PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance);
alias PFNGLGETINTERNALFORMATIVPROC = void function (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params);
alias PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC = void function (GLuint program, GLuint bufferIndex, GLenum pname, GLint* params);
alias PFNGLBINDIMAGETEXTUREPROC = void function (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
alias PFNGLMEMORYBARRIERPROC = void function (GLbitfield barriers);
alias PFNGLTEXSTORAGE1DPROC = void function (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
alias PFNGLTEXSTORAGE2DPROC = void function (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLTEXSTORAGE3DPROC = void function (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
alias PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC = void function (GLenum mode, GLuint id, GLsizei instancecount);
alias PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC = void function (GLenum mode, GLuint id, GLuint stream, GLsizei instancecount);
void glDrawArraysInstancedBaseInstance (GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance);
void glDrawElementsInstancedBaseInstance (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLuint baseinstance);
void glDrawElementsInstancedBaseVertexBaseInstance (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance);
void glGetInternalformativ (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params);
void glGetActiveAtomicCounterBufferiv (GLuint program, GLuint bufferIndex, GLenum pname, GLint* params);
void glBindImageTexture (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
void glMemoryBarrier (GLbitfield barriers);
void glTexStorage1D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTexStorage2D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTexStorage3D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void glDrawTransformFeedbackInstanced (GLenum mode, GLuint id, GLsizei instancecount);
void glDrawTransformFeedbackStreamInstanced (GLenum mode, GLuint id, GLuint stream, GLsizei instancecount);

/* GL_VERSION_4_2 */

enum GL_VERSION_4_3 = 1;
alias GLDEBUGPROC = void function (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, const(void)* userParam);
enum GL_NUM_SHADING_LANGUAGE_VERSIONS = 0x82E9;
enum GL_VERTEX_ATTRIB_ARRAY_LONG = 0x874E;
enum GL_COMPRESSED_RGB8_ETC2 = 0x9274;
enum GL_COMPRESSED_SRGB8_ETC2 = 0x9275;
enum GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276;
enum GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277;
enum GL_COMPRESSED_RGBA8_ETC2_EAC = 0x9278;
enum GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279;
enum GL_COMPRESSED_R11_EAC = 0x9270;
enum GL_COMPRESSED_SIGNED_R11_EAC = 0x9271;
enum GL_COMPRESSED_RG11_EAC = 0x9272;
enum GL_COMPRESSED_SIGNED_RG11_EAC = 0x9273;
enum GL_PRIMITIVE_RESTART_FIXED_INDEX = 0x8D69;
enum GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A;
enum GL_MAX_ELEMENT_INDEX = 0x8D6B;
enum GL_COMPUTE_SHADER = 0x91B9;
enum GL_MAX_COMPUTE_UNIFORM_BLOCKS = 0x91BB;
enum GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC;
enum GL_MAX_COMPUTE_IMAGE_UNIFORMS = 0x91BD;
enum GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262;
enum GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263;
enum GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264;
enum GL_MAX_COMPUTE_ATOMIC_COUNTERS = 0x8265;
enum GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266;
enum GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 0x90EB;
enum GL_MAX_COMPUTE_WORK_GROUP_COUNT = 0x91BE;
enum GL_MAX_COMPUTE_WORK_GROUP_SIZE = 0x91BF;
enum GL_COMPUTE_WORK_GROUP_SIZE = 0x8267;
enum GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC;
enum GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED;
enum GL_DISPATCH_INDIRECT_BUFFER = 0x90EE;
enum GL_DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF;
enum GL_DEBUG_OUTPUT_SYNCHRONOUS = 0x8242;
enum GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243;
enum GL_DEBUG_CALLBACK_FUNCTION = 0x8244;
enum GL_DEBUG_CALLBACK_USER_PARAM = 0x8245;
enum GL_DEBUG_SOURCE_API = 0x8246;
enum GL_DEBUG_SOURCE_WINDOW_SYSTEM = 0x8247;
enum GL_DEBUG_SOURCE_SHADER_COMPILER = 0x8248;
enum GL_DEBUG_SOURCE_THIRD_PARTY = 0x8249;
enum GL_DEBUG_SOURCE_APPLICATION = 0x824A;
enum GL_DEBUG_SOURCE_OTHER = 0x824B;
enum GL_DEBUG_TYPE_ERROR = 0x824C;
enum GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824D;
enum GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 0x824E;
enum GL_DEBUG_TYPE_PORTABILITY = 0x824F;
enum GL_DEBUG_TYPE_PERFORMANCE = 0x8250;
enum GL_DEBUG_TYPE_OTHER = 0x8251;
enum GL_MAX_DEBUG_MESSAGE_LENGTH = 0x9143;
enum GL_MAX_DEBUG_LOGGED_MESSAGES = 0x9144;
enum GL_DEBUG_LOGGED_MESSAGES = 0x9145;
enum GL_DEBUG_SEVERITY_HIGH = 0x9146;
enum GL_DEBUG_SEVERITY_MEDIUM = 0x9147;
enum GL_DEBUG_SEVERITY_LOW = 0x9148;
enum GL_DEBUG_TYPE_MARKER = 0x8268;
enum GL_DEBUG_TYPE_PUSH_GROUP = 0x8269;
enum GL_DEBUG_TYPE_POP_GROUP = 0x826A;
enum GL_DEBUG_SEVERITY_NOTIFICATION = 0x826B;
enum GL_MAX_DEBUG_GROUP_STACK_DEPTH = 0x826C;
enum GL_DEBUG_GROUP_STACK_DEPTH = 0x826D;
enum GL_BUFFER = 0x82E0;
enum GL_SHADER = 0x82E1;
enum GL_PROGRAM = 0x82E2;
enum GL_QUERY = 0x82E3;
enum GL_PROGRAM_PIPELINE = 0x82E4;
enum GL_SAMPLER = 0x82E6;
enum GL_MAX_LABEL_LENGTH = 0x82E8;
enum GL_DEBUG_OUTPUT = 0x92E0;
enum GL_CONTEXT_FLAG_DEBUG_BIT = 0x00000002;
enum GL_MAX_UNIFORM_LOCATIONS = 0x826E;
enum GL_FRAMEBUFFER_DEFAULT_WIDTH = 0x9310;
enum GL_FRAMEBUFFER_DEFAULT_HEIGHT = 0x9311;
enum GL_FRAMEBUFFER_DEFAULT_LAYERS = 0x9312;
enum GL_FRAMEBUFFER_DEFAULT_SAMPLES = 0x9313;
enum GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314;
enum GL_MAX_FRAMEBUFFER_WIDTH = 0x9315;
enum GL_MAX_FRAMEBUFFER_HEIGHT = 0x9316;
enum GL_MAX_FRAMEBUFFER_LAYERS = 0x9317;
enum GL_MAX_FRAMEBUFFER_SAMPLES = 0x9318;
enum GL_INTERNALFORMAT_SUPPORTED = 0x826F;
enum GL_INTERNALFORMAT_PREFERRED = 0x8270;
enum GL_INTERNALFORMAT_RED_SIZE = 0x8271;
enum GL_INTERNALFORMAT_GREEN_SIZE = 0x8272;
enum GL_INTERNALFORMAT_BLUE_SIZE = 0x8273;
enum GL_INTERNALFORMAT_ALPHA_SIZE = 0x8274;
enum GL_INTERNALFORMAT_DEPTH_SIZE = 0x8275;
enum GL_INTERNALFORMAT_STENCIL_SIZE = 0x8276;
enum GL_INTERNALFORMAT_SHARED_SIZE = 0x8277;
enum GL_INTERNALFORMAT_RED_TYPE = 0x8278;
enum GL_INTERNALFORMAT_GREEN_TYPE = 0x8279;
enum GL_INTERNALFORMAT_BLUE_TYPE = 0x827A;
enum GL_INTERNALFORMAT_ALPHA_TYPE = 0x827B;
enum GL_INTERNALFORMAT_DEPTH_TYPE = 0x827C;
enum GL_INTERNALFORMAT_STENCIL_TYPE = 0x827D;
enum GL_MAX_WIDTH = 0x827E;
enum GL_MAX_HEIGHT = 0x827F;
enum GL_MAX_DEPTH = 0x8280;
enum GL_MAX_LAYERS = 0x8281;
enum GL_MAX_COMBINED_DIMENSIONS = 0x8282;
enum GL_COLOR_COMPONENTS = 0x8283;
enum GL_DEPTH_COMPONENTS = 0x8284;
enum GL_STENCIL_COMPONENTS = 0x8285;
enum GL_COLOR_RENDERABLE = 0x8286;
enum GL_DEPTH_RENDERABLE = 0x8287;
enum GL_STENCIL_RENDERABLE = 0x8288;
enum GL_FRAMEBUFFER_RENDERABLE = 0x8289;
enum GL_FRAMEBUFFER_RENDERABLE_LAYERED = 0x828A;
enum GL_FRAMEBUFFER_BLEND = 0x828B;
enum GL_READ_PIXELS = 0x828C;
enum GL_READ_PIXELS_FORMAT = 0x828D;
enum GL_READ_PIXELS_TYPE = 0x828E;
enum GL_TEXTURE_IMAGE_FORMAT = 0x828F;
enum GL_TEXTURE_IMAGE_TYPE = 0x8290;
enum GL_GET_TEXTURE_IMAGE_FORMAT = 0x8291;
enum GL_GET_TEXTURE_IMAGE_TYPE = 0x8292;
enum GL_MIPMAP = 0x8293;
enum GL_MANUAL_GENERATE_MIPMAP = 0x8294;
enum GL_AUTO_GENERATE_MIPMAP = 0x8295;
enum GL_COLOR_ENCODING = 0x8296;
enum GL_SRGB_READ = 0x8297;
enum GL_SRGB_WRITE = 0x8298;
enum GL_FILTER = 0x829A;
enum GL_VERTEX_TEXTURE = 0x829B;
enum GL_TESS_CONTROL_TEXTURE = 0x829C;
enum GL_TESS_EVALUATION_TEXTURE = 0x829D;
enum GL_GEOMETRY_TEXTURE = 0x829E;
enum GL_FRAGMENT_TEXTURE = 0x829F;
enum GL_COMPUTE_TEXTURE = 0x82A0;
enum GL_TEXTURE_SHADOW = 0x82A1;
enum GL_TEXTURE_GATHER = 0x82A2;
enum GL_TEXTURE_GATHER_SHADOW = 0x82A3;
enum GL_SHADER_IMAGE_LOAD = 0x82A4;
enum GL_SHADER_IMAGE_STORE = 0x82A5;
enum GL_SHADER_IMAGE_ATOMIC = 0x82A6;
enum GL_IMAGE_TEXEL_SIZE = 0x82A7;
enum GL_IMAGE_COMPATIBILITY_CLASS = 0x82A8;
enum GL_IMAGE_PIXEL_FORMAT = 0x82A9;
enum GL_IMAGE_PIXEL_TYPE = 0x82AA;
enum GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82AC;
enum GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82AD;
enum GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82AE;
enum GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF;
enum GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82B1;
enum GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82B2;
enum GL_TEXTURE_COMPRESSED_BLOCK_SIZE = 0x82B3;
enum GL_CLEAR_BUFFER = 0x82B4;
enum GL_TEXTURE_VIEW = 0x82B5;
enum GL_VIEW_COMPATIBILITY_CLASS = 0x82B6;
enum GL_FULL_SUPPORT = 0x82B7;
enum GL_CAVEAT_SUPPORT = 0x82B8;
enum GL_IMAGE_CLASS_4_X_32 = 0x82B9;
enum GL_IMAGE_CLASS_2_X_32 = 0x82BA;
enum GL_IMAGE_CLASS_1_X_32 = 0x82BB;
enum GL_IMAGE_CLASS_4_X_16 = 0x82BC;
enum GL_IMAGE_CLASS_2_X_16 = 0x82BD;
enum GL_IMAGE_CLASS_1_X_16 = 0x82BE;
enum GL_IMAGE_CLASS_4_X_8 = 0x82BF;
enum GL_IMAGE_CLASS_2_X_8 = 0x82C0;
enum GL_IMAGE_CLASS_1_X_8 = 0x82C1;
enum GL_IMAGE_CLASS_11_11_10 = 0x82C2;
enum GL_IMAGE_CLASS_10_10_10_2 = 0x82C3;
enum GL_VIEW_CLASS_128_BITS = 0x82C4;
enum GL_VIEW_CLASS_96_BITS = 0x82C5;
enum GL_VIEW_CLASS_64_BITS = 0x82C6;
enum GL_VIEW_CLASS_48_BITS = 0x82C7;
enum GL_VIEW_CLASS_32_BITS = 0x82C8;
enum GL_VIEW_CLASS_24_BITS = 0x82C9;
enum GL_VIEW_CLASS_16_BITS = 0x82CA;
enum GL_VIEW_CLASS_8_BITS = 0x82CB;
enum GL_VIEW_CLASS_S3TC_DXT1_RGB = 0x82CC;
enum GL_VIEW_CLASS_S3TC_DXT1_RGBA = 0x82CD;
enum GL_VIEW_CLASS_S3TC_DXT3_RGBA = 0x82CE;
enum GL_VIEW_CLASS_S3TC_DXT5_RGBA = 0x82CF;
enum GL_VIEW_CLASS_RGTC1_RED = 0x82D0;
enum GL_VIEW_CLASS_RGTC2_RG = 0x82D1;
enum GL_VIEW_CLASS_BPTC_UNORM = 0x82D2;
enum GL_VIEW_CLASS_BPTC_FLOAT = 0x82D3;
enum GL_UNIFORM = 0x92E1;
enum GL_UNIFORM_BLOCK = 0x92E2;
enum GL_PROGRAM_INPUT = 0x92E3;
enum GL_PROGRAM_OUTPUT = 0x92E4;
enum GL_BUFFER_VARIABLE = 0x92E5;
enum GL_SHADER_STORAGE_BLOCK = 0x92E6;
enum GL_VERTEX_SUBROUTINE = 0x92E8;
enum GL_TESS_CONTROL_SUBROUTINE = 0x92E9;
enum GL_TESS_EVALUATION_SUBROUTINE = 0x92EA;
enum GL_GEOMETRY_SUBROUTINE = 0x92EB;
enum GL_FRAGMENT_SUBROUTINE = 0x92EC;
enum GL_COMPUTE_SUBROUTINE = 0x92ED;
enum GL_VERTEX_SUBROUTINE_UNIFORM = 0x92EE;
enum GL_TESS_CONTROL_SUBROUTINE_UNIFORM = 0x92EF;
enum GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92F0;
enum GL_GEOMETRY_SUBROUTINE_UNIFORM = 0x92F1;
enum GL_FRAGMENT_SUBROUTINE_UNIFORM = 0x92F2;
enum GL_COMPUTE_SUBROUTINE_UNIFORM = 0x92F3;
enum GL_TRANSFORM_FEEDBACK_VARYING = 0x92F4;
enum GL_ACTIVE_RESOURCES = 0x92F5;
enum GL_MAX_NAME_LENGTH = 0x92F6;
enum GL_MAX_NUM_ACTIVE_VARIABLES = 0x92F7;
enum GL_MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92F8;
enum GL_NAME_LENGTH = 0x92F9;
enum GL_TYPE = 0x92FA;
enum GL_ARRAY_SIZE = 0x92FB;
enum GL_OFFSET = 0x92FC;
enum GL_BLOCK_INDEX = 0x92FD;
enum GL_ARRAY_STRIDE = 0x92FE;
enum GL_MATRIX_STRIDE = 0x92FF;
enum GL_IS_ROW_MAJOR = 0x9300;
enum GL_ATOMIC_COUNTER_BUFFER_INDEX = 0x9301;
enum GL_BUFFER_BINDING = 0x9302;
enum GL_BUFFER_DATA_SIZE = 0x9303;
enum GL_NUM_ACTIVE_VARIABLES = 0x9304;
enum GL_ACTIVE_VARIABLES = 0x9305;
enum GL_REFERENCED_BY_VERTEX_SHADER = 0x9306;
enum GL_REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307;
enum GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308;
enum GL_REFERENCED_BY_GEOMETRY_SHADER = 0x9309;
enum GL_REFERENCED_BY_FRAGMENT_SHADER = 0x930A;
enum GL_REFERENCED_BY_COMPUTE_SHADER = 0x930B;
enum GL_TOP_LEVEL_ARRAY_SIZE = 0x930C;
enum GL_TOP_LEVEL_ARRAY_STRIDE = 0x930D;
enum GL_LOCATION = 0x930E;
enum GL_LOCATION_INDEX = 0x930F;
enum GL_IS_PER_PATCH = 0x92E7;
enum GL_SHADER_STORAGE_BUFFER = 0x90D2;
enum GL_SHADER_STORAGE_BUFFER_BINDING = 0x90D3;
enum GL_SHADER_STORAGE_BUFFER_START = 0x90D4;
enum GL_SHADER_STORAGE_BUFFER_SIZE = 0x90D5;
enum GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90D6;
enum GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90D7;
enum GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90D8;
enum GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90D9;
enum GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90DA;
enum GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90DB;
enum GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90DC;
enum GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90DD;
enum GL_MAX_SHADER_STORAGE_BLOCK_SIZE = 0x90DE;
enum GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 0x90DF;
enum GL_SHADER_STORAGE_BARRIER_BIT = 0x00002000;
enum GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 0x8F39;
enum GL_DEPTH_STENCIL_TEXTURE_MODE = 0x90EA;
enum GL_TEXTURE_BUFFER_OFFSET = 0x919D;
enum GL_TEXTURE_BUFFER_SIZE = 0x919E;
enum GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 0x919F;
enum GL_TEXTURE_VIEW_MIN_LEVEL = 0x82DB;
enum GL_TEXTURE_VIEW_NUM_LEVELS = 0x82DC;
enum GL_TEXTURE_VIEW_MIN_LAYER = 0x82DD;
enum GL_TEXTURE_VIEW_NUM_LAYERS = 0x82DE;
enum GL_TEXTURE_IMMUTABLE_LEVELS = 0x82DF;
enum GL_VERTEX_ATTRIB_BINDING = 0x82D4;
enum GL_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D5;
enum GL_VERTEX_BINDING_DIVISOR = 0x82D6;
enum GL_VERTEX_BINDING_OFFSET = 0x82D7;
enum GL_VERTEX_BINDING_STRIDE = 0x82D8;
enum GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9;
enum GL_MAX_VERTEX_ATTRIB_BINDINGS = 0x82DA;
enum GL_VERTEX_BINDING_BUFFER = 0x8F4F;
enum GL_DISPLAY_LIST = 0x82E7;
alias PFNGLCLEARBUFFERDATAPROC = void function (GLenum target, GLenum internalformat, GLenum format, GLenum type, const(void)* data);
alias PFNGLCLEARBUFFERSUBDATAPROC = void function (GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data);
alias PFNGLDISPATCHCOMPUTEPROC = void function (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z);
alias PFNGLDISPATCHCOMPUTEINDIRECTPROC = void function (GLintptr indirect);
alias PFNGLCOPYIMAGESUBDATAPROC = void function (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
alias PFNGLFRAMEBUFFERPARAMETERIPROC = void function (GLenum target, GLenum pname, GLint param);
alias PFNGLGETFRAMEBUFFERPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETINTERNALFORMATI64VPROC = void function (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params);
alias PFNGLINVALIDATETEXSUBIMAGEPROC = void function (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth);
alias PFNGLINVALIDATETEXIMAGEPROC = void function (GLuint texture, GLint level);
alias PFNGLINVALIDATEBUFFERSUBDATAPROC = void function (GLuint buffer, GLintptr offset, GLsizeiptr length);
alias PFNGLINVALIDATEBUFFERDATAPROC = void function (GLuint buffer);
alias PFNGLINVALIDATEFRAMEBUFFERPROC = void function (GLenum target, GLsizei numAttachments, const(GLenum)* attachments);
alias PFNGLINVALIDATESUBFRAMEBUFFERPROC = void function (GLenum target, GLsizei numAttachments, const(GLenum)* attachments, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLMULTIDRAWARRAYSINDIRECTPROC = void function (GLenum mode, const(void)* indirect, GLsizei drawcount, GLsizei stride);
alias PFNGLMULTIDRAWELEMENTSINDIRECTPROC = void function (GLenum mode, GLenum type, const(void)* indirect, GLsizei drawcount, GLsizei stride);
alias PFNGLGETPROGRAMINTERFACEIVPROC = void function (GLuint program, GLenum programInterface, GLenum pname, GLint* params);
alias PFNGLGETPROGRAMRESOURCEINDEXPROC = uint function (GLuint program, GLenum programInterface, const(GLchar)* name);
alias PFNGLGETPROGRAMRESOURCENAMEPROC = void function (GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name);
alias PFNGLGETPROGRAMRESOURCEIVPROC = void function (GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const(GLenum)* props, GLsizei bufSize, GLsizei* length, GLint* params);
alias PFNGLGETPROGRAMRESOURCELOCATIONPROC = int function (GLuint program, GLenum programInterface, const(GLchar)* name);
alias PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC = int function (GLuint program, GLenum programInterface, const(GLchar)* name);
alias PFNGLSHADERSTORAGEBLOCKBINDINGPROC = void function (GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding);
alias PFNGLTEXBUFFERRANGEPROC = void function (GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
alias PFNGLTEXSTORAGE2DMULTISAMPLEPROC = void function (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
alias PFNGLTEXSTORAGE3DMULTISAMPLEPROC = void function (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
alias PFNGLTEXTUREVIEWPROC = void function (GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);
alias PFNGLBINDVERTEXBUFFERPROC = void function (GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
alias PFNGLVERTEXATTRIBFORMATPROC = void function (GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
alias PFNGLVERTEXATTRIBIFORMATPROC = void function (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
alias PFNGLVERTEXATTRIBLFORMATPROC = void function (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
alias PFNGLVERTEXATTRIBBINDINGPROC = void function (GLuint attribindex, GLuint bindingindex);
alias PFNGLVERTEXBINDINGDIVISORPROC = void function (GLuint bindingindex, GLuint divisor);
alias PFNGLDEBUGMESSAGECONTROLPROC = void function (GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
alias PFNGLDEBUGMESSAGEINSERTPROC = void function (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf);
alias PFNGLDEBUGMESSAGECALLBACKPROC = void function (GLDEBUGPROC callback, const(void)* userParam);
alias PFNGLGETDEBUGMESSAGELOGPROC = uint function (GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
alias PFNGLPUSHDEBUGGROUPPROC = void function (GLenum source, GLuint id, GLsizei length, const(GLchar)* message);
alias PFNGLPOPDEBUGGROUPPROC = void function ();
alias PFNGLOBJECTLABELPROC = void function (GLenum identifier, GLuint name, GLsizei length, const(GLchar)* label);
alias PFNGLGETOBJECTLABELPROC = void function (GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label);
alias PFNGLOBJECTPTRLABELPROC = void function (const(void)* ptr, GLsizei length, const(GLchar)* label);
alias PFNGLGETOBJECTPTRLABELPROC = void function (const(void)* ptr, GLsizei bufSize, GLsizei* length, GLchar* label);
void glClearBufferData (GLenum target, GLenum internalformat, GLenum format, GLenum type, const(void)* data);
void glClearBufferSubData (GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data);
void glDispatchCompute (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z);
void glDispatchComputeIndirect (GLintptr indirect);
void glCopyImageSubData (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
void glFramebufferParameteri (GLenum target, GLenum pname, GLint param);
void glGetFramebufferParameteriv (GLenum target, GLenum pname, GLint* params);
void glGetInternalformati64v (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params);
void glInvalidateTexSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth);
void glInvalidateTexImage (GLuint texture, GLint level);
void glInvalidateBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glInvalidateBufferData (GLuint buffer);
void glInvalidateFramebuffer (GLenum target, GLsizei numAttachments, const(GLenum)* attachments);
void glInvalidateSubFramebuffer (GLenum target, GLsizei numAttachments, const(GLenum)* attachments, GLint x, GLint y, GLsizei width, GLsizei height);
void glMultiDrawArraysIndirect (GLenum mode, const(void)* indirect, GLsizei drawcount, GLsizei stride);
void glMultiDrawElementsIndirect (GLenum mode, GLenum type, const(void)* indirect, GLsizei drawcount, GLsizei stride);
void glGetProgramInterfaceiv (GLuint program, GLenum programInterface, GLenum pname, GLint* params);
GLuint glGetProgramResourceIndex (GLuint program, GLenum programInterface, const(GLchar)* name);
void glGetProgramResourceName (GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name);
void glGetProgramResourceiv (GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const(GLenum)* props, GLsizei bufSize, GLsizei* length, GLint* params);
GLint glGetProgramResourceLocation (GLuint program, GLenum programInterface, const(GLchar)* name);
GLint glGetProgramResourceLocationIndex (GLuint program, GLenum programInterface, const(GLchar)* name);
void glShaderStorageBlockBinding (GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding);
void glTexBufferRange (GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glTexStorage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTexStorage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glTextureView (GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);
void glBindVertexBuffer (GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexAttribFormat (GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexAttribIFormat (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexAttribLFormat (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexAttribBinding (GLuint attribindex, GLuint bindingindex);
void glVertexBindingDivisor (GLuint bindingindex, GLuint divisor);
void glDebugMessageControl (GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
void glDebugMessageInsert (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf);
void glDebugMessageCallback (GLDEBUGPROC callback, const(void)* userParam);
GLuint glGetDebugMessageLog (GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
void glPushDebugGroup (GLenum source, GLuint id, GLsizei length, const(GLchar)* message);
void glPopDebugGroup ();
void glObjectLabel (GLenum identifier, GLuint name, GLsizei length, const(GLchar)* label);
void glGetObjectLabel (GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label);
void glObjectPtrLabel (const(void)* ptr, GLsizei length, const(GLchar)* label);
void glGetObjectPtrLabel (const(void)* ptr, GLsizei bufSize, GLsizei* length, GLchar* label);

/* GL_VERSION_4_3 */

enum GL_VERSION_4_4 = 1;
enum GL_MAX_VERTEX_ATTRIB_STRIDE = 0x82E5;
enum GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 0x8221;
enum GL_TEXTURE_BUFFER_BINDING = 0x8C2A;
enum GL_MAP_PERSISTENT_BIT = 0x0040;
enum GL_MAP_COHERENT_BIT = 0x0080;
enum GL_DYNAMIC_STORAGE_BIT = 0x0100;
enum GL_CLIENT_STORAGE_BIT = 0x0200;
enum GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = 0x00004000;
enum GL_BUFFER_IMMUTABLE_STORAGE = 0x821F;
enum GL_BUFFER_STORAGE_FLAGS = 0x8220;
enum GL_CLEAR_TEXTURE = 0x9365;
enum GL_LOCATION_COMPONENT = 0x934A;
enum GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = 0x934B;
enum GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = 0x934C;
enum GL_QUERY_BUFFER = 0x9192;
enum GL_QUERY_BUFFER_BARRIER_BIT = 0x00008000;
enum GL_QUERY_BUFFER_BINDING = 0x9193;
enum GL_QUERY_RESULT_NO_WAIT = 0x9194;
enum GL_MIRROR_CLAMP_TO_EDGE = 0x8743;
alias PFNGLBUFFERSTORAGEPROC = void function (GLenum target, GLsizeiptr size, const(void)* data, GLbitfield flags);
alias PFNGLCLEARTEXIMAGEPROC = void function (GLuint texture, GLint level, GLenum format, GLenum type, const(void)* data);
alias PFNGLCLEARTEXSUBIMAGEPROC = void function (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* data);
alias PFNGLBINDBUFFERSBASEPROC = void function (GLenum target, GLuint first, GLsizei count, const(GLuint)* buffers);
alias PFNGLBINDBUFFERSRANGEPROC = void function (GLenum target, GLuint first, GLsizei count, const(GLuint)* buffers, const(GLintptr)* offsets, const(GLsizeiptr)* sizes);
alias PFNGLBINDTEXTURESPROC = void function (GLuint first, GLsizei count, const(GLuint)* textures);
alias PFNGLBINDSAMPLERSPROC = void function (GLuint first, GLsizei count, const(GLuint)* samplers);
alias PFNGLBINDIMAGETEXTURESPROC = void function (GLuint first, GLsizei count, const(GLuint)* textures);
alias PFNGLBINDVERTEXBUFFERSPROC = void function (GLuint first, GLsizei count, const(GLuint)* buffers, const(GLintptr)* offsets, const(GLsizei)* strides);
void glBufferStorage (GLenum target, GLsizeiptr size, const(void)* data, GLbitfield flags);
void glClearTexImage (GLuint texture, GLint level, GLenum format, GLenum type, const(void)* data);
void glClearTexSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* data);
void glBindBuffersBase (GLenum target, GLuint first, GLsizei count, const(GLuint)* buffers);
void glBindBuffersRange (GLenum target, GLuint first, GLsizei count, const(GLuint)* buffers, const(GLintptr)* offsets, const(GLsizeiptr)* sizes);
void glBindTextures (GLuint first, GLsizei count, const(GLuint)* textures);
void glBindSamplers (GLuint first, GLsizei count, const(GLuint)* samplers);
void glBindImageTextures (GLuint first, GLsizei count, const(GLuint)* textures);
void glBindVertexBuffers (GLuint first, GLsizei count, const(GLuint)* buffers, const(GLintptr)* offsets, const(GLsizei)* strides);

/* GL_VERSION_4_4 */

enum GL_ARB_ES2_compatibility = 1;
/* GL_ARB_ES2_compatibility */

enum GL_ARB_ES3_compatibility = 1;
/* GL_ARB_ES3_compatibility */

enum GL_ARB_arrays_of_arrays = 1;
/* GL_ARB_arrays_of_arrays */

enum GL_ARB_base_instance = 1;
/* GL_ARB_base_instance */

enum GL_ARB_bindless_texture = 1;
alias GLuint64EXT = c_ulong;
enum GL_UNSIGNED_INT64_ARB = 0x140F;
alias PFNGLGETTEXTUREHANDLEARBPROC = c_ulong function (GLuint texture);
alias PFNGLGETTEXTURESAMPLERHANDLEARBPROC = c_ulong function (GLuint texture, GLuint sampler);
alias PFNGLMAKETEXTUREHANDLERESIDENTARBPROC = void function (GLuint64 handle);
alias PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC = void function (GLuint64 handle);
alias PFNGLGETIMAGEHANDLEARBPROC = c_ulong function (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
alias PFNGLMAKEIMAGEHANDLERESIDENTARBPROC = void function (GLuint64 handle, GLenum access);
alias PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC = void function (GLuint64 handle);
alias PFNGLUNIFORMHANDLEUI64ARBPROC = void function (GLint location, GLuint64 value);
alias PFNGLUNIFORMHANDLEUI64VARBPROC = void function (GLint location, GLsizei count, const(GLuint64)* value);
alias PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC = void function (GLuint program, GLint location, GLuint64 value);
alias PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64)* values);
alias PFNGLISTEXTUREHANDLERESIDENTARBPROC = ubyte function (GLuint64 handle);
alias PFNGLISIMAGEHANDLERESIDENTARBPROC = ubyte function (GLuint64 handle);
alias PFNGLVERTEXATTRIBL1UI64ARBPROC = void function (GLuint index, GLuint64EXT x);
alias PFNGLVERTEXATTRIBL1UI64VARBPROC = void function (GLuint index, const(GLuint64EXT)* v);
alias PFNGLGETVERTEXATTRIBLUI64VARBPROC = void function (GLuint index, GLenum pname, GLuint64EXT* params);
GLuint64 glGetTextureHandleARB (GLuint texture);
GLuint64 glGetTextureSamplerHandleARB (GLuint texture, GLuint sampler);
void glMakeTextureHandleResidentARB (GLuint64 handle);
void glMakeTextureHandleNonResidentARB (GLuint64 handle);
GLuint64 glGetImageHandleARB (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
void glMakeImageHandleResidentARB (GLuint64 handle, GLenum access);
void glMakeImageHandleNonResidentARB (GLuint64 handle);
void glUniformHandleui64ARB (GLint location, GLuint64 value);
void glUniformHandleui64vARB (GLint location, GLsizei count, const(GLuint64)* value);
void glProgramUniformHandleui64ARB (GLuint program, GLint location, GLuint64 value);
void glProgramUniformHandleui64vARB (GLuint program, GLint location, GLsizei count, const(GLuint64)* values);
GLboolean glIsTextureHandleResidentARB (GLuint64 handle);
GLboolean glIsImageHandleResidentARB (GLuint64 handle);
void glVertexAttribL1ui64ARB (GLuint index, GLuint64EXT x);
void glVertexAttribL1ui64vARB (GLuint index, const(GLuint64EXT)* v);
void glGetVertexAttribLui64vARB (GLuint index, GLenum pname, GLuint64EXT* params);

/* GL_ARB_bindless_texture */

enum GL_ARB_blend_func_extended = 1;
/* GL_ARB_blend_func_extended */

enum GL_ARB_buffer_storage = 1;
/* GL_ARB_buffer_storage */

enum GL_ARB_cl_event = 1;
struct _cl_context;
struct _cl_event;
enum GL_SYNC_CL_EVENT_ARB = 0x8240;
enum GL_SYNC_CL_EVENT_COMPLETE_ARB = 0x8241;
alias PFNGLCREATESYNCFROMCLEVENTARBPROC = __GLsync* function (_cl_context* context, _cl_event* event, GLbitfield flags);
GLsync glCreateSyncFromCLeventARB (_cl_context* context, _cl_event* event, GLbitfield flags);

/* GL_ARB_cl_event */

enum GL_ARB_clear_buffer_object = 1;
/* GL_ARB_clear_buffer_object */

enum GL_ARB_clear_texture = 1;
/* GL_ARB_clear_texture */

enum GL_ARB_color_buffer_float = 1;
enum GL_RGBA_FLOAT_MODE_ARB = 0x8820;
enum GL_CLAMP_VERTEX_COLOR_ARB = 0x891A;
enum GL_CLAMP_FRAGMENT_COLOR_ARB = 0x891B;
enum GL_CLAMP_READ_COLOR_ARB = 0x891C;
enum GL_FIXED_ONLY_ARB = 0x891D;
alias PFNGLCLAMPCOLORARBPROC = void function (GLenum target, GLenum clamp);
void glClampColorARB (GLenum target, GLenum clamp);

/* GL_ARB_color_buffer_float */

enum GL_ARB_compatibility = 1;
/* GL_ARB_compatibility */

enum GL_ARB_compressed_texture_pixel_storage = 1;
/* GL_ARB_compressed_texture_pixel_storage */

enum GL_ARB_compute_shader = 1;
enum GL_COMPUTE_SHADER_BIT = 0x00000020;
/* GL_ARB_compute_shader */

enum GL_ARB_compute_variable_group_size = 1;
enum GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB = 0x9344;
enum GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB = 0x90EB;
enum GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB = 0x9345;
enum GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB = 0x91BF;
alias PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC = void function (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z, GLuint group_size_x, GLuint group_size_y, GLuint group_size_z);
void glDispatchComputeGroupSizeARB (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z, GLuint group_size_x, GLuint group_size_y, GLuint group_size_z);

/* GL_ARB_compute_variable_group_size */

enum GL_ARB_conservative_depth = 1;
/* GL_ARB_conservative_depth */

enum GL_ARB_copy_buffer = 1;
enum GL_COPY_READ_BUFFER_BINDING = 0x8F36;
enum GL_COPY_WRITE_BUFFER_BINDING = 0x8F37;
/* GL_ARB_copy_buffer */

enum GL_ARB_copy_image = 1;
/* GL_ARB_copy_image */

enum GL_ARB_debug_output = 1;
alias GLDEBUGPROCARB = void function (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, const(void)* userParam);
enum GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB = 0x8242;
enum GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 0x8243;
enum GL_DEBUG_CALLBACK_FUNCTION_ARB = 0x8244;
enum GL_DEBUG_CALLBACK_USER_PARAM_ARB = 0x8245;
enum GL_DEBUG_SOURCE_API_ARB = 0x8246;
enum GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB = 0x8247;
enum GL_DEBUG_SOURCE_SHADER_COMPILER_ARB = 0x8248;
enum GL_DEBUG_SOURCE_THIRD_PARTY_ARB = 0x8249;
enum GL_DEBUG_SOURCE_APPLICATION_ARB = 0x824A;
enum GL_DEBUG_SOURCE_OTHER_ARB = 0x824B;
enum GL_DEBUG_TYPE_ERROR_ARB = 0x824C;
enum GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB = 0x824D;
enum GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB = 0x824E;
enum GL_DEBUG_TYPE_PORTABILITY_ARB = 0x824F;
enum GL_DEBUG_TYPE_PERFORMANCE_ARB = 0x8250;
enum GL_DEBUG_TYPE_OTHER_ARB = 0x8251;
enum GL_MAX_DEBUG_MESSAGE_LENGTH_ARB = 0x9143;
enum GL_MAX_DEBUG_LOGGED_MESSAGES_ARB = 0x9144;
enum GL_DEBUG_LOGGED_MESSAGES_ARB = 0x9145;
enum GL_DEBUG_SEVERITY_HIGH_ARB = 0x9146;
enum GL_DEBUG_SEVERITY_MEDIUM_ARB = 0x9147;
enum GL_DEBUG_SEVERITY_LOW_ARB = 0x9148;
alias PFNGLDEBUGMESSAGECONTROLARBPROC = void function (GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
alias PFNGLDEBUGMESSAGEINSERTARBPROC = void function (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf);
alias PFNGLDEBUGMESSAGECALLBACKARBPROC = void function (GLDEBUGPROCARB callback, const(void)* userParam);
alias PFNGLGETDEBUGMESSAGELOGARBPROC = uint function (GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
void glDebugMessageControlARB (GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
void glDebugMessageInsertARB (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf);
void glDebugMessageCallbackARB (GLDEBUGPROCARB callback, const(void)* userParam);
GLuint glGetDebugMessageLogARB (GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);

/* GL_ARB_debug_output */

enum GL_ARB_depth_buffer_float = 1;
/* GL_ARB_depth_buffer_float */

enum GL_ARB_depth_clamp = 1;
/* GL_ARB_depth_clamp */

enum GL_ARB_depth_texture = 1;
enum GL_DEPTH_COMPONENT16_ARB = 0x81A5;
enum GL_DEPTH_COMPONENT24_ARB = 0x81A6;
enum GL_DEPTH_COMPONENT32_ARB = 0x81A7;
enum GL_TEXTURE_DEPTH_SIZE_ARB = 0x884A;
enum GL_DEPTH_TEXTURE_MODE_ARB = 0x884B;
/* GL_ARB_depth_texture */

enum GL_ARB_draw_buffers = 1;
enum GL_MAX_DRAW_BUFFERS_ARB = 0x8824;
enum GL_DRAW_BUFFER0_ARB = 0x8825;
enum GL_DRAW_BUFFER1_ARB = 0x8826;
enum GL_DRAW_BUFFER2_ARB = 0x8827;
enum GL_DRAW_BUFFER3_ARB = 0x8828;
enum GL_DRAW_BUFFER4_ARB = 0x8829;
enum GL_DRAW_BUFFER5_ARB = 0x882A;
enum GL_DRAW_BUFFER6_ARB = 0x882B;
enum GL_DRAW_BUFFER7_ARB = 0x882C;
enum GL_DRAW_BUFFER8_ARB = 0x882D;
enum GL_DRAW_BUFFER9_ARB = 0x882E;
enum GL_DRAW_BUFFER10_ARB = 0x882F;
enum GL_DRAW_BUFFER11_ARB = 0x8830;
enum GL_DRAW_BUFFER12_ARB = 0x8831;
enum GL_DRAW_BUFFER13_ARB = 0x8832;
enum GL_DRAW_BUFFER14_ARB = 0x8833;
enum GL_DRAW_BUFFER15_ARB = 0x8834;
alias PFNGLDRAWBUFFERSARBPROC = void function (GLsizei n, const(GLenum)* bufs);
void glDrawBuffersARB (GLsizei n, const(GLenum)* bufs);

/* GL_ARB_draw_buffers */

enum GL_ARB_draw_buffers_blend = 1;
alias PFNGLBLENDEQUATIONIARBPROC = void function (GLuint buf, GLenum mode);
alias PFNGLBLENDEQUATIONSEPARATEIARBPROC = void function (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
alias PFNGLBLENDFUNCIARBPROC = void function (GLuint buf, GLenum src, GLenum dst);
alias PFNGLBLENDFUNCSEPARATEIARBPROC = void function (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glBlendEquationiARB (GLuint buf, GLenum mode);
void glBlendEquationSeparateiARB (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendFunciARB (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparateiARB (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);

/* GL_ARB_draw_buffers_blend */

enum GL_ARB_draw_elements_base_vertex = 1;
/* GL_ARB_draw_elements_base_vertex */

enum GL_ARB_draw_indirect = 1;
/* GL_ARB_draw_indirect */

enum GL_ARB_draw_instanced = 1;
alias PFNGLDRAWARRAYSINSTANCEDARBPROC = void function (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
alias PFNGLDRAWELEMENTSINSTANCEDARBPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei primcount);
void glDrawArraysInstancedARB (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedARB (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei primcount);

/* GL_ARB_draw_instanced */

enum GL_ARB_enhanced_layouts = 1;
/* GL_ARB_enhanced_layouts */

enum GL_ARB_explicit_attrib_location = 1;
/* GL_ARB_explicit_attrib_location */

enum GL_ARB_explicit_uniform_location = 1;
/* GL_ARB_explicit_uniform_location */

enum GL_ARB_fragment_coord_conventions = 1;
/* GL_ARB_fragment_coord_conventions */

enum GL_ARB_fragment_layer_viewport = 1;
/* GL_ARB_fragment_layer_viewport */

enum GL_ARB_fragment_program = 1;
enum GL_FRAGMENT_PROGRAM_ARB = 0x8804;
enum GL_PROGRAM_FORMAT_ASCII_ARB = 0x8875;
enum GL_PROGRAM_LENGTH_ARB = 0x8627;
enum GL_PROGRAM_FORMAT_ARB = 0x8876;
enum GL_PROGRAM_BINDING_ARB = 0x8677;
enum GL_PROGRAM_INSTRUCTIONS_ARB = 0x88A0;
enum GL_MAX_PROGRAM_INSTRUCTIONS_ARB = 0x88A1;
enum GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A2;
enum GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A3;
enum GL_PROGRAM_TEMPORARIES_ARB = 0x88A4;
enum GL_MAX_PROGRAM_TEMPORARIES_ARB = 0x88A5;
enum GL_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A6;
enum GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A7;
enum GL_PROGRAM_PARAMETERS_ARB = 0x88A8;
enum GL_MAX_PROGRAM_PARAMETERS_ARB = 0x88A9;
enum GL_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AA;
enum GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AB;
enum GL_PROGRAM_ATTRIBS_ARB = 0x88AC;
enum GL_MAX_PROGRAM_ATTRIBS_ARB = 0x88AD;
enum GL_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AE;
enum GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AF;
enum GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 0x88B4;
enum GL_MAX_PROGRAM_ENV_PARAMETERS_ARB = 0x88B5;
enum GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 0x88B6;
enum GL_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x8805;
enum GL_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x8806;
enum GL_PROGRAM_TEX_INDIRECTIONS_ARB = 0x8807;
enum GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x8808;
enum GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x8809;
enum GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x880A;
enum GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x880B;
enum GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x880C;
enum GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = 0x880D;
enum GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x880E;
enum GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x880F;
enum GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x8810;
enum GL_PROGRAM_STRING_ARB = 0x8628;
enum GL_PROGRAM_ERROR_POSITION_ARB = 0x864B;
enum GL_CURRENT_MATRIX_ARB = 0x8641;
enum GL_TRANSPOSE_CURRENT_MATRIX_ARB = 0x88B7;
enum GL_CURRENT_MATRIX_STACK_DEPTH_ARB = 0x8640;
enum GL_MAX_PROGRAM_MATRICES_ARB = 0x862F;
enum GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 0x862E;
enum GL_MAX_TEXTURE_COORDS_ARB = 0x8871;
enum GL_MAX_TEXTURE_IMAGE_UNITS_ARB = 0x8872;
enum GL_PROGRAM_ERROR_STRING_ARB = 0x8874;
enum GL_MATRIX0_ARB = 0x88C0;
enum GL_MATRIX1_ARB = 0x88C1;
enum GL_MATRIX2_ARB = 0x88C2;
enum GL_MATRIX3_ARB = 0x88C3;
enum GL_MATRIX4_ARB = 0x88C4;
enum GL_MATRIX5_ARB = 0x88C5;
enum GL_MATRIX6_ARB = 0x88C6;
enum GL_MATRIX7_ARB = 0x88C7;
enum GL_MATRIX8_ARB = 0x88C8;
enum GL_MATRIX9_ARB = 0x88C9;
enum GL_MATRIX10_ARB = 0x88CA;
enum GL_MATRIX11_ARB = 0x88CB;
enum GL_MATRIX12_ARB = 0x88CC;
enum GL_MATRIX13_ARB = 0x88CD;
enum GL_MATRIX14_ARB = 0x88CE;
enum GL_MATRIX15_ARB = 0x88CF;
enum GL_MATRIX16_ARB = 0x88D0;
enum GL_MATRIX17_ARB = 0x88D1;
enum GL_MATRIX18_ARB = 0x88D2;
enum GL_MATRIX19_ARB = 0x88D3;
enum GL_MATRIX20_ARB = 0x88D4;
enum GL_MATRIX21_ARB = 0x88D5;
enum GL_MATRIX22_ARB = 0x88D6;
enum GL_MATRIX23_ARB = 0x88D7;
enum GL_MATRIX24_ARB = 0x88D8;
enum GL_MATRIX25_ARB = 0x88D9;
enum GL_MATRIX26_ARB = 0x88DA;
enum GL_MATRIX27_ARB = 0x88DB;
enum GL_MATRIX28_ARB = 0x88DC;
enum GL_MATRIX29_ARB = 0x88DD;
enum GL_MATRIX30_ARB = 0x88DE;
enum GL_MATRIX31_ARB = 0x88DF;
alias PFNGLPROGRAMSTRINGARBPROC = void function (GLenum target, GLenum format, GLsizei len, const(void)* string);
alias PFNGLBINDPROGRAMARBPROC = void function (GLenum target, GLuint program);
alias PFNGLDELETEPROGRAMSARBPROC = void function (GLsizei n, const(GLuint)* programs);
alias PFNGLGENPROGRAMSARBPROC = void function (GLsizei n, GLuint* programs);
alias PFNGLPROGRAMENVPARAMETER4DARBPROC = void function (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLPROGRAMENVPARAMETER4DVARBPROC = void function (GLenum target, GLuint index, const(GLdouble)* params);
alias PFNGLPROGRAMENVPARAMETER4FARBPROC = void function (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLPROGRAMENVPARAMETER4FVARBPROC = void function (GLenum target, GLuint index, const(GLfloat)* params);
alias PFNGLPROGRAMLOCALPARAMETER4DARBPROC = void function (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLPROGRAMLOCALPARAMETER4DVARBPROC = void function (GLenum target, GLuint index, const(GLdouble)* params);
alias PFNGLPROGRAMLOCALPARAMETER4FARBPROC = void function (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLPROGRAMLOCALPARAMETER4FVARBPROC = void function (GLenum target, GLuint index, const(GLfloat)* params);
alias PFNGLGETPROGRAMENVPARAMETERDVARBPROC = void function (GLenum target, GLuint index, GLdouble* params);
alias PFNGLGETPROGRAMENVPARAMETERFVARBPROC = void function (GLenum target, GLuint index, GLfloat* params);
alias PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC = void function (GLenum target, GLuint index, GLdouble* params);
alias PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC = void function (GLenum target, GLuint index, GLfloat* params);
alias PFNGLGETPROGRAMIVARBPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETPROGRAMSTRINGARBPROC = void function (GLenum target, GLenum pname, void* string);
alias PFNGLISPROGRAMARBPROC = ubyte function (GLuint program);
void glProgramStringARB (GLenum target, GLenum format, GLsizei len, const(void)* string);
void glBindProgramARB (GLenum target, GLuint program);
void glDeleteProgramsARB (GLsizei n, const(GLuint)* programs);
void glGenProgramsARB (GLsizei n, GLuint* programs);
void glProgramEnvParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramEnvParameter4dvARB (GLenum target, GLuint index, const(GLdouble)* params);
void glProgramEnvParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramEnvParameter4fvARB (GLenum target, GLuint index, const(GLfloat)* params);
void glProgramLocalParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramLocalParameter4dvARB (GLenum target, GLuint index, const(GLdouble)* params);
void glProgramLocalParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramLocalParameter4fvARB (GLenum target, GLuint index, const(GLfloat)* params);
void glGetProgramEnvParameterdvARB (GLenum target, GLuint index, GLdouble* params);
void glGetProgramEnvParameterfvARB (GLenum target, GLuint index, GLfloat* params);
void glGetProgramLocalParameterdvARB (GLenum target, GLuint index, GLdouble* params);
void glGetProgramLocalParameterfvARB (GLenum target, GLuint index, GLfloat* params);
void glGetProgramivARB (GLenum target, GLenum pname, GLint* params);
void glGetProgramStringARB (GLenum target, GLenum pname, void* string);
GLboolean glIsProgramARB (GLuint program);

/* GL_ARB_fragment_program */

enum GL_ARB_fragment_program_shadow = 1;
/* GL_ARB_fragment_program_shadow */

enum GL_ARB_fragment_shader = 1;
enum GL_FRAGMENT_SHADER_ARB = 0x8B30;
enum GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 0x8B49;
enum GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = 0x8B8B;
/* GL_ARB_fragment_shader */

enum GL_ARB_framebuffer_no_attachments = 1;
/* GL_ARB_framebuffer_no_attachments */

enum GL_ARB_framebuffer_object = 1;
/* GL_ARB_framebuffer_object */

enum GL_ARB_framebuffer_sRGB = 1;
/* GL_ARB_framebuffer_sRGB */

enum GL_CONTEXT_RELEASE_BEHAVIOR = 0x82FB;
enum GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x82FC;
/* GL_KHR_context_flush_control */

enum GL_ARB_geometry_shader4 = 1;
enum GL_LINES_ADJACENCY_ARB = 0x000A;
enum GL_LINE_STRIP_ADJACENCY_ARB = 0x000B;
enum GL_TRIANGLES_ADJACENCY_ARB = 0x000C;
enum GL_TRIANGLE_STRIP_ADJACENCY_ARB = 0x000D;
enum GL_PROGRAM_POINT_SIZE_ARB = 0x8642;
enum GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB = 0x8C29;
enum GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = 0x8DA7;
enum GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB = 0x8DA8;
enum GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB = 0x8DA9;
enum GL_GEOMETRY_SHADER_ARB = 0x8DD9;
enum GL_GEOMETRY_VERTICES_OUT_ARB = 0x8DDA;
enum GL_GEOMETRY_INPUT_TYPE_ARB = 0x8DDB;
enum GL_GEOMETRY_OUTPUT_TYPE_ARB = 0x8DDC;
enum GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB = 0x8DDD;
enum GL_MAX_VERTEX_VARYING_COMPONENTS_ARB = 0x8DDE;
enum GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB = 0x8DDF;
enum GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB = 0x8DE0;
enum GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB = 0x8DE1;
alias PFNGLPROGRAMPARAMETERIARBPROC = void function (GLuint program, GLenum pname, GLint value);
alias PFNGLFRAMEBUFFERTEXTUREARBPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level);
alias PFNGLFRAMEBUFFERTEXTURELAYERARBPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
alias PFNGLFRAMEBUFFERTEXTUREFACEARBPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glProgramParameteriARB (GLuint program, GLenum pname, GLint value);
void glFramebufferTextureARB (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureLayerARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glFramebufferTextureFaceARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);

/* GL_ARB_geometry_shader4 */

enum GL_ARB_get_program_binary = 1;
/* GL_ARB_get_program_binary */

enum GL_ARB_gpu_shader5 = 1;
/* GL_ARB_gpu_shader5 */

enum GL_ARB_gpu_shader_fp64 = 1;
/* GL_ARB_gpu_shader_fp64 */

enum GL_ARB_half_float_pixel = 1;
alias GLhalfARB = ushort;
enum GL_HALF_FLOAT_ARB = 0x140B;
/* GL_ARB_half_float_pixel */

enum GL_ARB_half_float_vertex = 1;
/* GL_ARB_half_float_vertex */

enum GL_ARB_imaging = 1;
enum GL_BLEND_COLOR = 0x8005;
enum GL_BLEND_EQUATION = 0x8009;
enum GL_CONVOLUTION_1D = 0x8010;
enum GL_CONVOLUTION_2D = 0x8011;
enum GL_SEPARABLE_2D = 0x8012;
enum GL_CONVOLUTION_BORDER_MODE = 0x8013;
enum GL_CONVOLUTION_FILTER_SCALE = 0x8014;
enum GL_CONVOLUTION_FILTER_BIAS = 0x8015;
enum GL_REDUCE = 0x8016;
enum GL_CONVOLUTION_FORMAT = 0x8017;
enum GL_CONVOLUTION_WIDTH = 0x8018;
enum GL_CONVOLUTION_HEIGHT = 0x8019;
enum GL_MAX_CONVOLUTION_WIDTH = 0x801A;
enum GL_MAX_CONVOLUTION_HEIGHT = 0x801B;
enum GL_POST_CONVOLUTION_RED_SCALE = 0x801C;
enum GL_POST_CONVOLUTION_GREEN_SCALE = 0x801D;
enum GL_POST_CONVOLUTION_BLUE_SCALE = 0x801E;
enum GL_POST_CONVOLUTION_ALPHA_SCALE = 0x801F;
enum GL_POST_CONVOLUTION_RED_BIAS = 0x8020;
enum GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021;
enum GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022;
enum GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023;
enum GL_HISTOGRAM = 0x8024;
enum GL_PROXY_HISTOGRAM = 0x8025;
enum GL_HISTOGRAM_WIDTH = 0x8026;
enum GL_HISTOGRAM_FORMAT = 0x8027;
enum GL_HISTOGRAM_RED_SIZE = 0x8028;
enum GL_HISTOGRAM_GREEN_SIZE = 0x8029;
enum GL_HISTOGRAM_BLUE_SIZE = 0x802A;
enum GL_HISTOGRAM_ALPHA_SIZE = 0x802B;
enum GL_HISTOGRAM_LUMINANCE_SIZE = 0x802C;
enum GL_HISTOGRAM_SINK = 0x802D;
enum GL_MINMAX = 0x802E;
enum GL_MINMAX_FORMAT = 0x802F;
enum GL_MINMAX_SINK = 0x8030;
enum GL_TABLE_TOO_LARGE = 0x8031;
enum GL_COLOR_MATRIX = 0x80B1;
enum GL_COLOR_MATRIX_STACK_DEPTH = 0x80B2;
enum GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3;
enum GL_POST_COLOR_MATRIX_RED_SCALE = 0x80B4;
enum GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5;
enum GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6;
enum GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7;
enum GL_POST_COLOR_MATRIX_RED_BIAS = 0x80B8;
enum GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9;
enum GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA;
enum GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB;
enum GL_COLOR_TABLE = 0x80D0;
enum GL_POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
enum GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
enum GL_PROXY_COLOR_TABLE = 0x80D3;
enum GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
enum GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
enum GL_COLOR_TABLE_SCALE = 0x80D6;
enum GL_COLOR_TABLE_BIAS = 0x80D7;
enum GL_COLOR_TABLE_FORMAT = 0x80D8;
enum GL_COLOR_TABLE_WIDTH = 0x80D9;
enum GL_COLOR_TABLE_RED_SIZE = 0x80DA;
enum GL_COLOR_TABLE_GREEN_SIZE = 0x80DB;
enum GL_COLOR_TABLE_BLUE_SIZE = 0x80DC;
enum GL_COLOR_TABLE_ALPHA_SIZE = 0x80DD;
enum GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE;
enum GL_COLOR_TABLE_INTENSITY_SIZE = 0x80DF;
enum GL_CONSTANT_BORDER = 0x8151;
enum GL_REPLICATE_BORDER = 0x8153;
enum GL_CONVOLUTION_BORDER_COLOR = 0x8154;
alias PFNGLCOLORTABLEPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* table);
alias PFNGLCOLORTABLEPARAMETERFVPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLCOLORTABLEPARAMETERIVPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLCOPYCOLORTABLEPROC = void function (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias PFNGLGETCOLORTABLEPROC = void function (GLenum target, GLenum format, GLenum type, void* table);
alias PFNGLGETCOLORTABLEPARAMETERFVPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETCOLORTABLEPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLCOLORSUBTABLEPROC = void function (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(void)* data);
alias PFNGLCOPYCOLORSUBTABLEPROC = void function (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
alias PFNGLCONVOLUTIONFILTER1DPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* image);
alias PFNGLCONVOLUTIONFILTER2DPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* image);
alias PFNGLCONVOLUTIONPARAMETERFPROC = void function (GLenum target, GLenum pname, GLfloat params);
alias PFNGLCONVOLUTIONPARAMETERFVPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLCONVOLUTIONPARAMETERIPROC = void function (GLenum target, GLenum pname, GLint params);
alias PFNGLCONVOLUTIONPARAMETERIVPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLCOPYCONVOLUTIONFILTER1DPROC = void function (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias PFNGLCOPYCONVOLUTIONFILTER2DPROC = void function (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLGETCONVOLUTIONFILTERPROC = void function (GLenum target, GLenum format, GLenum type, void* image);
alias PFNGLGETCONVOLUTIONPARAMETERFVPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETCONVOLUTIONPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETSEPARABLEFILTERPROC = void function (GLenum target, GLenum format, GLenum type, void* row, void* column, void* span);
alias PFNGLSEPARABLEFILTER2DPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* row, const(void)* column);
alias PFNGLGETHISTOGRAMPROC = void function (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
alias PFNGLGETHISTOGRAMPARAMETERFVPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETHISTOGRAMPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETMINMAXPROC = void function (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
alias PFNGLGETMINMAXPARAMETERFVPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETMINMAXPARAMETERIVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLHISTOGRAMPROC = void function (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias PFNGLMINMAXPROC = void function (GLenum target, GLenum internalformat, GLboolean sink);
alias PFNGLRESETHISTOGRAMPROC = void function (GLenum target);
alias PFNGLRESETMINMAXPROC = void function (GLenum target);
void glColorTable (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* table);
void glColorTableParameterfv (GLenum target, GLenum pname, const(GLfloat)* params);
void glColorTableParameteriv (GLenum target, GLenum pname, const(GLint)* params);
void glCopyColorTable (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTable (GLenum target, GLenum format, GLenum type, void* table);
void glGetColorTableParameterfv (GLenum target, GLenum pname, GLfloat* params);
void glGetColorTableParameteriv (GLenum target, GLenum pname, GLint* params);
void glColorSubTable (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(void)* data);
void glCopyColorSubTable (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
void glConvolutionFilter1D (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* image);
void glConvolutionFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* image);
void glConvolutionParameterf (GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfv (GLenum target, GLenum pname, const(GLfloat)* params);
void glConvolutionParameteri (GLenum target, GLenum pname, GLint params);
void glConvolutionParameteriv (GLenum target, GLenum pname, const(GLint)* params);
void glCopyConvolutionFilter1D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilter (GLenum target, GLenum format, GLenum type, void* image);
void glGetConvolutionParameterfv (GLenum target, GLenum pname, GLfloat* params);
void glGetConvolutionParameteriv (GLenum target, GLenum pname, GLint* params);
void glGetSeparableFilter (GLenum target, GLenum format, GLenum type, void* row, void* column, void* span);
void glSeparableFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* row, const(void)* column);
void glGetHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
void glGetHistogramParameterfv (GLenum target, GLenum pname, GLfloat* params);
void glGetHistogramParameteriv (GLenum target, GLenum pname, GLint* params);
void glGetMinmax (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
void glGetMinmaxParameterfv (GLenum target, GLenum pname, GLfloat* params);
void glGetMinmaxParameteriv (GLenum target, GLenum pname, GLint* params);
void glHistogram (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glMinmax (GLenum target, GLenum internalformat, GLboolean sink);
void glResetHistogram (GLenum target);
void glResetMinmax (GLenum target);

/* GL_ARB_imaging */

enum GL_ARB_indirect_parameters = 1;
enum GL_PARAMETER_BUFFER_ARB = 0x80EE;
enum GL_PARAMETER_BUFFER_BINDING_ARB = 0x80EF;
alias PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC = void function (GLenum mode, GLintptr indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);
alias PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC = void function (GLenum mode, GLenum type, GLintptr indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);
void glMultiDrawArraysIndirectCountARB (GLenum mode, GLintptr indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);
void glMultiDrawElementsIndirectCountARB (GLenum mode, GLenum type, GLintptr indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);

/* GL_ARB_indirect_parameters */

enum GL_ARB_instanced_arrays = 1;
enum GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = 0x88FE;
alias PFNGLVERTEXATTRIBDIVISORARBPROC = void function (GLuint index, GLuint divisor);
void glVertexAttribDivisorARB (GLuint index, GLuint divisor);

/* GL_ARB_instanced_arrays */

enum GL_ARB_internalformat_query = 1;
/* GL_ARB_internalformat_query */

enum GL_ARB_internalformat_query2 = 1;
enum GL_SRGB_DECODE_ARB = 0x8299;
/* GL_ARB_internalformat_query2 */

enum GL_ARB_invalidate_subdata = 1;
/* GL_ARB_invalidate_subdata */

enum GL_ARB_map_buffer_alignment = 1;
/* GL_ARB_map_buffer_alignment */

enum GL_ARB_map_buffer_range = 1;
/* GL_ARB_map_buffer_range */

enum GL_ARB_matrix_palette = 1;
enum GL_MATRIX_PALETTE_ARB = 0x8840;
enum GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841;
enum GL_MAX_PALETTE_MATRICES_ARB = 0x8842;
enum GL_CURRENT_PALETTE_MATRIX_ARB = 0x8843;
enum GL_MATRIX_INDEX_ARRAY_ARB = 0x8844;
enum GL_CURRENT_MATRIX_INDEX_ARB = 0x8845;
enum GL_MATRIX_INDEX_ARRAY_SIZE_ARB = 0x8846;
enum GL_MATRIX_INDEX_ARRAY_TYPE_ARB = 0x8847;
enum GL_MATRIX_INDEX_ARRAY_STRIDE_ARB = 0x8848;
enum GL_MATRIX_INDEX_ARRAY_POINTER_ARB = 0x8849;
alias PFNGLCURRENTPALETTEMATRIXARBPROC = void function (GLint index);
alias PFNGLMATRIXINDEXUBVARBPROC = void function (GLint size, const(GLubyte)* indices);
alias PFNGLMATRIXINDEXUSVARBPROC = void function (GLint size, const(GLushort)* indices);
alias PFNGLMATRIXINDEXUIVARBPROC = void function (GLint size, const(GLuint)* indices);
alias PFNGLMATRIXINDEXPOINTERARBPROC = void function (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glCurrentPaletteMatrixARB (GLint index);
void glMatrixIndexubvARB (GLint size, const(GLubyte)* indices);
void glMatrixIndexusvARB (GLint size, const(GLushort)* indices);
void glMatrixIndexuivARB (GLint size, const(GLuint)* indices);
void glMatrixIndexPointerARB (GLint size, GLenum type, GLsizei stride, const(void)* pointer);

/* GL_ARB_matrix_palette */

enum GL_ARB_multi_bind = 1;
/* GL_ARB_multi_bind */

enum GL_ARB_multi_draw_indirect = 1;
/* GL_ARB_multi_draw_indirect */

enum GL_ARB_multisample = 1;
enum GL_MULTISAMPLE_ARB = 0x809D;
enum GL_SAMPLE_ALPHA_TO_COVERAGE_ARB = 0x809E;
enum GL_SAMPLE_ALPHA_TO_ONE_ARB = 0x809F;
enum GL_SAMPLE_COVERAGE_ARB = 0x80A0;
enum GL_SAMPLE_BUFFERS_ARB = 0x80A8;
enum GL_SAMPLES_ARB = 0x80A9;
enum GL_SAMPLE_COVERAGE_VALUE_ARB = 0x80AA;
enum GL_SAMPLE_COVERAGE_INVERT_ARB = 0x80AB;
enum GL_MULTISAMPLE_BIT_ARB = 0x20000000;
alias PFNGLSAMPLECOVERAGEARBPROC = void function (GLfloat value, GLboolean invert);
void glSampleCoverageARB (GLfloat value, GLboolean invert);

/* GL_ARB_multisample */

enum GL_ARB_multitexture = 1;
enum GL_TEXTURE0_ARB = 0x84C0;
enum GL_TEXTURE1_ARB = 0x84C1;
enum GL_TEXTURE2_ARB = 0x84C2;
enum GL_TEXTURE3_ARB = 0x84C3;
enum GL_TEXTURE4_ARB = 0x84C4;
enum GL_TEXTURE5_ARB = 0x84C5;
enum GL_TEXTURE6_ARB = 0x84C6;
enum GL_TEXTURE7_ARB = 0x84C7;
enum GL_TEXTURE8_ARB = 0x84C8;
enum GL_TEXTURE9_ARB = 0x84C9;
enum GL_TEXTURE10_ARB = 0x84CA;
enum GL_TEXTURE11_ARB = 0x84CB;
enum GL_TEXTURE12_ARB = 0x84CC;
enum GL_TEXTURE13_ARB = 0x84CD;
enum GL_TEXTURE14_ARB = 0x84CE;
enum GL_TEXTURE15_ARB = 0x84CF;
enum GL_TEXTURE16_ARB = 0x84D0;
enum GL_TEXTURE17_ARB = 0x84D1;
enum GL_TEXTURE18_ARB = 0x84D2;
enum GL_TEXTURE19_ARB = 0x84D3;
enum GL_TEXTURE20_ARB = 0x84D4;
enum GL_TEXTURE21_ARB = 0x84D5;
enum GL_TEXTURE22_ARB = 0x84D6;
enum GL_TEXTURE23_ARB = 0x84D7;
enum GL_TEXTURE24_ARB = 0x84D8;
enum GL_TEXTURE25_ARB = 0x84D9;
enum GL_TEXTURE26_ARB = 0x84DA;
enum GL_TEXTURE27_ARB = 0x84DB;
enum GL_TEXTURE28_ARB = 0x84DC;
enum GL_TEXTURE29_ARB = 0x84DD;
enum GL_TEXTURE30_ARB = 0x84DE;
enum GL_TEXTURE31_ARB = 0x84DF;
enum GL_ACTIVE_TEXTURE_ARB = 0x84E0;
enum GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1;
enum GL_MAX_TEXTURE_UNITS_ARB = 0x84E2;
alias PFNGLACTIVETEXTUREARBPROC = void function (GLenum texture);
alias PFNGLCLIENTACTIVETEXTUREARBPROC = void function (GLenum texture);
alias PFNGLMULTITEXCOORD1DARBPROC = void function (GLenum target, GLdouble s);
alias PFNGLMULTITEXCOORD1DVARBPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD1FARBPROC = void function (GLenum target, GLfloat s);
alias PFNGLMULTITEXCOORD1FVARBPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD1IARBPROC = void function (GLenum target, GLint s);
alias PFNGLMULTITEXCOORD1IVARBPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD1SARBPROC = void function (GLenum target, GLshort s);
alias PFNGLMULTITEXCOORD1SVARBPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLMULTITEXCOORD2DARBPROC = void function (GLenum target, GLdouble s, GLdouble t);
alias PFNGLMULTITEXCOORD2DVARBPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD2FARBPROC = void function (GLenum target, GLfloat s, GLfloat t);
alias PFNGLMULTITEXCOORD2FVARBPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD2IARBPROC = void function (GLenum target, GLint s, GLint t);
alias PFNGLMULTITEXCOORD2IVARBPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD2SARBPROC = void function (GLenum target, GLshort s, GLshort t);
alias PFNGLMULTITEXCOORD2SVARBPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLMULTITEXCOORD3DARBPROC = void function (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias PFNGLMULTITEXCOORD3DVARBPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD3FARBPROC = void function (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias PFNGLMULTITEXCOORD3FVARBPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD3IARBPROC = void function (GLenum target, GLint s, GLint t, GLint r);
alias PFNGLMULTITEXCOORD3IVARBPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD3SARBPROC = void function (GLenum target, GLshort s, GLshort t, GLshort r);
alias PFNGLMULTITEXCOORD3SVARBPROC = void function (GLenum target, const(GLshort)* v);
alias PFNGLMULTITEXCOORD4DARBPROC = void function (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias PFNGLMULTITEXCOORD4DVARBPROC = void function (GLenum target, const(GLdouble)* v);
alias PFNGLMULTITEXCOORD4FARBPROC = void function (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias PFNGLMULTITEXCOORD4FVARBPROC = void function (GLenum target, const(GLfloat)* v);
alias PFNGLMULTITEXCOORD4IARBPROC = void function (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias PFNGLMULTITEXCOORD4IVARBPROC = void function (GLenum target, const(GLint)* v);
alias PFNGLMULTITEXCOORD4SARBPROC = void function (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias PFNGLMULTITEXCOORD4SVARBPROC = void function (GLenum target, const(GLshort)* v);
void glActiveTextureARB (GLenum texture);
void glClientActiveTextureARB (GLenum texture);
void glMultiTexCoord1dARB (GLenum target, GLdouble s);
void glMultiTexCoord1dvARB (GLenum target, const(GLdouble)* v);
void glMultiTexCoord1fARB (GLenum target, GLfloat s);
void glMultiTexCoord1fvARB (GLenum target, const(GLfloat)* v);
void glMultiTexCoord1iARB (GLenum target, GLint s);
void glMultiTexCoord1ivARB (GLenum target, const(GLint)* v);
void glMultiTexCoord1sARB (GLenum target, GLshort s);
void glMultiTexCoord1svARB (GLenum target, const(GLshort)* v);
void glMultiTexCoord2dARB (GLenum target, GLdouble s, GLdouble t);
void glMultiTexCoord2dvARB (GLenum target, const(GLdouble)* v);
void glMultiTexCoord2fARB (GLenum target, GLfloat s, GLfloat t);
void glMultiTexCoord2fvARB (GLenum target, const(GLfloat)* v);
void glMultiTexCoord2iARB (GLenum target, GLint s, GLint t);
void glMultiTexCoord2ivARB (GLenum target, const(GLint)* v);
void glMultiTexCoord2sARB (GLenum target, GLshort s, GLshort t);
void glMultiTexCoord2svARB (GLenum target, const(GLshort)* v);
void glMultiTexCoord3dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r);
void glMultiTexCoord3dvARB (GLenum target, const(GLdouble)* v);
void glMultiTexCoord3fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r);
void glMultiTexCoord3fvARB (GLenum target, const(GLfloat)* v);
void glMultiTexCoord3iARB (GLenum target, GLint s, GLint t, GLint r);
void glMultiTexCoord3ivARB (GLenum target, const(GLint)* v);
void glMultiTexCoord3sARB (GLenum target, GLshort s, GLshort t, GLshort r);
void glMultiTexCoord3svARB (GLenum target, const(GLshort)* v);
void glMultiTexCoord4dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glMultiTexCoord4dvARB (GLenum target, const(GLdouble)* v);
void glMultiTexCoord4fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glMultiTexCoord4fvARB (GLenum target, const(GLfloat)* v);
void glMultiTexCoord4iARB (GLenum target, GLint s, GLint t, GLint r, GLint q);
void glMultiTexCoord4ivARB (GLenum target, const(GLint)* v);
void glMultiTexCoord4sARB (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void glMultiTexCoord4svARB (GLenum target, const(GLshort)* v);

/* GL_ARB_multitexture */

enum GL_ARB_occlusion_query = 1;
enum GL_QUERY_COUNTER_BITS_ARB = 0x8864;
enum GL_CURRENT_QUERY_ARB = 0x8865;
enum GL_QUERY_RESULT_ARB = 0x8866;
enum GL_QUERY_RESULT_AVAILABLE_ARB = 0x8867;
enum GL_SAMPLES_PASSED_ARB = 0x8914;
alias PFNGLGENQUERIESARBPROC = void function (GLsizei n, GLuint* ids);
alias PFNGLDELETEQUERIESARBPROC = void function (GLsizei n, const(GLuint)* ids);
alias PFNGLISQUERYARBPROC = ubyte function (GLuint id);
alias PFNGLBEGINQUERYARBPROC = void function (GLenum target, GLuint id);
alias PFNGLENDQUERYARBPROC = void function (GLenum target);
alias PFNGLGETQUERYIVARBPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETQUERYOBJECTIVARBPROC = void function (GLuint id, GLenum pname, GLint* params);
alias PFNGLGETQUERYOBJECTUIVARBPROC = void function (GLuint id, GLenum pname, GLuint* params);
void glGenQueriesARB (GLsizei n, GLuint* ids);
void glDeleteQueriesARB (GLsizei n, const(GLuint)* ids);
GLboolean glIsQueryARB (GLuint id);
void glBeginQueryARB (GLenum target, GLuint id);
void glEndQueryARB (GLenum target);
void glGetQueryivARB (GLenum target, GLenum pname, GLint* params);
void glGetQueryObjectivARB (GLuint id, GLenum pname, GLint* params);
void glGetQueryObjectuivARB (GLuint id, GLenum pname, GLuint* params);

/* GL_ARB_occlusion_query */

enum GL_ARB_occlusion_query2 = 1;
/* GL_ARB_occlusion_query2 */

enum GL_ARB_pixel_buffer_object = 1;
enum GL_PIXEL_PACK_BUFFER_ARB = 0x88EB;
enum GL_PIXEL_UNPACK_BUFFER_ARB = 0x88EC;
enum GL_PIXEL_PACK_BUFFER_BINDING_ARB = 0x88ED;
enum GL_PIXEL_UNPACK_BUFFER_BINDING_ARB = 0x88EF;
/* GL_ARB_pixel_buffer_object */

enum GL_ARB_point_parameters = 1;
enum GL_POINT_SIZE_MIN_ARB = 0x8126;
enum GL_POINT_SIZE_MAX_ARB = 0x8127;
enum GL_POINT_FADE_THRESHOLD_SIZE_ARB = 0x8128;
enum GL_POINT_DISTANCE_ATTENUATION_ARB = 0x8129;
alias PFNGLPOINTPARAMETERFARBPROC = void function (GLenum pname, GLfloat param);
alias PFNGLPOINTPARAMETERFVARBPROC = void function (GLenum pname, const(GLfloat)* params);
void glPointParameterfARB (GLenum pname, GLfloat param);
void glPointParameterfvARB (GLenum pname, const(GLfloat)* params);

/* GL_ARB_point_parameters */

enum GL_ARB_point_sprite = 1;
enum GL_POINT_SPRITE_ARB = 0x8861;
enum GL_COORD_REPLACE_ARB = 0x8862;
/* GL_ARB_point_sprite */

enum GL_ARB_program_interface_query = 1;
/* GL_ARB_program_interface_query */

enum GL_ARB_provoking_vertex = 1;
/* GL_ARB_provoking_vertex */

enum GL_ARB_query_buffer_object = 1;
/* GL_ARB_query_buffer_object */

enum GL_ARB_robust_buffer_access_behavior = 1;
/* GL_ARB_robust_buffer_access_behavior */

enum GL_ARB_robustness = 1;
enum GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 0x00000004;
enum GL_LOSE_CONTEXT_ON_RESET_ARB = 0x8252;
enum GL_GUILTY_CONTEXT_RESET_ARB = 0x8253;
enum GL_INNOCENT_CONTEXT_RESET_ARB = 0x8254;
enum GL_UNKNOWN_CONTEXT_RESET_ARB = 0x8255;
enum GL_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256;
enum GL_NO_RESET_NOTIFICATION_ARB = 0x8261;
alias PFNGLGETGRAPHICSRESETSTATUSARBPROC = uint function ();
alias PFNGLGETNTEXIMAGEARBPROC = void function (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* img);
alias PFNGLREADNPIXELSARBPROC = void function (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data);
alias PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC = void function (GLenum target, GLint lod, GLsizei bufSize, void* img);
alias PFNGLGETNUNIFORMFVARBPROC = void function (GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
alias PFNGLGETNUNIFORMIVARBPROC = void function (GLuint program, GLint location, GLsizei bufSize, GLint* params);
alias PFNGLGETNUNIFORMUIVARBPROC = void function (GLuint program, GLint location, GLsizei bufSize, GLuint* params);
alias PFNGLGETNUNIFORMDVARBPROC = void function (GLuint program, GLint location, GLsizei bufSize, GLdouble* params);
alias PFNGLGETNMAPDVARBPROC = void function (GLenum target, GLenum query, GLsizei bufSize, GLdouble* v);
alias PFNGLGETNMAPFVARBPROC = void function (GLenum target, GLenum query, GLsizei bufSize, GLfloat* v);
alias PFNGLGETNMAPIVARBPROC = void function (GLenum target, GLenum query, GLsizei bufSize, GLint* v);
alias PFNGLGETNPIXELMAPFVARBPROC = void function (GLenum map, GLsizei bufSize, GLfloat* values);
alias PFNGLGETNPIXELMAPUIVARBPROC = void function (GLenum map, GLsizei bufSize, GLuint* values);
alias PFNGLGETNPIXELMAPUSVARBPROC = void function (GLenum map, GLsizei bufSize, GLushort* values);
alias PFNGLGETNPOLYGONSTIPPLEARBPROC = void function (GLsizei bufSize, GLubyte* pattern);
alias PFNGLGETNCOLORTABLEARBPROC = void function (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table);
alias PFNGLGETNCONVOLUTIONFILTERARBPROC = void function (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image);
alias PFNGLGETNSEPARABLEFILTERARBPROC = void function (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, void* column, void* span);
alias PFNGLGETNHISTOGRAMARBPROC = void function (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values);
alias PFNGLGETNMINMAXARBPROC = void function (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values);
GLenum glGetGraphicsResetStatusARB ();
void glGetnTexImageARB (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* img);
void glReadnPixelsARB (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data);
void glGetnCompressedTexImageARB (GLenum target, GLint lod, GLsizei bufSize, void* img);
void glGetnUniformfvARB (GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
void glGetnUniformivARB (GLuint program, GLint location, GLsizei bufSize, GLint* params);
void glGetnUniformuivARB (GLuint program, GLint location, GLsizei bufSize, GLuint* params);
void glGetnUniformdvARB (GLuint program, GLint location, GLsizei bufSize, GLdouble* params);
void glGetnMapdvARB (GLenum target, GLenum query, GLsizei bufSize, GLdouble* v);
void glGetnMapfvARB (GLenum target, GLenum query, GLsizei bufSize, GLfloat* v);
void glGetnMapivARB (GLenum target, GLenum query, GLsizei bufSize, GLint* v);
void glGetnPixelMapfvARB (GLenum map, GLsizei bufSize, GLfloat* values);
void glGetnPixelMapuivARB (GLenum map, GLsizei bufSize, GLuint* values);
void glGetnPixelMapusvARB (GLenum map, GLsizei bufSize, GLushort* values);
void glGetnPolygonStippleARB (GLsizei bufSize, GLubyte* pattern);
void glGetnColorTableARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table);
void glGetnConvolutionFilterARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image);
void glGetnSeparableFilterARB (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, void* column, void* span);
void glGetnHistogramARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values);
void glGetnMinmaxARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values);

/* GL_ARB_robustness */

enum GL_ARB_robustness_isolation = 1;
/* GL_ARB_robustness_isolation */

enum GL_ARB_sample_shading = 1;
enum GL_SAMPLE_SHADING_ARB = 0x8C36;
enum GL_MIN_SAMPLE_SHADING_VALUE_ARB = 0x8C37;
alias PFNGLMINSAMPLESHADINGARBPROC = void function (GLfloat value);
void glMinSampleShadingARB (GLfloat value);

/* GL_ARB_sample_shading */

enum GL_ARB_sampler_objects = 1;
/* GL_ARB_sampler_objects */

enum GL_ARB_seamless_cube_map = 1;
/* GL_ARB_seamless_cube_map */

enum GL_ARB_seamless_cubemap_per_texture = 1;
/* GL_ARB_seamless_cubemap_per_texture */

enum GL_ARB_separate_shader_objects = 1;
/* GL_ARB_separate_shader_objects */

enum GL_ARB_shader_atomic_counters = 1;
/* GL_ARB_shader_atomic_counters */

enum GL_ARB_shader_bit_encoding = 1;
/* GL_ARB_shader_bit_encoding */

enum GL_ARB_shader_draw_parameters = 1;
/* GL_ARB_shader_draw_parameters */

enum GL_ARB_shader_group_vote = 1;
/* GL_ARB_shader_group_vote */

enum GL_ARB_shader_image_load_store = 1;
/* GL_ARB_shader_image_load_store */

enum GL_ARB_shader_image_size = 1;
/* GL_ARB_shader_image_size */

enum GL_ARB_shader_objects = 1;

alias GLhandleARB = uint;

alias GLcharARB = char;
enum GL_PROGRAM_OBJECT_ARB = 0x8B40;
enum GL_SHADER_OBJECT_ARB = 0x8B48;
enum GL_OBJECT_TYPE_ARB = 0x8B4E;
enum GL_OBJECT_SUBTYPE_ARB = 0x8B4F;
enum GL_FLOAT_VEC2_ARB = 0x8B50;
enum GL_FLOAT_VEC3_ARB = 0x8B51;
enum GL_FLOAT_VEC4_ARB = 0x8B52;
enum GL_INT_VEC2_ARB = 0x8B53;
enum GL_INT_VEC3_ARB = 0x8B54;
enum GL_INT_VEC4_ARB = 0x8B55;
enum GL_BOOL_ARB = 0x8B56;
enum GL_BOOL_VEC2_ARB = 0x8B57;
enum GL_BOOL_VEC3_ARB = 0x8B58;
enum GL_BOOL_VEC4_ARB = 0x8B59;
enum GL_FLOAT_MAT2_ARB = 0x8B5A;
enum GL_FLOAT_MAT3_ARB = 0x8B5B;
enum GL_FLOAT_MAT4_ARB = 0x8B5C;
enum GL_SAMPLER_1D_ARB = 0x8B5D;
enum GL_SAMPLER_2D_ARB = 0x8B5E;
enum GL_SAMPLER_3D_ARB = 0x8B5F;
enum GL_SAMPLER_CUBE_ARB = 0x8B60;
enum GL_SAMPLER_1D_SHADOW_ARB = 0x8B61;
enum GL_SAMPLER_2D_SHADOW_ARB = 0x8B62;
enum GL_SAMPLER_2D_RECT_ARB = 0x8B63;
enum GL_SAMPLER_2D_RECT_SHADOW_ARB = 0x8B64;
enum GL_OBJECT_DELETE_STATUS_ARB = 0x8B80;
enum GL_OBJECT_COMPILE_STATUS_ARB = 0x8B81;
enum GL_OBJECT_LINK_STATUS_ARB = 0x8B82;
enum GL_OBJECT_VALIDATE_STATUS_ARB = 0x8B83;
enum GL_OBJECT_INFO_LOG_LENGTH_ARB = 0x8B84;
enum GL_OBJECT_ATTACHED_OBJECTS_ARB = 0x8B85;
enum GL_OBJECT_ACTIVE_UNIFORMS_ARB = 0x8B86;
enum GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87;
enum GL_OBJECT_SHADER_SOURCE_LENGTH_ARB = 0x8B88;
alias PFNGLDELETEOBJECTARBPROC = void function (GLhandleARB obj);
alias PFNGLGETHANDLEARBPROC = uint function (GLenum pname);
alias PFNGLDETACHOBJECTARBPROC = void function (GLhandleARB containerObj, GLhandleARB attachedObj);
alias PFNGLCREATESHADEROBJECTARBPROC = uint function (GLenum shaderType);
alias PFNGLSHADERSOURCEARBPROC = void function (GLhandleARB shaderObj, GLsizei count, const(GLcharARB*)* string, const(GLint)* length);
alias PFNGLCOMPILESHADERARBPROC = void function (GLhandleARB shaderObj);
alias PFNGLCREATEPROGRAMOBJECTARBPROC = uint function ();
alias PFNGLATTACHOBJECTARBPROC = void function (GLhandleARB containerObj, GLhandleARB obj);
alias PFNGLLINKPROGRAMARBPROC = void function (GLhandleARB programObj);
alias PFNGLUSEPROGRAMOBJECTARBPROC = void function (GLhandleARB programObj);
alias PFNGLVALIDATEPROGRAMARBPROC = void function (GLhandleARB programObj);
alias PFNGLUNIFORM1FARBPROC = void function (GLint location, GLfloat v0);
alias PFNGLUNIFORM2FARBPROC = void function (GLint location, GLfloat v0, GLfloat v1);
alias PFNGLUNIFORM3FARBPROC = void function (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
alias PFNGLUNIFORM4FARBPROC = void function (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
alias PFNGLUNIFORM1IARBPROC = void function (GLint location, GLint v0);
alias PFNGLUNIFORM2IARBPROC = void function (GLint location, GLint v0, GLint v1);
alias PFNGLUNIFORM3IARBPROC = void function (GLint location, GLint v0, GLint v1, GLint v2);
alias PFNGLUNIFORM4IARBPROC = void function (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
alias PFNGLUNIFORM1FVARBPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM2FVARBPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM3FVARBPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM4FVARBPROC = void function (GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLUNIFORM1IVARBPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORM2IVARBPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORM3IVARBPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORM4IVARBPROC = void function (GLint location, GLsizei count, const(GLint)* value);
alias PFNGLUNIFORMMATRIX2FVARBPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX3FVARBPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLUNIFORMMATRIX4FVARBPROC = void function (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLGETOBJECTPARAMETERFVARBPROC = void function (GLhandleARB obj, GLenum pname, GLfloat* params);
alias PFNGLGETOBJECTPARAMETERIVARBPROC = void function (GLhandleARB obj, GLenum pname, GLint* params);
alias PFNGLGETINFOLOGARBPROC = void function (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog);
alias PFNGLGETATTACHEDOBJECTSARBPROC = void function (GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj);
alias PFNGLGETUNIFORMLOCATIONARBPROC = int function (GLhandleARB programObj, const(GLcharARB)* name);
alias PFNGLGETACTIVEUNIFORMARBPROC = void function (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name);
alias PFNGLGETUNIFORMFVARBPROC = void function (GLhandleARB programObj, GLint location, GLfloat* params);
alias PFNGLGETUNIFORMIVARBPROC = void function (GLhandleARB programObj, GLint location, GLint* params);
alias PFNGLGETSHADERSOURCEARBPROC = void function (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source);
void glDeleteObjectARB (GLhandleARB obj);
GLhandleARB glGetHandleARB (GLenum pname);
void glDetachObjectARB (GLhandleARB containerObj, GLhandleARB attachedObj);
GLhandleARB glCreateShaderObjectARB (GLenum shaderType);
void glShaderSourceARB (GLhandleARB shaderObj, GLsizei count, const(GLcharARB*)* string, const(GLint)* length);
void glCompileShaderARB (GLhandleARB shaderObj);
GLhandleARB glCreateProgramObjectARB ();
void glAttachObjectARB (GLhandleARB containerObj, GLhandleARB obj);
void glLinkProgramARB (GLhandleARB programObj);
void glUseProgramObjectARB (GLhandleARB programObj);
void glValidateProgramARB (GLhandleARB programObj);
void glUniform1fARB (GLint location, GLfloat v0);
void glUniform2fARB (GLint location, GLfloat v0, GLfloat v1);
void glUniform3fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform4fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform1iARB (GLint location, GLint v0);
void glUniform2iARB (GLint location, GLint v0, GLint v1);
void glUniform3iARB (GLint location, GLint v0, GLint v1, GLint v2);
void glUniform4iARB (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform1fvARB (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform2fvARB (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform3fvARB (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform4fvARB (GLint location, GLsizei count, const(GLfloat)* value);
void glUniform1ivARB (GLint location, GLsizei count, const(GLint)* value);
void glUniform2ivARB (GLint location, GLsizei count, const(GLint)* value);
void glUniform3ivARB (GLint location, GLsizei count, const(GLint)* value);
void glUniform4ivARB (GLint location, GLsizei count, const(GLint)* value);
void glUniformMatrix2fvARB (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix3fvARB (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glUniformMatrix4fvARB (GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glGetObjectParameterfvARB (GLhandleARB obj, GLenum pname, GLfloat* params);
void glGetObjectParameterivARB (GLhandleARB obj, GLenum pname, GLint* params);
void glGetInfoLogARB (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog);
void glGetAttachedObjectsARB (GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj);
GLint glGetUniformLocationARB (GLhandleARB programObj, const(GLcharARB)* name);
void glGetActiveUniformARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name);
void glGetUniformfvARB (GLhandleARB programObj, GLint location, GLfloat* params);
void glGetUniformivARB (GLhandleARB programObj, GLint location, GLint* params);
void glGetShaderSourceARB (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source);

/* GL_ARB_shader_objects */

enum GL_ARB_shader_precision = 1;
/* GL_ARB_shader_precision */

enum GL_ARB_shader_stencil_export = 1;
/* GL_ARB_shader_stencil_export */

enum GL_ARB_shader_storage_buffer_object = 1;
/* GL_ARB_shader_storage_buffer_object */

enum GL_ARB_shader_subroutine = 1;
/* GL_ARB_shader_subroutine */

enum GL_ARB_shader_texture_lod = 1;
/* GL_ARB_shader_texture_lod */

enum GL_ARB_shading_language_100 = 1;
enum GL_SHADING_LANGUAGE_VERSION_ARB = 0x8B8C;
/* GL_ARB_shading_language_100 */

enum GL_ARB_shading_language_420pack = 1;
/* GL_ARB_shading_language_420pack */

enum GL_ARB_shading_language_include = 1;
enum GL_SHADER_INCLUDE_ARB = 0x8DAE;
enum GL_NAMED_STRING_LENGTH_ARB = 0x8DE9;
enum GL_NAMED_STRING_TYPE_ARB = 0x8DEA;
alias PFNGLNAMEDSTRINGARBPROC = void function (GLenum type, GLint namelen, const(GLchar)* name, GLint stringlen, const(GLchar)* string);
alias PFNGLDELETENAMEDSTRINGARBPROC = void function (GLint namelen, const(GLchar)* name);
alias PFNGLCOMPILESHADERINCLUDEARBPROC = void function (GLuint shader, GLsizei count, const(GLchar*)* path, const(GLint)* length);
alias PFNGLISNAMEDSTRINGARBPROC = ubyte function (GLint namelen, const(GLchar)* name);
alias PFNGLGETNAMEDSTRINGARBPROC = void function (GLint namelen, const(GLchar)* name, GLsizei bufSize, GLint* stringlen, GLchar* string);
alias PFNGLGETNAMEDSTRINGIVARBPROC = void function (GLint namelen, const(GLchar)* name, GLenum pname, GLint* params);
void glNamedStringARB (GLenum type, GLint namelen, const(GLchar)* name, GLint stringlen, const(GLchar)* string);
void glDeleteNamedStringARB (GLint namelen, const(GLchar)* name);
void glCompileShaderIncludeARB (GLuint shader, GLsizei count, const(GLchar*)* path, const(GLint)* length);
GLboolean glIsNamedStringARB (GLint namelen, const(GLchar)* name);
void glGetNamedStringARB (GLint namelen, const(GLchar)* name, GLsizei bufSize, GLint* stringlen, GLchar* string);
void glGetNamedStringivARB (GLint namelen, const(GLchar)* name, GLenum pname, GLint* params);

/* GL_ARB_shading_language_include */

enum GL_ARB_shading_language_packing = 1;
/* GL_ARB_shading_language_packing */

enum GL_ARB_shadow = 1;
enum GL_TEXTURE_COMPARE_MODE_ARB = 0x884C;
enum GL_TEXTURE_COMPARE_FUNC_ARB = 0x884D;
enum GL_COMPARE_R_TO_TEXTURE_ARB = 0x884E;
/* GL_ARB_shadow */

enum GL_ARB_shadow_ambient = 1;
enum GL_TEXTURE_COMPARE_FAIL_VALUE_ARB = 0x80BF;
/* GL_ARB_shadow_ambient */

enum GL_ARB_sparse_texture = 1;
enum GL_TEXTURE_SPARSE_ARB = 0x91A6;
enum GL_VIRTUAL_PAGE_SIZE_INDEX_ARB = 0x91A7;
enum GL_MIN_SPARSE_LEVEL_ARB = 0x919B;
enum GL_NUM_VIRTUAL_PAGE_SIZES_ARB = 0x91A8;
enum GL_VIRTUAL_PAGE_SIZE_X_ARB = 0x9195;
enum GL_VIRTUAL_PAGE_SIZE_Y_ARB = 0x9196;
enum GL_VIRTUAL_PAGE_SIZE_Z_ARB = 0x9197;
enum GL_MAX_SPARSE_TEXTURE_SIZE_ARB = 0x9198;
enum GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB = 0x9199;
enum GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB = 0x919A;
enum GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB = 0x91A9;
alias PFNGLTEXPAGECOMMITMENTARBPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean resident);
void glTexPageCommitmentARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean resident);

/* GL_ARB_sparse_texture */

enum GL_ARB_stencil_texturing = 1;
/* GL_ARB_stencil_texturing */

enum GL_ARB_sync = 1;
/* GL_ARB_sync */

enum GL_ARB_tessellation_shader = 1;
/* GL_ARB_tessellation_shader */

enum GL_ARB_texture_border_clamp = 1;
enum GL_CLAMP_TO_BORDER_ARB = 0x812D;
/* GL_ARB_texture_border_clamp */

enum GL_ARB_texture_buffer_object = 1;
enum GL_TEXTURE_BUFFER_ARB = 0x8C2A;
enum GL_MAX_TEXTURE_BUFFER_SIZE_ARB = 0x8C2B;
enum GL_TEXTURE_BINDING_BUFFER_ARB = 0x8C2C;
enum GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = 0x8C2D;
enum GL_TEXTURE_BUFFER_FORMAT_ARB = 0x8C2E;
alias PFNGLTEXBUFFERARBPROC = void function (GLenum target, GLenum internalformat, GLuint buffer);
void glTexBufferARB (GLenum target, GLenum internalformat, GLuint buffer);

/* GL_ARB_texture_buffer_object */

enum GL_ARB_texture_buffer_object_rgb32 = 1;
/* GL_ARB_texture_buffer_object_rgb32 */

enum GL_ARB_texture_buffer_range = 1;
/* GL_ARB_texture_buffer_range */

enum GL_ARB_texture_compression = 1;
enum GL_COMPRESSED_ALPHA_ARB = 0x84E9;
enum GL_COMPRESSED_LUMINANCE_ARB = 0x84EA;
enum GL_COMPRESSED_LUMINANCE_ALPHA_ARB = 0x84EB;
enum GL_COMPRESSED_INTENSITY_ARB = 0x84EC;
enum GL_COMPRESSED_RGB_ARB = 0x84ED;
enum GL_COMPRESSED_RGBA_ARB = 0x84EE;
enum GL_TEXTURE_COMPRESSION_HINT_ARB = 0x84EF;
enum GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 0x86A0;
enum GL_TEXTURE_COMPRESSED_ARB = 0x86A1;
enum GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A2;
enum GL_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A3;
alias PFNGLCOMPRESSEDTEXIMAGE3DARBPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXIMAGE2DARBPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXIMAGE1DARBPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC = void function (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* data);
alias PFNGLGETCOMPRESSEDTEXIMAGEARBPROC = void function (GLenum target, GLint level, void* img);
void glCompressedTexImage3DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* data);
void glCompressedTexImage2DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* data);
void glCompressedTexImage1DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* data);
void glCompressedTexSubImage3DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* data);
void glCompressedTexSubImage2DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* data);
void glCompressedTexSubImage1DARB (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* data);
void glGetCompressedTexImageARB (GLenum target, GLint level, void* img);

/* GL_ARB_texture_compression */

enum GL_ARB_texture_compression_bptc = 1;
enum GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = 0x8E8C;
enum GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = 0x8E8D;
enum GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = 0x8E8E;
enum GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = 0x8E8F;
/* GL_ARB_texture_compression_bptc */

enum GL_ARB_texture_compression_rgtc = 1;
/* GL_ARB_texture_compression_rgtc */

enum GL_ARB_texture_cube_map = 1;
enum GL_NORMAL_MAP_ARB = 0x8511;
enum GL_REFLECTION_MAP_ARB = 0x8512;
enum GL_TEXTURE_CUBE_MAP_ARB = 0x8513;
enum GL_TEXTURE_BINDING_CUBE_MAP_ARB = 0x8514;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = 0x8515;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = 0x8516;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = 0x8517;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = 0x8518;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = 0x8519;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = 0x851A;
enum GL_PROXY_TEXTURE_CUBE_MAP_ARB = 0x851B;
enum GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB = 0x851C;
/* GL_ARB_texture_cube_map */

enum GL_ARB_texture_cube_map_array = 1;
enum GL_TEXTURE_CUBE_MAP_ARRAY_ARB = 0x9009;
enum GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB = 0x900A;
enum GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = 0x900B;
enum GL_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900C;
enum GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB = 0x900D;
enum GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900E;
enum GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900F;
/* GL_ARB_texture_cube_map_array */

enum GL_ARB_texture_env_add = 1;
/* GL_ARB_texture_env_add */

enum GL_ARB_texture_env_combine = 1;
enum GL_COMBINE_ARB = 0x8570;
enum GL_COMBINE_RGB_ARB = 0x8571;
enum GL_COMBINE_ALPHA_ARB = 0x8572;
enum GL_SOURCE0_RGB_ARB = 0x8580;
enum GL_SOURCE1_RGB_ARB = 0x8581;
enum GL_SOURCE2_RGB_ARB = 0x8582;
enum GL_SOURCE0_ALPHA_ARB = 0x8588;
enum GL_SOURCE1_ALPHA_ARB = 0x8589;
enum GL_SOURCE2_ALPHA_ARB = 0x858A;
enum GL_OPERAND0_RGB_ARB = 0x8590;
enum GL_OPERAND1_RGB_ARB = 0x8591;
enum GL_OPERAND2_RGB_ARB = 0x8592;
enum GL_OPERAND0_ALPHA_ARB = 0x8598;
enum GL_OPERAND1_ALPHA_ARB = 0x8599;
enum GL_OPERAND2_ALPHA_ARB = 0x859A;
enum GL_RGB_SCALE_ARB = 0x8573;
enum GL_ADD_SIGNED_ARB = 0x8574;
enum GL_INTERPOLATE_ARB = 0x8575;
enum GL_SUBTRACT_ARB = 0x84E7;
enum GL_CONSTANT_ARB = 0x8576;
enum GL_PRIMARY_COLOR_ARB = 0x8577;
enum GL_PREVIOUS_ARB = 0x8578;
/* GL_ARB_texture_env_combine */

enum GL_ARB_texture_env_crossbar = 1;
/* GL_ARB_texture_env_crossbar */

enum GL_ARB_texture_env_dot3 = 1;
enum GL_DOT3_RGB_ARB = 0x86AE;
enum GL_DOT3_RGBA_ARB = 0x86AF;
/* GL_ARB_texture_env_dot3 */

enum GL_ARB_texture_float = 1;
enum GL_TEXTURE_RED_TYPE_ARB = 0x8C10;
enum GL_TEXTURE_GREEN_TYPE_ARB = 0x8C11;
enum GL_TEXTURE_BLUE_TYPE_ARB = 0x8C12;
enum GL_TEXTURE_ALPHA_TYPE_ARB = 0x8C13;
enum GL_TEXTURE_LUMINANCE_TYPE_ARB = 0x8C14;
enum GL_TEXTURE_INTENSITY_TYPE_ARB = 0x8C15;
enum GL_TEXTURE_DEPTH_TYPE_ARB = 0x8C16;
enum GL_UNSIGNED_NORMALIZED_ARB = 0x8C17;
enum GL_RGBA32F_ARB = 0x8814;
enum GL_RGB32F_ARB = 0x8815;
enum GL_ALPHA32F_ARB = 0x8816;
enum GL_INTENSITY32F_ARB = 0x8817;
enum GL_LUMINANCE32F_ARB = 0x8818;
enum GL_LUMINANCE_ALPHA32F_ARB = 0x8819;
enum GL_RGBA16F_ARB = 0x881A;
enum GL_RGB16F_ARB = 0x881B;
enum GL_ALPHA16F_ARB = 0x881C;
enum GL_INTENSITY16F_ARB = 0x881D;
enum GL_LUMINANCE16F_ARB = 0x881E;
enum GL_LUMINANCE_ALPHA16F_ARB = 0x881F;
/* GL_ARB_texture_float */

enum GL_ARB_texture_gather = 1;
enum GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5E;
enum GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5F;
enum GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB = 0x8F9F;
/* GL_ARB_texture_gather */

enum GL_ARB_texture_mirror_clamp_to_edge = 1;
/* GL_ARB_texture_mirror_clamp_to_edge */

enum GL_ARB_texture_mirrored_repeat = 1;
enum GL_MIRRORED_REPEAT_ARB = 0x8370;
/* GL_ARB_texture_mirrored_repeat */

enum GL_ARB_texture_multisample = 1;
/* GL_ARB_texture_multisample */

enum GL_ARB_texture_non_power_of_two = 1;
/* GL_ARB_texture_non_power_of_two */

enum GL_ARB_texture_query_levels = 1;
/* GL_ARB_texture_query_levels */

enum GL_ARB_texture_query_lod = 1;
/* GL_ARB_texture_query_lod */

enum GL_ARB_texture_rectangle = 1;
enum GL_TEXTURE_RECTANGLE_ARB = 0x84F5;
enum GL_TEXTURE_BINDING_RECTANGLE_ARB = 0x84F6;
enum GL_PROXY_TEXTURE_RECTANGLE_ARB = 0x84F7;
enum GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB = 0x84F8;
/* GL_ARB_texture_rectangle */

enum GL_ARB_texture_rg = 1;
/* GL_ARB_texture_rg */

enum GL_ARB_texture_rgb10_a2ui = 1;
/* GL_ARB_texture_rgb10_a2ui */

enum GL_ARB_texture_stencil8 = 1;
/* GL_ARB_texture_stencil8 */

enum GL_ARB_texture_storage = 1;
/* GL_ARB_texture_storage */

enum GL_ARB_texture_storage_multisample = 1;
/* GL_ARB_texture_storage_multisample */

enum GL_ARB_texture_swizzle = 1;
/* GL_ARB_texture_swizzle */

enum GL_ARB_texture_view = 1;
/* GL_ARB_texture_view */

enum GL_ARB_timer_query = 1;
/* GL_ARB_timer_query */

enum GL_ARB_transform_feedback2 = 1;
enum GL_TRANSFORM_FEEDBACK_PAUSED = 0x8E23;
enum GL_TRANSFORM_FEEDBACK_ACTIVE = 0x8E24;
/* GL_ARB_transform_feedback2 */

enum GL_ARB_transform_feedback3 = 1;
/* GL_ARB_transform_feedback3 */

enum GL_ARB_transform_feedback_instanced = 1;
/* GL_ARB_transform_feedback_instanced */

enum GL_ARB_transpose_matrix = 1;
enum GL_TRANSPOSE_MODELVIEW_MATRIX_ARB = 0x84E3;
enum GL_TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84E4;
enum GL_TRANSPOSE_TEXTURE_MATRIX_ARB = 0x84E5;
enum GL_TRANSPOSE_COLOR_MATRIX_ARB = 0x84E6;
alias PFNGLLOADTRANSPOSEMATRIXFARBPROC = void function (const(GLfloat)* m);
alias PFNGLLOADTRANSPOSEMATRIXDARBPROC = void function (const(GLdouble)* m);
alias PFNGLMULTTRANSPOSEMATRIXFARBPROC = void function (const(GLfloat)* m);
alias PFNGLMULTTRANSPOSEMATRIXDARBPROC = void function (const(GLdouble)* m);
void glLoadTransposeMatrixfARB (const(GLfloat)* m);
void glLoadTransposeMatrixdARB (const(GLdouble)* m);
void glMultTransposeMatrixfARB (const(GLfloat)* m);
void glMultTransposeMatrixdARB (const(GLdouble)* m);

/* GL_ARB_transpose_matrix */

enum GL_ARB_uniform_buffer_object = 1;
enum GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8A2C;
enum GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32;
enum GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45;
/* GL_ARB_uniform_buffer_object */

enum GL_ARB_vertex_array_bgra = 1;
/* GL_ARB_vertex_array_bgra */

enum GL_ARB_vertex_array_object = 1;
/* GL_ARB_vertex_array_object */

enum GL_ARB_vertex_attrib_64bit = 1;
/* GL_ARB_vertex_attrib_64bit */

enum GL_ARB_vertex_attrib_binding = 1;
/* GL_ARB_vertex_attrib_binding */

enum GL_ARB_vertex_blend = 1;
enum GL_MAX_VERTEX_UNITS_ARB = 0x86A4;
enum GL_ACTIVE_VERTEX_UNITS_ARB = 0x86A5;
enum GL_WEIGHT_SUM_UNITY_ARB = 0x86A6;
enum GL_VERTEX_BLEND_ARB = 0x86A7;
enum GL_CURRENT_WEIGHT_ARB = 0x86A8;
enum GL_WEIGHT_ARRAY_TYPE_ARB = 0x86A9;
enum GL_WEIGHT_ARRAY_STRIDE_ARB = 0x86AA;
enum GL_WEIGHT_ARRAY_SIZE_ARB = 0x86AB;
enum GL_WEIGHT_ARRAY_POINTER_ARB = 0x86AC;
enum GL_WEIGHT_ARRAY_ARB = 0x86AD;
enum GL_MODELVIEW0_ARB = 0x1700;
enum GL_MODELVIEW1_ARB = 0x850A;
enum GL_MODELVIEW2_ARB = 0x8722;
enum GL_MODELVIEW3_ARB = 0x8723;
enum GL_MODELVIEW4_ARB = 0x8724;
enum GL_MODELVIEW5_ARB = 0x8725;
enum GL_MODELVIEW6_ARB = 0x8726;
enum GL_MODELVIEW7_ARB = 0x8727;
enum GL_MODELVIEW8_ARB = 0x8728;
enum GL_MODELVIEW9_ARB = 0x8729;
enum GL_MODELVIEW10_ARB = 0x872A;
enum GL_MODELVIEW11_ARB = 0x872B;
enum GL_MODELVIEW12_ARB = 0x872C;
enum GL_MODELVIEW13_ARB = 0x872D;
enum GL_MODELVIEW14_ARB = 0x872E;
enum GL_MODELVIEW15_ARB = 0x872F;
enum GL_MODELVIEW16_ARB = 0x8730;
enum GL_MODELVIEW17_ARB = 0x8731;
enum GL_MODELVIEW18_ARB = 0x8732;
enum GL_MODELVIEW19_ARB = 0x8733;
enum GL_MODELVIEW20_ARB = 0x8734;
enum GL_MODELVIEW21_ARB = 0x8735;
enum GL_MODELVIEW22_ARB = 0x8736;
enum GL_MODELVIEW23_ARB = 0x8737;
enum GL_MODELVIEW24_ARB = 0x8738;
enum GL_MODELVIEW25_ARB = 0x8739;
enum GL_MODELVIEW26_ARB = 0x873A;
enum GL_MODELVIEW27_ARB = 0x873B;
enum GL_MODELVIEW28_ARB = 0x873C;
enum GL_MODELVIEW29_ARB = 0x873D;
enum GL_MODELVIEW30_ARB = 0x873E;
enum GL_MODELVIEW31_ARB = 0x873F;
alias PFNGLWEIGHTBVARBPROC = void function (GLint size, const(GLbyte)* weights);
alias PFNGLWEIGHTSVARBPROC = void function (GLint size, const(GLshort)* weights);
alias PFNGLWEIGHTIVARBPROC = void function (GLint size, const(GLint)* weights);
alias PFNGLWEIGHTFVARBPROC = void function (GLint size, const(GLfloat)* weights);
alias PFNGLWEIGHTDVARBPROC = void function (GLint size, const(GLdouble)* weights);
alias PFNGLWEIGHTUBVARBPROC = void function (GLint size, const(GLubyte)* weights);
alias PFNGLWEIGHTUSVARBPROC = void function (GLint size, const(GLushort)* weights);
alias PFNGLWEIGHTUIVARBPROC = void function (GLint size, const(GLuint)* weights);
alias PFNGLWEIGHTPOINTERARBPROC = void function (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLVERTEXBLENDARBPROC = void function (GLint count);
void glWeightbvARB (GLint size, const(GLbyte)* weights);
void glWeightsvARB (GLint size, const(GLshort)* weights);
void glWeightivARB (GLint size, const(GLint)* weights);
void glWeightfvARB (GLint size, const(GLfloat)* weights);
void glWeightdvARB (GLint size, const(GLdouble)* weights);
void glWeightubvARB (GLint size, const(GLubyte)* weights);
void glWeightusvARB (GLint size, const(GLushort)* weights);
void glWeightuivARB (GLint size, const(GLuint)* weights);
void glWeightPointerARB (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glVertexBlendARB (GLint count);

/* GL_ARB_vertex_blend */

enum GL_ARB_vertex_buffer_object = 1;
/* The OS X headers haven't caught up with Khronos yet */

alias GLsizeiptrARB = c_long;
alias GLintptrARB = c_long;

enum GL_BUFFER_SIZE_ARB = 0x8764;
enum GL_BUFFER_USAGE_ARB = 0x8765;
enum GL_ARRAY_BUFFER_ARB = 0x8892;
enum GL_ELEMENT_ARRAY_BUFFER_ARB = 0x8893;
enum GL_ARRAY_BUFFER_BINDING_ARB = 0x8894;
enum GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB = 0x8895;
enum GL_VERTEX_ARRAY_BUFFER_BINDING_ARB = 0x8896;
enum GL_NORMAL_ARRAY_BUFFER_BINDING_ARB = 0x8897;
enum GL_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x8898;
enum GL_INDEX_ARRAY_BUFFER_BINDING_ARB = 0x8899;
enum GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = 0x889A;
enum GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = 0x889B;
enum GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889C;
enum GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = 0x889D;
enum GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB = 0x889E;
enum GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = 0x889F;
enum GL_READ_ONLY_ARB = 0x88B8;
enum GL_WRITE_ONLY_ARB = 0x88B9;
enum GL_READ_WRITE_ARB = 0x88BA;
enum GL_BUFFER_ACCESS_ARB = 0x88BB;
enum GL_BUFFER_MAPPED_ARB = 0x88BC;
enum GL_BUFFER_MAP_POINTER_ARB = 0x88BD;
enum GL_STREAM_DRAW_ARB = 0x88E0;
enum GL_STREAM_READ_ARB = 0x88E1;
enum GL_STREAM_COPY_ARB = 0x88E2;
enum GL_STATIC_DRAW_ARB = 0x88E4;
enum GL_STATIC_READ_ARB = 0x88E5;
enum GL_STATIC_COPY_ARB = 0x88E6;
enum GL_DYNAMIC_DRAW_ARB = 0x88E8;
enum GL_DYNAMIC_READ_ARB = 0x88E9;
enum GL_DYNAMIC_COPY_ARB = 0x88EA;
alias PFNGLBINDBUFFERARBPROC = void function (GLenum target, GLuint buffer);
alias PFNGLDELETEBUFFERSARBPROC = void function (GLsizei n, const(GLuint)* buffers);
alias PFNGLGENBUFFERSARBPROC = void function (GLsizei n, GLuint* buffers);
alias PFNGLISBUFFERARBPROC = ubyte function (GLuint buffer);
alias PFNGLBUFFERDATAARBPROC = void function (GLenum target, GLsizeiptrARB size, const(void)* data, GLenum usage);
alias PFNGLBUFFERSUBDATAARBPROC = void function (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const(void)* data);
alias PFNGLGETBUFFERSUBDATAARBPROC = void function (GLenum target, GLintptrARB offset, GLsizeiptrARB size, void* data);
alias PFNGLMAPBUFFERARBPROC = void* function (GLenum target, GLenum access);
alias PFNGLUNMAPBUFFERARBPROC = ubyte function (GLenum target);
alias PFNGLGETBUFFERPARAMETERIVARBPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETBUFFERPOINTERVARBPROC = void function (GLenum target, GLenum pname, void** params);
void glBindBufferARB (GLenum target, GLuint buffer);
void glDeleteBuffersARB (GLsizei n, const(GLuint)* buffers);
void glGenBuffersARB (GLsizei n, GLuint* buffers);
GLboolean glIsBufferARB (GLuint buffer);
void glBufferDataARB (GLenum target, GLsizeiptrARB size, const(void)* data, GLenum usage);
void glBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const(void)* data);
void glGetBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, void* data);
void* glMapBufferARB (GLenum target, GLenum access);
GLboolean glUnmapBufferARB (GLenum target);
void glGetBufferParameterivARB (GLenum target, GLenum pname, GLint* params);
void glGetBufferPointervARB (GLenum target, GLenum pname, void** params);

/* GL_ARB_vertex_buffer_object */

enum GL_ARB_vertex_program = 1;
enum GL_COLOR_SUM_ARB = 0x8458;
enum GL_VERTEX_PROGRAM_ARB = 0x8620;
enum GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 0x8622;
enum GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB = 0x8623;
enum GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 0x8624;
enum GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB = 0x8625;
enum GL_CURRENT_VERTEX_ATTRIB_ARB = 0x8626;
enum GL_VERTEX_PROGRAM_POINT_SIZE_ARB = 0x8642;
enum GL_VERTEX_PROGRAM_TWO_SIDE_ARB = 0x8643;
enum GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 0x8645;
enum GL_MAX_VERTEX_ATTRIBS_ARB = 0x8869;
enum GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 0x886A;
enum GL_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B0;
enum GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B1;
enum GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B2;
enum GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B3;
alias PFNGLVERTEXATTRIB1DARBPROC = void function (GLuint index, GLdouble x);
alias PFNGLVERTEXATTRIB1DVARBPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB1FARBPROC = void function (GLuint index, GLfloat x);
alias PFNGLVERTEXATTRIB1FVARBPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB1SARBPROC = void function (GLuint index, GLshort x);
alias PFNGLVERTEXATTRIB1SVARBPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB2DARBPROC = void function (GLuint index, GLdouble x, GLdouble y);
alias PFNGLVERTEXATTRIB2DVARBPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB2FARBPROC = void function (GLuint index, GLfloat x, GLfloat y);
alias PFNGLVERTEXATTRIB2FVARBPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB2SARBPROC = void function (GLuint index, GLshort x, GLshort y);
alias PFNGLVERTEXATTRIB2SVARBPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB3DARBPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLVERTEXATTRIB3DVARBPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB3FARBPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLVERTEXATTRIB3FVARBPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB3SARBPROC = void function (GLuint index, GLshort x, GLshort y, GLshort z);
alias PFNGLVERTEXATTRIB3SVARBPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4NBVARBPROC = void function (GLuint index, const(GLbyte)* v);
alias PFNGLVERTEXATTRIB4NIVARBPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIB4NSVARBPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4NUBARBPROC = void function (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias PFNGLVERTEXATTRIB4NUBVARBPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIB4NUIVARBPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIB4NUSVARBPROC = void function (GLuint index, const(GLushort)* v);
alias PFNGLVERTEXATTRIB4BVARBPROC = void function (GLuint index, const(GLbyte)* v);
alias PFNGLVERTEXATTRIB4DARBPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLVERTEXATTRIB4DVARBPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB4FARBPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLVERTEXATTRIB4FVARBPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB4IVARBPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIB4SARBPROC = void function (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias PFNGLVERTEXATTRIB4SVARBPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4UBVARBPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIB4UIVARBPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIB4USVARBPROC = void function (GLuint index, const(GLushort)* v);
alias PFNGLVERTEXATTRIBPOINTERARBPROC = void function (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(void)* pointer);
alias PFNGLENABLEVERTEXATTRIBARRAYARBPROC = void function (GLuint index);
alias PFNGLDISABLEVERTEXATTRIBARRAYARBPROC = void function (GLuint index);
alias PFNGLGETVERTEXATTRIBDVARBPROC = void function (GLuint index, GLenum pname, GLdouble* params);
alias PFNGLGETVERTEXATTRIBFVARBPROC = void function (GLuint index, GLenum pname, GLfloat* params);
alias PFNGLGETVERTEXATTRIBIVARBPROC = void function (GLuint index, GLenum pname, GLint* params);
alias PFNGLGETVERTEXATTRIBPOINTERVARBPROC = void function (GLuint index, GLenum pname, void** pointer);
void glVertexAttrib1dARB (GLuint index, GLdouble x);
void glVertexAttrib1dvARB (GLuint index, const(GLdouble)* v);
void glVertexAttrib1fARB (GLuint index, GLfloat x);
void glVertexAttrib1fvARB (GLuint index, const(GLfloat)* v);
void glVertexAttrib1sARB (GLuint index, GLshort x);
void glVertexAttrib1svARB (GLuint index, const(GLshort)* v);
void glVertexAttrib2dARB (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvARB (GLuint index, const(GLdouble)* v);
void glVertexAttrib2fARB (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvARB (GLuint index, const(GLfloat)* v);
void glVertexAttrib2sARB (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svARB (GLuint index, const(GLshort)* v);
void glVertexAttrib3dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvARB (GLuint index, const(GLdouble)* v);
void glVertexAttrib3fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvARB (GLuint index, const(GLfloat)* v);
void glVertexAttrib3sARB (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svARB (GLuint index, const(GLshort)* v);
void glVertexAttrib4NbvARB (GLuint index, const(GLbyte)* v);
void glVertexAttrib4NivARB (GLuint index, const(GLint)* v);
void glVertexAttrib4NsvARB (GLuint index, const(GLshort)* v);
void glVertexAttrib4NubARB (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4NubvARB (GLuint index, const(GLubyte)* v);
void glVertexAttrib4NuivARB (GLuint index, const(GLuint)* v);
void glVertexAttrib4NusvARB (GLuint index, const(GLushort)* v);
void glVertexAttrib4bvARB (GLuint index, const(GLbyte)* v);
void glVertexAttrib4dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvARB (GLuint index, const(GLdouble)* v);
void glVertexAttrib4fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvARB (GLuint index, const(GLfloat)* v);
void glVertexAttrib4ivARB (GLuint index, const(GLint)* v);
void glVertexAttrib4sARB (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svARB (GLuint index, const(GLshort)* v);
void glVertexAttrib4ubvARB (GLuint index, const(GLubyte)* v);
void glVertexAttrib4uivARB (GLuint index, const(GLuint)* v);
void glVertexAttrib4usvARB (GLuint index, const(GLushort)* v);
void glVertexAttribPointerARB (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(void)* pointer);
void glEnableVertexAttribArrayARB (GLuint index);
void glDisableVertexAttribArrayARB (GLuint index);
void glGetVertexAttribdvARB (GLuint index, GLenum pname, GLdouble* params);
void glGetVertexAttribfvARB (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribivARB (GLuint index, GLenum pname, GLint* params);
void glGetVertexAttribPointervARB (GLuint index, GLenum pname, void** pointer);

/* GL_ARB_vertex_program */

enum GL_ARB_vertex_shader = 1;
enum GL_VERTEX_SHADER_ARB = 0x8B31;
enum GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = 0x8B4A;
enum GL_MAX_VARYING_FLOATS_ARB = 0x8B4B;
enum GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = 0x8B4C;
enum GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = 0x8B4D;
enum GL_OBJECT_ACTIVE_ATTRIBUTES_ARB = 0x8B89;
enum GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 0x8B8A;
alias PFNGLBINDATTRIBLOCATIONARBPROC = void function (GLhandleARB programObj, GLuint index, const(GLcharARB)* name);
alias PFNGLGETACTIVEATTRIBARBPROC = void function (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name);
alias PFNGLGETATTRIBLOCATIONARBPROC = int function (GLhandleARB programObj, const(GLcharARB)* name);
void glBindAttribLocationARB (GLhandleARB programObj, GLuint index, const(GLcharARB)* name);
void glGetActiveAttribARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name);
GLint glGetAttribLocationARB (GLhandleARB programObj, const(GLcharARB)* name);

/* GL_ARB_vertex_shader */

enum GL_ARB_vertex_type_10f_11f_11f_rev = 1;
/* GL_ARB_vertex_type_10f_11f_11f_rev */

enum GL_ARB_vertex_type_2_10_10_10_rev = 1;
/* GL_ARB_vertex_type_2_10_10_10_rev */

enum GL_ARB_viewport_array = 1;
/* GL_ARB_viewport_array */

enum GL_ARB_window_pos = 1;
alias PFNGLWINDOWPOS2DARBPROC = void function (GLdouble x, GLdouble y);
alias PFNGLWINDOWPOS2DVARBPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS2FARBPROC = void function (GLfloat x, GLfloat y);
alias PFNGLWINDOWPOS2FVARBPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS2IARBPROC = void function (GLint x, GLint y);
alias PFNGLWINDOWPOS2IVARBPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS2SARBPROC = void function (GLshort x, GLshort y);
alias PFNGLWINDOWPOS2SVARBPROC = void function (const(GLshort)* v);
alias PFNGLWINDOWPOS3DARBPROC = void function (GLdouble x, GLdouble y, GLdouble z);
alias PFNGLWINDOWPOS3DVARBPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS3FARBPROC = void function (GLfloat x, GLfloat y, GLfloat z);
alias PFNGLWINDOWPOS3FVARBPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS3IARBPROC = void function (GLint x, GLint y, GLint z);
alias PFNGLWINDOWPOS3IVARBPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS3SARBPROC = void function (GLshort x, GLshort y, GLshort z);
alias PFNGLWINDOWPOS3SVARBPROC = void function (const(GLshort)* v);
void glWindowPos2dARB (GLdouble x, GLdouble y);
void glWindowPos2dvARB (const(GLdouble)* v);
void glWindowPos2fARB (GLfloat x, GLfloat y);
void glWindowPos2fvARB (const(GLfloat)* v);
void glWindowPos2iARB (GLint x, GLint y);
void glWindowPos2ivARB (const(GLint)* v);
void glWindowPos2sARB (GLshort x, GLshort y);
void glWindowPos2svARB (const(GLshort)* v);
void glWindowPos3dARB (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dvARB (const(GLdouble)* v);
void glWindowPos3fARB (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fvARB (const(GLfloat)* v);
void glWindowPos3iARB (GLint x, GLint y, GLint z);
void glWindowPos3ivARB (const(GLint)* v);
void glWindowPos3sARB (GLshort x, GLshort y, GLshort z);
void glWindowPos3svARB (const(GLshort)* v);

/* GL_ARB_window_pos */

enum GL_KHR_debug = 1;
/* GL_KHR_debug */

enum GL_KHR_texture_compression_astc_hdr = 1;
enum GL_COMPRESSED_RGBA_ASTC_4x4_KHR = 0x93B0;
enum GL_COMPRESSED_RGBA_ASTC_5x4_KHR = 0x93B1;
enum GL_COMPRESSED_RGBA_ASTC_5x5_KHR = 0x93B2;
enum GL_COMPRESSED_RGBA_ASTC_6x5_KHR = 0x93B3;
enum GL_COMPRESSED_RGBA_ASTC_6x6_KHR = 0x93B4;
enum GL_COMPRESSED_RGBA_ASTC_8x5_KHR = 0x93B5;
enum GL_COMPRESSED_RGBA_ASTC_8x6_KHR = 0x93B6;
enum GL_COMPRESSED_RGBA_ASTC_8x8_KHR = 0x93B7;
enum GL_COMPRESSED_RGBA_ASTC_10x5_KHR = 0x93B8;
enum GL_COMPRESSED_RGBA_ASTC_10x6_KHR = 0x93B9;
enum GL_COMPRESSED_RGBA_ASTC_10x8_KHR = 0x93BA;
enum GL_COMPRESSED_RGBA_ASTC_10x10_KHR = 0x93BB;
enum GL_COMPRESSED_RGBA_ASTC_12x10_KHR = 0x93BC;
enum GL_COMPRESSED_RGBA_ASTC_12x12_KHR = 0x93BD;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 0x93D0;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 0x93D1;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 0x93D2;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 0x93D3;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 0x93D4;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 0x93D5;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 0x93D6;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 0x93D7;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 0x93D8;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 0x93D9;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 0x93DA;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 0x93DB;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 0x93DC;
enum GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 0x93DD;
/* GL_KHR_texture_compression_astc_hdr */

enum GL_KHR_texture_compression_astc_ldr = 1;
/* GL_KHR_texture_compression_astc_ldr */

enum GL_OES_byte_coordinates = 1;
alias PFNGLMULTITEXCOORD1BOESPROC = void function (GLenum texture, GLbyte s);
alias PFNGLMULTITEXCOORD1BVOESPROC = void function (GLenum texture, const(GLbyte)* coords);
alias PFNGLMULTITEXCOORD2BOESPROC = void function (GLenum texture, GLbyte s, GLbyte t);
alias PFNGLMULTITEXCOORD2BVOESPROC = void function (GLenum texture, const(GLbyte)* coords);
alias PFNGLMULTITEXCOORD3BOESPROC = void function (GLenum texture, GLbyte s, GLbyte t, GLbyte r);
alias PFNGLMULTITEXCOORD3BVOESPROC = void function (GLenum texture, const(GLbyte)* coords);
alias PFNGLMULTITEXCOORD4BOESPROC = void function (GLenum texture, GLbyte s, GLbyte t, GLbyte r, GLbyte q);
alias PFNGLMULTITEXCOORD4BVOESPROC = void function (GLenum texture, const(GLbyte)* coords);
alias PFNGLTEXCOORD1BOESPROC = void function (GLbyte s);
alias PFNGLTEXCOORD1BVOESPROC = void function (const(GLbyte)* coords);
alias PFNGLTEXCOORD2BOESPROC = void function (GLbyte s, GLbyte t);
alias PFNGLTEXCOORD2BVOESPROC = void function (const(GLbyte)* coords);
alias PFNGLTEXCOORD3BOESPROC = void function (GLbyte s, GLbyte t, GLbyte r);
alias PFNGLTEXCOORD3BVOESPROC = void function (const(GLbyte)* coords);
alias PFNGLTEXCOORD4BOESPROC = void function (GLbyte s, GLbyte t, GLbyte r, GLbyte q);
alias PFNGLTEXCOORD4BVOESPROC = void function (const(GLbyte)* coords);
alias PFNGLVERTEX2BOESPROC = void function (GLbyte x);
alias PFNGLVERTEX2BVOESPROC = void function (const(GLbyte)* coords);
alias PFNGLVERTEX3BOESPROC = void function (GLbyte x, GLbyte y);
alias PFNGLVERTEX3BVOESPROC = void function (const(GLbyte)* coords);
alias PFNGLVERTEX4BOESPROC = void function (GLbyte x, GLbyte y, GLbyte z);
alias PFNGLVERTEX4BVOESPROC = void function (const(GLbyte)* coords);
void glMultiTexCoord1bOES (GLenum texture, GLbyte s);
void glMultiTexCoord1bvOES (GLenum texture, const(GLbyte)* coords);
void glMultiTexCoord2bOES (GLenum texture, GLbyte s, GLbyte t);
void glMultiTexCoord2bvOES (GLenum texture, const(GLbyte)* coords);
void glMultiTexCoord3bOES (GLenum texture, GLbyte s, GLbyte t, GLbyte r);
void glMultiTexCoord3bvOES (GLenum texture, const(GLbyte)* coords);
void glMultiTexCoord4bOES (GLenum texture, GLbyte s, GLbyte t, GLbyte r, GLbyte q);
void glMultiTexCoord4bvOES (GLenum texture, const(GLbyte)* coords);
void glTexCoord1bOES (GLbyte s);
void glTexCoord1bvOES (const(GLbyte)* coords);
void glTexCoord2bOES (GLbyte s, GLbyte t);
void glTexCoord2bvOES (const(GLbyte)* coords);
void glTexCoord3bOES (GLbyte s, GLbyte t, GLbyte r);
void glTexCoord3bvOES (const(GLbyte)* coords);
void glTexCoord4bOES (GLbyte s, GLbyte t, GLbyte r, GLbyte q);
void glTexCoord4bvOES (const(GLbyte)* coords);
void glVertex2bOES (GLbyte x);
void glVertex2bvOES (const(GLbyte)* coords);
void glVertex3bOES (GLbyte x, GLbyte y);
void glVertex3bvOES (const(GLbyte)* coords);
void glVertex4bOES (GLbyte x, GLbyte y, GLbyte z);
void glVertex4bvOES (const(GLbyte)* coords);

/* GL_OES_byte_coordinates */

enum GL_OES_compressed_paletted_texture = 1;
enum GL_PALETTE4_RGB8_OES = 0x8B90;
enum GL_PALETTE4_RGBA8_OES = 0x8B91;
enum GL_PALETTE4_R5_G6_B5_OES = 0x8B92;
enum GL_PALETTE4_RGBA4_OES = 0x8B93;
enum GL_PALETTE4_RGB5_A1_OES = 0x8B94;
enum GL_PALETTE8_RGB8_OES = 0x8B95;
enum GL_PALETTE8_RGBA8_OES = 0x8B96;
enum GL_PALETTE8_R5_G6_B5_OES = 0x8B97;
enum GL_PALETTE8_RGBA4_OES = 0x8B98;
enum GL_PALETTE8_RGB5_A1_OES = 0x8B99;
/* GL_OES_compressed_paletted_texture */

enum GL_OES_fixed_point = 1;
alias GLfixed = int;
enum GL_FIXED_OES = 0x140C;
alias PFNGLALPHAFUNCXOESPROC = void function (GLenum func, GLfixed ref_);
alias PFNGLCLEARCOLORXOESPROC = void function (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
alias PFNGLCLEARDEPTHXOESPROC = void function (GLfixed depth);
alias PFNGLCLIPPLANEXOESPROC = void function (GLenum plane, const(GLfixed)* equation);
alias PFNGLCOLOR4XOESPROC = void function (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
alias PFNGLDEPTHRANGEXOESPROC = void function (GLfixed n, GLfixed f);
alias PFNGLFOGXOESPROC = void function (GLenum pname, GLfixed param);
alias PFNGLFOGXVOESPROC = void function (GLenum pname, const(GLfixed)* param);
alias PFNGLFRUSTUMXOESPROC = void function (GLfixed l, GLfixed r, GLfixed b, GLfixed t, GLfixed n, GLfixed f);
alias PFNGLGETCLIPPLANEXOESPROC = void function (GLenum plane, GLfixed* equation);
alias PFNGLGETFIXEDVOESPROC = void function (GLenum pname, GLfixed* params);
alias PFNGLGETTEXENVXVOESPROC = void function (GLenum target, GLenum pname, GLfixed* params);
alias PFNGLGETTEXPARAMETERXVOESPROC = void function (GLenum target, GLenum pname, GLfixed* params);
alias PFNGLLIGHTMODELXOESPROC = void function (GLenum pname, GLfixed param);
alias PFNGLLIGHTMODELXVOESPROC = void function (GLenum pname, const(GLfixed)* param);
alias PFNGLLIGHTXOESPROC = void function (GLenum light, GLenum pname, GLfixed param);
alias PFNGLLIGHTXVOESPROC = void function (GLenum light, GLenum pname, const(GLfixed)* params);
alias PFNGLLINEWIDTHXOESPROC = void function (GLfixed width);
alias PFNGLLOADMATRIXXOESPROC = void function (const(GLfixed)* m);
alias PFNGLMATERIALXOESPROC = void function (GLenum face, GLenum pname, GLfixed param);
alias PFNGLMATERIALXVOESPROC = void function (GLenum face, GLenum pname, const(GLfixed)* param);
alias PFNGLMULTMATRIXXOESPROC = void function (const(GLfixed)* m);
alias PFNGLMULTITEXCOORD4XOESPROC = void function (GLenum texture, GLfixed s, GLfixed t, GLfixed r, GLfixed q);
alias PFNGLNORMAL3XOESPROC = void function (GLfixed nx, GLfixed ny, GLfixed nz);
alias PFNGLORTHOXOESPROC = void function (GLfixed l, GLfixed r, GLfixed b, GLfixed t, GLfixed n, GLfixed f);
alias PFNGLPOINTPARAMETERXVOESPROC = void function (GLenum pname, const(GLfixed)* params);
alias PFNGLPOINTSIZEXOESPROC = void function (GLfixed size);
alias PFNGLPOLYGONOFFSETXOESPROC = void function (GLfixed factor, GLfixed units);
alias PFNGLROTATEXOESPROC = void function (GLfixed angle, GLfixed x, GLfixed y, GLfixed z);
alias PFNGLSAMPLECOVERAGEOESPROC = void function (GLfixed value, GLboolean invert);
alias PFNGLSCALEXOESPROC = void function (GLfixed x, GLfixed y, GLfixed z);
alias PFNGLTEXENVXOESPROC = void function (GLenum target, GLenum pname, GLfixed param);
alias PFNGLTEXENVXVOESPROC = void function (GLenum target, GLenum pname, const(GLfixed)* params);
alias PFNGLTEXPARAMETERXOESPROC = void function (GLenum target, GLenum pname, GLfixed param);
alias PFNGLTEXPARAMETERXVOESPROC = void function (GLenum target, GLenum pname, const(GLfixed)* params);
alias PFNGLTRANSLATEXOESPROC = void function (GLfixed x, GLfixed y, GLfixed z);
alias PFNGLACCUMXOESPROC = void function (GLenum op, GLfixed value);
alias PFNGLBITMAPXOESPROC = void function (GLsizei width, GLsizei height, GLfixed xorig, GLfixed yorig, GLfixed xmove, GLfixed ymove, const(GLubyte)* bitmap);
alias PFNGLBLENDCOLORXOESPROC = void function (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
alias PFNGLCLEARACCUMXOESPROC = void function (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
alias PFNGLCOLOR3XOESPROC = void function (GLfixed red, GLfixed green, GLfixed blue);
alias PFNGLCOLOR3XVOESPROC = void function (const(GLfixed)* components);
alias PFNGLCOLOR4XVOESPROC = void function (const(GLfixed)* components);
alias PFNGLCONVOLUTIONPARAMETERXOESPROC = void function (GLenum target, GLenum pname, GLfixed param);
alias PFNGLCONVOLUTIONPARAMETERXVOESPROC = void function (GLenum target, GLenum pname, const(GLfixed)* params);
alias PFNGLEVALCOORD1XOESPROC = void function (GLfixed u);
alias PFNGLEVALCOORD1XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLEVALCOORD2XOESPROC = void function (GLfixed u, GLfixed v);
alias PFNGLEVALCOORD2XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLFEEDBACKBUFFERXOESPROC = void function (GLsizei n, GLenum type, const(GLfixed)* buffer);
alias PFNGLGETCONVOLUTIONPARAMETERXVOESPROC = void function (GLenum target, GLenum pname, GLfixed* params);
alias PFNGLGETHISTOGRAMPARAMETERXVOESPROC = void function (GLenum target, GLenum pname, GLfixed* params);
alias PFNGLGETLIGHTXOESPROC = void function (GLenum light, GLenum pname, GLfixed* params);
alias PFNGLGETMAPXVOESPROC = void function (GLenum target, GLenum query, GLfixed* v);
alias PFNGLGETMATERIALXOESPROC = void function (GLenum face, GLenum pname, GLfixed param);
alias PFNGLGETPIXELMAPXVPROC = void function (GLenum map, GLint size, GLfixed* values);
alias PFNGLGETTEXGENXVOESPROC = void function (GLenum coord, GLenum pname, GLfixed* params);
alias PFNGLGETTEXLEVELPARAMETERXVOESPROC = void function (GLenum target, GLint level, GLenum pname, GLfixed* params);
alias PFNGLINDEXXOESPROC = void function (GLfixed component);
alias PFNGLINDEXXVOESPROC = void function (const(GLfixed)* component);
alias PFNGLLOADTRANSPOSEMATRIXXOESPROC = void function (const(GLfixed)* m);
alias PFNGLMAP1XOESPROC = void function (GLenum target, GLfixed u1, GLfixed u2, GLint stride, GLint order, GLfixed points);
alias PFNGLMAP2XOESPROC = void function (GLenum target, GLfixed u1, GLfixed u2, GLint ustride, GLint uorder, GLfixed v1, GLfixed v2, GLint vstride, GLint vorder, GLfixed points);
alias PFNGLMAPGRID1XOESPROC = void function (GLint n, GLfixed u1, GLfixed u2);
alias PFNGLMAPGRID2XOESPROC = void function (GLint n, GLfixed u1, GLfixed u2, GLfixed v1, GLfixed v2);
alias PFNGLMULTTRANSPOSEMATRIXXOESPROC = void function (const(GLfixed)* m);
alias PFNGLMULTITEXCOORD1XOESPROC = void function (GLenum texture, GLfixed s);
alias PFNGLMULTITEXCOORD1XVOESPROC = void function (GLenum texture, const(GLfixed)* coords);
alias PFNGLMULTITEXCOORD2XOESPROC = void function (GLenum texture, GLfixed s, GLfixed t);
alias PFNGLMULTITEXCOORD2XVOESPROC = void function (GLenum texture, const(GLfixed)* coords);
alias PFNGLMULTITEXCOORD3XOESPROC = void function (GLenum texture, GLfixed s, GLfixed t, GLfixed r);
alias PFNGLMULTITEXCOORD3XVOESPROC = void function (GLenum texture, const(GLfixed)* coords);
alias PFNGLMULTITEXCOORD4XVOESPROC = void function (GLenum texture, const(GLfixed)* coords);
alias PFNGLNORMAL3XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLPASSTHROUGHXOESPROC = void function (GLfixed token);
alias PFNGLPIXELMAPXPROC = void function (GLenum map, GLint size, const(GLfixed)* values);
alias PFNGLPIXELSTOREXPROC = void function (GLenum pname, GLfixed param);
alias PFNGLPIXELTRANSFERXOESPROC = void function (GLenum pname, GLfixed param);
alias PFNGLPIXELZOOMXOESPROC = void function (GLfixed xfactor, GLfixed yfactor);
alias PFNGLPRIORITIZETEXTURESXOESPROC = void function (GLsizei n, const(GLuint)* textures, const(GLfixed)* priorities);
alias PFNGLRASTERPOS2XOESPROC = void function (GLfixed x, GLfixed y);
alias PFNGLRASTERPOS2XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLRASTERPOS3XOESPROC = void function (GLfixed x, GLfixed y, GLfixed z);
alias PFNGLRASTERPOS3XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLRASTERPOS4XOESPROC = void function (GLfixed x, GLfixed y, GLfixed z, GLfixed w);
alias PFNGLRASTERPOS4XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLRECTXOESPROC = void function (GLfixed x1, GLfixed y1, GLfixed x2, GLfixed y2);
alias PFNGLRECTXVOESPROC = void function (const(GLfixed)* v1, const(GLfixed)* v2);
alias PFNGLTEXCOORD1XOESPROC = void function (GLfixed s);
alias PFNGLTEXCOORD1XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLTEXCOORD2XOESPROC = void function (GLfixed s, GLfixed t);
alias PFNGLTEXCOORD2XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLTEXCOORD3XOESPROC = void function (GLfixed s, GLfixed t, GLfixed r);
alias PFNGLTEXCOORD3XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLTEXCOORD4XOESPROC = void function (GLfixed s, GLfixed t, GLfixed r, GLfixed q);
alias PFNGLTEXCOORD4XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLTEXGENXOESPROC = void function (GLenum coord, GLenum pname, GLfixed param);
alias PFNGLTEXGENXVOESPROC = void function (GLenum coord, GLenum pname, const(GLfixed)* params);
alias PFNGLVERTEX2XOESPROC = void function (GLfixed x);
alias PFNGLVERTEX2XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLVERTEX3XOESPROC = void function (GLfixed x, GLfixed y);
alias PFNGLVERTEX3XVOESPROC = void function (const(GLfixed)* coords);
alias PFNGLVERTEX4XOESPROC = void function (GLfixed x, GLfixed y, GLfixed z);
alias PFNGLVERTEX4XVOESPROC = void function (const(GLfixed)* coords);
void glAlphaFuncxOES (GLenum func, GLfixed ref_);
void glClearColorxOES (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
void glClearDepthxOES (GLfixed depth);
void glClipPlanexOES (GLenum plane, const(GLfixed)* equation);
void glColor4xOES (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
void glDepthRangexOES (GLfixed n, GLfixed f);
void glFogxOES (GLenum pname, GLfixed param);
void glFogxvOES (GLenum pname, const(GLfixed)* param);
void glFrustumxOES (GLfixed l, GLfixed r, GLfixed b, GLfixed t, GLfixed n, GLfixed f);
void glGetClipPlanexOES (GLenum plane, GLfixed* equation);
void glGetFixedvOES (GLenum pname, GLfixed* params);
void glGetTexEnvxvOES (GLenum target, GLenum pname, GLfixed* params);
void glGetTexParameterxvOES (GLenum target, GLenum pname, GLfixed* params);
void glLightModelxOES (GLenum pname, GLfixed param);
void glLightModelxvOES (GLenum pname, const(GLfixed)* param);
void glLightxOES (GLenum light, GLenum pname, GLfixed param);
void glLightxvOES (GLenum light, GLenum pname, const(GLfixed)* params);
void glLineWidthxOES (GLfixed width);
void glLoadMatrixxOES (const(GLfixed)* m);
void glMaterialxOES (GLenum face, GLenum pname, GLfixed param);
void glMaterialxvOES (GLenum face, GLenum pname, const(GLfixed)* param);
void glMultMatrixxOES (const(GLfixed)* m);
void glMultiTexCoord4xOES (GLenum texture, GLfixed s, GLfixed t, GLfixed r, GLfixed q);
void glNormal3xOES (GLfixed nx, GLfixed ny, GLfixed nz);
void glOrthoxOES (GLfixed l, GLfixed r, GLfixed b, GLfixed t, GLfixed n, GLfixed f);
void glPointParameterxvOES (GLenum pname, const(GLfixed)* params);
void glPointSizexOES (GLfixed size);
void glPolygonOffsetxOES (GLfixed factor, GLfixed units);
void glRotatexOES (GLfixed angle, GLfixed x, GLfixed y, GLfixed z);
void glSampleCoverageOES (GLfixed value, GLboolean invert);
void glScalexOES (GLfixed x, GLfixed y, GLfixed z);
void glTexEnvxOES (GLenum target, GLenum pname, GLfixed param);
void glTexEnvxvOES (GLenum target, GLenum pname, const(GLfixed)* params);
void glTexParameterxOES (GLenum target, GLenum pname, GLfixed param);
void glTexParameterxvOES (GLenum target, GLenum pname, const(GLfixed)* params);
void glTranslatexOES (GLfixed x, GLfixed y, GLfixed z);
void glAccumxOES (GLenum op, GLfixed value);
void glBitmapxOES (GLsizei width, GLsizei height, GLfixed xorig, GLfixed yorig, GLfixed xmove, GLfixed ymove, const(GLubyte)* bitmap);
void glBlendColorxOES (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
void glClearAccumxOES (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
void glColor3xOES (GLfixed red, GLfixed green, GLfixed blue);
void glColor3xvOES (const(GLfixed)* components);
void glColor4xvOES (const(GLfixed)* components);
void glConvolutionParameterxOES (GLenum target, GLenum pname, GLfixed param);
void glConvolutionParameterxvOES (GLenum target, GLenum pname, const(GLfixed)* params);
void glEvalCoord1xOES (GLfixed u);
void glEvalCoord1xvOES (const(GLfixed)* coords);
void glEvalCoord2xOES (GLfixed u, GLfixed v);
void glEvalCoord2xvOES (const(GLfixed)* coords);
void glFeedbackBufferxOES (GLsizei n, GLenum type, const(GLfixed)* buffer);
void glGetConvolutionParameterxvOES (GLenum target, GLenum pname, GLfixed* params);
void glGetHistogramParameterxvOES (GLenum target, GLenum pname, GLfixed* params);
void glGetLightxOES (GLenum light, GLenum pname, GLfixed* params);
void glGetMapxvOES (GLenum target, GLenum query, GLfixed* v);
void glGetMaterialxOES (GLenum face, GLenum pname, GLfixed param);
void glGetPixelMapxv (GLenum map, GLint size, GLfixed* values);
void glGetTexGenxvOES (GLenum coord, GLenum pname, GLfixed* params);
void glGetTexLevelParameterxvOES (GLenum target, GLint level, GLenum pname, GLfixed* params);
void glIndexxOES (GLfixed component);
void glIndexxvOES (const(GLfixed)* component);
void glLoadTransposeMatrixxOES (const(GLfixed)* m);
void glMap1xOES (GLenum target, GLfixed u1, GLfixed u2, GLint stride, GLint order, GLfixed points);
void glMap2xOES (GLenum target, GLfixed u1, GLfixed u2, GLint ustride, GLint uorder, GLfixed v1, GLfixed v2, GLint vstride, GLint vorder, GLfixed points);
void glMapGrid1xOES (GLint n, GLfixed u1, GLfixed u2);
void glMapGrid2xOES (GLint n, GLfixed u1, GLfixed u2, GLfixed v1, GLfixed v2);
void glMultTransposeMatrixxOES (const(GLfixed)* m);
void glMultiTexCoord1xOES (GLenum texture, GLfixed s);
void glMultiTexCoord1xvOES (GLenum texture, const(GLfixed)* coords);
void glMultiTexCoord2xOES (GLenum texture, GLfixed s, GLfixed t);
void glMultiTexCoord2xvOES (GLenum texture, const(GLfixed)* coords);
void glMultiTexCoord3xOES (GLenum texture, GLfixed s, GLfixed t, GLfixed r);
void glMultiTexCoord3xvOES (GLenum texture, const(GLfixed)* coords);
void glMultiTexCoord4xvOES (GLenum texture, const(GLfixed)* coords);
void glNormal3xvOES (const(GLfixed)* coords);
void glPassThroughxOES (GLfixed token);
void glPixelMapx (GLenum map, GLint size, const(GLfixed)* values);
void glPixelStorex (GLenum pname, GLfixed param);
void glPixelTransferxOES (GLenum pname, GLfixed param);
void glPixelZoomxOES (GLfixed xfactor, GLfixed yfactor);
void glPrioritizeTexturesxOES (GLsizei n, const(GLuint)* textures, const(GLfixed)* priorities);
void glRasterPos2xOES (GLfixed x, GLfixed y);
void glRasterPos2xvOES (const(GLfixed)* coords);
void glRasterPos3xOES (GLfixed x, GLfixed y, GLfixed z);
void glRasterPos3xvOES (const(GLfixed)* coords);
void glRasterPos4xOES (GLfixed x, GLfixed y, GLfixed z, GLfixed w);
void glRasterPos4xvOES (const(GLfixed)* coords);
void glRectxOES (GLfixed x1, GLfixed y1, GLfixed x2, GLfixed y2);
void glRectxvOES (const(GLfixed)* v1, const(GLfixed)* v2);
void glTexCoord1xOES (GLfixed s);
void glTexCoord1xvOES (const(GLfixed)* coords);
void glTexCoord2xOES (GLfixed s, GLfixed t);
void glTexCoord2xvOES (const(GLfixed)* coords);
void glTexCoord3xOES (GLfixed s, GLfixed t, GLfixed r);
void glTexCoord3xvOES (const(GLfixed)* coords);
void glTexCoord4xOES (GLfixed s, GLfixed t, GLfixed r, GLfixed q);
void glTexCoord4xvOES (const(GLfixed)* coords);
void glTexGenxOES (GLenum coord, GLenum pname, GLfixed param);
void glTexGenxvOES (GLenum coord, GLenum pname, const(GLfixed)* params);
void glVertex2xOES (GLfixed x);
void glVertex2xvOES (const(GLfixed)* coords);
void glVertex3xOES (GLfixed x, GLfixed y);
void glVertex3xvOES (const(GLfixed)* coords);
void glVertex4xOES (GLfixed x, GLfixed y, GLfixed z);
void glVertex4xvOES (const(GLfixed)* coords);

/* GL_OES_fixed_point */

enum GL_OES_query_matrix = 1;
alias PFNGLQUERYMATRIXXOESPROC = uint function (GLfixed* mantissa, GLint* exponent);
GLbitfield glQueryMatrixxOES (GLfixed* mantissa, GLint* exponent);

/* GL_OES_query_matrix */

enum GL_OES_read_format = 1;
enum GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 0x8B9A;
enum GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 0x8B9B;
/* GL_OES_read_format */

enum GL_OES_single_precision = 1;
alias PFNGLCLEARDEPTHFOESPROC = void function (GLclampf depth);
alias PFNGLCLIPPLANEFOESPROC = void function (GLenum plane, const(GLfloat)* equation);
alias PFNGLDEPTHRANGEFOESPROC = void function (GLclampf n, GLclampf f);
alias PFNGLFRUSTUMFOESPROC = void function (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f);
alias PFNGLGETCLIPPLANEFOESPROC = void function (GLenum plane, GLfloat* equation);
alias PFNGLORTHOFOESPROC = void function (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f);
void glClearDepthfOES (GLclampf depth);
void glClipPlanefOES (GLenum plane, const(GLfloat)* equation);
void glDepthRangefOES (GLclampf n, GLclampf f);
void glFrustumfOES (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f);
void glGetClipPlanefOES (GLenum plane, GLfloat* equation);
void glOrthofOES (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f);

/* GL_OES_single_precision */

enum GL_3DFX_multisample = 1;
enum GL_MULTISAMPLE_3DFX = 0x86B2;
enum GL_SAMPLE_BUFFERS_3DFX = 0x86B3;
enum GL_SAMPLES_3DFX = 0x86B4;
enum GL_MULTISAMPLE_BIT_3DFX = 0x20000000;
/* GL_3DFX_multisample */

enum GL_3DFX_tbuffer = 1;
alias PFNGLTBUFFERMASK3DFXPROC = void function (GLuint mask);
void glTbufferMask3DFX (GLuint mask);

/* GL_3DFX_tbuffer */

enum GL_3DFX_texture_compression_FXT1 = 1;
enum GL_COMPRESSED_RGB_FXT1_3DFX = 0x86B0;
enum GL_COMPRESSED_RGBA_FXT1_3DFX = 0x86B1;
/* GL_3DFX_texture_compression_FXT1 */

enum GL_AMD_blend_minmax_factor = 1;
enum GL_FACTOR_MIN_AMD = 0x901C;
enum GL_FACTOR_MAX_AMD = 0x901D;
/* GL_AMD_blend_minmax_factor */

enum GL_AMD_conservative_depth = 1;
/* GL_AMD_conservative_depth */

enum GL_AMD_debug_output = 1;
alias GLDEBUGPROCAMD = void function (GLuint id, GLenum category, GLenum severity, GLsizei length, const(GLchar)* message, void* userParam);
enum GL_MAX_DEBUG_MESSAGE_LENGTH_AMD = 0x9143;
enum GL_MAX_DEBUG_LOGGED_MESSAGES_AMD = 0x9144;
enum GL_DEBUG_LOGGED_MESSAGES_AMD = 0x9145;
enum GL_DEBUG_SEVERITY_HIGH_AMD = 0x9146;
enum GL_DEBUG_SEVERITY_MEDIUM_AMD = 0x9147;
enum GL_DEBUG_SEVERITY_LOW_AMD = 0x9148;
enum GL_DEBUG_CATEGORY_API_ERROR_AMD = 0x9149;
enum GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = 0x914A;
enum GL_DEBUG_CATEGORY_DEPRECATION_AMD = 0x914B;
enum GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914C;
enum GL_DEBUG_CATEGORY_PERFORMANCE_AMD = 0x914D;
enum GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD = 0x914E;
enum GL_DEBUG_CATEGORY_APPLICATION_AMD = 0x914F;
enum GL_DEBUG_CATEGORY_OTHER_AMD = 0x9150;
alias PFNGLDEBUGMESSAGEENABLEAMDPROC = void function (GLenum category, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
alias PFNGLDEBUGMESSAGEINSERTAMDPROC = void function (GLenum category, GLenum severity, GLuint id, GLsizei length, const(GLchar)* buf);
alias PFNGLDEBUGMESSAGECALLBACKAMDPROC = void function (GLDEBUGPROCAMD callback, void* userParam);
alias PFNGLGETDEBUGMESSAGELOGAMDPROC = uint function (GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message);
void glDebugMessageEnableAMD (GLenum category, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
void glDebugMessageInsertAMD (GLenum category, GLenum severity, GLuint id, GLsizei length, const(GLchar)* buf);
void glDebugMessageCallbackAMD (GLDEBUGPROCAMD callback, void* userParam);
GLuint glGetDebugMessageLogAMD (GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message);

/* GL_AMD_debug_output */

enum GL_AMD_depth_clamp_separate = 1;
enum GL_DEPTH_CLAMP_NEAR_AMD = 0x901E;
enum GL_DEPTH_CLAMP_FAR_AMD = 0x901F;
/* GL_AMD_depth_clamp_separate */

enum GL_AMD_draw_buffers_blend = 1;
alias PFNGLBLENDFUNCINDEXEDAMDPROC = void function (GLuint buf, GLenum src, GLenum dst);
alias PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC = void function (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
alias PFNGLBLENDEQUATIONINDEXEDAMDPROC = void function (GLuint buf, GLenum mode);
alias PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC = void function (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendFuncIndexedAMD (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparateIndexedAMD (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glBlendEquationIndexedAMD (GLuint buf, GLenum mode);
void glBlendEquationSeparateIndexedAMD (GLuint buf, GLenum modeRGB, GLenum modeAlpha);

/* GL_AMD_draw_buffers_blend */

enum GL_AMD_gcn_shader = 1;
/* GL_AMD_gcn_shader */

enum GL_AMD_gpu_shader_int64 = 1;
alias GLint64EXT = c_long;
enum GL_INT64_NV = 0x140E;
enum GL_UNSIGNED_INT64_NV = 0x140F;
enum GL_INT8_NV = 0x8FE0;
enum GL_INT8_VEC2_NV = 0x8FE1;
enum GL_INT8_VEC3_NV = 0x8FE2;
enum GL_INT8_VEC4_NV = 0x8FE3;
enum GL_INT16_NV = 0x8FE4;
enum GL_INT16_VEC2_NV = 0x8FE5;
enum GL_INT16_VEC3_NV = 0x8FE6;
enum GL_INT16_VEC4_NV = 0x8FE7;
enum GL_INT64_VEC2_NV = 0x8FE9;
enum GL_INT64_VEC3_NV = 0x8FEA;
enum GL_INT64_VEC4_NV = 0x8FEB;
enum GL_UNSIGNED_INT8_NV = 0x8FEC;
enum GL_UNSIGNED_INT8_VEC2_NV = 0x8FED;
enum GL_UNSIGNED_INT8_VEC3_NV = 0x8FEE;
enum GL_UNSIGNED_INT8_VEC4_NV = 0x8FEF;
enum GL_UNSIGNED_INT16_NV = 0x8FF0;
enum GL_UNSIGNED_INT16_VEC2_NV = 0x8FF1;
enum GL_UNSIGNED_INT16_VEC3_NV = 0x8FF2;
enum GL_UNSIGNED_INT16_VEC4_NV = 0x8FF3;
enum GL_UNSIGNED_INT64_VEC2_NV = 0x8FF5;
enum GL_UNSIGNED_INT64_VEC3_NV = 0x8FF6;
enum GL_UNSIGNED_INT64_VEC4_NV = 0x8FF7;
enum GL_FLOAT16_NV = 0x8FF8;
enum GL_FLOAT16_VEC2_NV = 0x8FF9;
enum GL_FLOAT16_VEC3_NV = 0x8FFA;
enum GL_FLOAT16_VEC4_NV = 0x8FFB;
alias PFNGLUNIFORM1I64NVPROC = void function (GLint location, GLint64EXT x);
alias PFNGLUNIFORM2I64NVPROC = void function (GLint location, GLint64EXT x, GLint64EXT y);
alias PFNGLUNIFORM3I64NVPROC = void function (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
alias PFNGLUNIFORM4I64NVPROC = void function (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
alias PFNGLUNIFORM1I64VNVPROC = void function (GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLUNIFORM2I64VNVPROC = void function (GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLUNIFORM3I64VNVPROC = void function (GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLUNIFORM4I64VNVPROC = void function (GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLUNIFORM1UI64NVPROC = void function (GLint location, GLuint64EXT x);
alias PFNGLUNIFORM2UI64NVPROC = void function (GLint location, GLuint64EXT x, GLuint64EXT y);
alias PFNGLUNIFORM3UI64NVPROC = void function (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
alias PFNGLUNIFORM4UI64NVPROC = void function (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
alias PFNGLUNIFORM1UI64VNVPROC = void function (GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLUNIFORM2UI64VNVPROC = void function (GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLUNIFORM3UI64VNVPROC = void function (GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLUNIFORM4UI64VNVPROC = void function (GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLGETUNIFORMI64VNVPROC = void function (GLuint program, GLint location, GLint64EXT* params);
alias PFNGLGETUNIFORMUI64VNVPROC = void function (GLuint program, GLint location, GLuint64EXT* params);
alias PFNGLPROGRAMUNIFORM1I64NVPROC = void function (GLuint program, GLint location, GLint64EXT x);
alias PFNGLPROGRAMUNIFORM2I64NVPROC = void function (GLuint program, GLint location, GLint64EXT x, GLint64EXT y);
alias PFNGLPROGRAMUNIFORM3I64NVPROC = void function (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
alias PFNGLPROGRAMUNIFORM4I64NVPROC = void function (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
alias PFNGLPROGRAMUNIFORM1I64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLPROGRAMUNIFORM2I64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLPROGRAMUNIFORM3I64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLPROGRAMUNIFORM4I64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
alias PFNGLPROGRAMUNIFORM1UI64NVPROC = void function (GLuint program, GLint location, GLuint64EXT x);
alias PFNGLPROGRAMUNIFORM2UI64NVPROC = void function (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y);
alias PFNGLPROGRAMUNIFORM3UI64NVPROC = void function (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
alias PFNGLPROGRAMUNIFORM4UI64NVPROC = void function (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
alias PFNGLPROGRAMUNIFORM1UI64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLPROGRAMUNIFORM2UI64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLPROGRAMUNIFORM3UI64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLPROGRAMUNIFORM4UI64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
void glUniform1i64NV (GLint location, GLint64EXT x);
void glUniform2i64NV (GLint location, GLint64EXT x, GLint64EXT y);
void glUniform3i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glUniform4i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glUniform1i64vNV (GLint location, GLsizei count, const(GLint64EXT)* value);
void glUniform2i64vNV (GLint location, GLsizei count, const(GLint64EXT)* value);
void glUniform3i64vNV (GLint location, GLsizei count, const(GLint64EXT)* value);
void glUniform4i64vNV (GLint location, GLsizei count, const(GLint64EXT)* value);
void glUniform1ui64NV (GLint location, GLuint64EXT x);
void glUniform2ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y);
void glUniform3ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glUniform4ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glUniform1ui64vNV (GLint location, GLsizei count, const(GLuint64EXT)* value);
void glUniform2ui64vNV (GLint location, GLsizei count, const(GLuint64EXT)* value);
void glUniform3ui64vNV (GLint location, GLsizei count, const(GLuint64EXT)* value);
void glUniform4ui64vNV (GLint location, GLsizei count, const(GLuint64EXT)* value);
void glGetUniformi64vNV (GLuint program, GLint location, GLint64EXT* params);
void glGetUniformui64vNV (GLuint program, GLint location, GLuint64EXT* params);
void glProgramUniform1i64NV (GLuint program, GLint location, GLint64EXT x);
void glProgramUniform2i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y);
void glProgramUniform3i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glProgramUniform4i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glProgramUniform1i64vNV (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
void glProgramUniform2i64vNV (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
void glProgramUniform3i64vNV (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
void glProgramUniform4i64vNV (GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value);
void glProgramUniform1ui64NV (GLuint program, GLint location, GLuint64EXT x);
void glProgramUniform2ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y);
void glProgramUniform3ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glProgramUniform4ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glProgramUniform1ui64vNV (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
void glProgramUniform2ui64vNV (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
void glProgramUniform3ui64vNV (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
void glProgramUniform4ui64vNV (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);

/* GL_AMD_gpu_shader_int64 */

enum GL_AMD_interleaved_elements = 1;
enum GL_VERTEX_ELEMENT_SWIZZLE_AMD = 0x91A4;
enum GL_VERTEX_ID_SWIZZLE_AMD = 0x91A5;
alias PFNGLVERTEXATTRIBPARAMETERIAMDPROC = void function (GLuint index, GLenum pname, GLint param);
void glVertexAttribParameteriAMD (GLuint index, GLenum pname, GLint param);

/* GL_AMD_interleaved_elements */

enum GL_AMD_multi_draw_indirect = 1;
alias PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC = void function (GLenum mode, const(void)* indirect, GLsizei primcount, GLsizei stride);
alias PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC = void function (GLenum mode, GLenum type, const(void)* indirect, GLsizei primcount, GLsizei stride);
void glMultiDrawArraysIndirectAMD (GLenum mode, const(void)* indirect, GLsizei primcount, GLsizei stride);
void glMultiDrawElementsIndirectAMD (GLenum mode, GLenum type, const(void)* indirect, GLsizei primcount, GLsizei stride);

/* GL_AMD_multi_draw_indirect */

enum GL_AMD_name_gen_delete = 1;
enum GL_DATA_BUFFER_AMD = 0x9151;
enum GL_PERFORMANCE_MONITOR_AMD = 0x9152;
enum GL_QUERY_OBJECT_AMD = 0x9153;
enum GL_VERTEX_ARRAY_OBJECT_AMD = 0x9154;
enum GL_SAMPLER_OBJECT_AMD = 0x9155;
alias PFNGLGENNAMESAMDPROC = void function (GLenum identifier, GLuint num, GLuint* names);
alias PFNGLDELETENAMESAMDPROC = void function (GLenum identifier, GLuint num, const(GLuint)* names);
alias PFNGLISNAMEAMDPROC = ubyte function (GLenum identifier, GLuint name);
void glGenNamesAMD (GLenum identifier, GLuint num, GLuint* names);
void glDeleteNamesAMD (GLenum identifier, GLuint num, const(GLuint)* names);
GLboolean glIsNameAMD (GLenum identifier, GLuint name);

/* GL_AMD_name_gen_delete */

enum GL_AMD_occlusion_query_event = 1;
enum GL_OCCLUSION_QUERY_EVENT_MASK_AMD = 0x874F;
enum GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD = 0x00000001;
enum GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD = 0x00000002;
enum GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD = 0x00000004;
enum GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD = 0x00000008;
enum GL_QUERY_ALL_EVENT_BITS_AMD = 0xFFFFFFFF;
alias PFNGLQUERYOBJECTPARAMETERUIAMDPROC = void function (GLenum target, GLuint id, GLenum pname, GLuint param);
void glQueryObjectParameteruiAMD (GLenum target, GLuint id, GLenum pname, GLuint param);

/* GL_AMD_occlusion_query_event */

enum GL_AMD_performance_monitor = 1;
enum GL_COUNTER_TYPE_AMD = 0x8BC0;
enum GL_COUNTER_RANGE_AMD = 0x8BC1;
enum GL_UNSIGNED_INT64_AMD = 0x8BC2;
enum GL_PERCENTAGE_AMD = 0x8BC3;
enum GL_PERFMON_RESULT_AVAILABLE_AMD = 0x8BC4;
enum GL_PERFMON_RESULT_SIZE_AMD = 0x8BC5;
enum GL_PERFMON_RESULT_AMD = 0x8BC6;
alias PFNGLGETPERFMONITORGROUPSAMDPROC = void function (GLint* numGroups, GLsizei groupsSize, GLuint* groups);
alias PFNGLGETPERFMONITORCOUNTERSAMDPROC = void function (GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters);
alias PFNGLGETPERFMONITORGROUPSTRINGAMDPROC = void function (GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString);
alias PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC = void function (GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString);
alias PFNGLGETPERFMONITORCOUNTERINFOAMDPROC = void function (GLuint group, GLuint counter, GLenum pname, void* data);
alias PFNGLGENPERFMONITORSAMDPROC = void function (GLsizei n, GLuint* monitors);
alias PFNGLDELETEPERFMONITORSAMDPROC = void function (GLsizei n, GLuint* monitors);
alias PFNGLSELECTPERFMONITORCOUNTERSAMDPROC = void function (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList);
alias PFNGLBEGINPERFMONITORAMDPROC = void function (GLuint monitor);
alias PFNGLENDPERFMONITORAMDPROC = void function (GLuint monitor);
alias PFNGLGETPERFMONITORCOUNTERDATAAMDPROC = void function (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten);
void glGetPerfMonitorGroupsAMD (GLint* numGroups, GLsizei groupsSize, GLuint* groups);
void glGetPerfMonitorCountersAMD (GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters);
void glGetPerfMonitorGroupStringAMD (GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString);
void glGetPerfMonitorCounterStringAMD (GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString);
void glGetPerfMonitorCounterInfoAMD (GLuint group, GLuint counter, GLenum pname, void* data);
void glGenPerfMonitorsAMD (GLsizei n, GLuint* monitors);
void glDeletePerfMonitorsAMD (GLsizei n, GLuint* monitors);
void glSelectPerfMonitorCountersAMD (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList);
void glBeginPerfMonitorAMD (GLuint monitor);
void glEndPerfMonitorAMD (GLuint monitor);
void glGetPerfMonitorCounterDataAMD (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten);

/* GL_AMD_performance_monitor */

enum GL_AMD_pinned_memory = 1;
enum GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD = 0x9160;
/* GL_AMD_pinned_memory */

enum GL_AMD_query_buffer_object = 1;
enum GL_QUERY_BUFFER_AMD = 0x9192;
enum GL_QUERY_BUFFER_BINDING_AMD = 0x9193;
enum GL_QUERY_RESULT_NO_WAIT_AMD = 0x9194;
/* GL_AMD_query_buffer_object */

enum GL_AMD_sample_positions = 1;
enum GL_SUBSAMPLE_DISTANCE_AMD = 0x883F;
alias PFNGLSETMULTISAMPLEFVAMDPROC = void function (GLenum pname, GLuint index, const(GLfloat)* val);
void glSetMultisamplefvAMD (GLenum pname, GLuint index, const(GLfloat)* val);

/* GL_AMD_sample_positions */

enum GL_AMD_seamless_cubemap_per_texture = 1;
/* GL_AMD_seamless_cubemap_per_texture */

enum GL_AMD_shader_atomic_counter_ops = 1;
/* GL_AMD_shader_atomic_counter_ops */

enum GL_AMD_shader_stencil_export = 1;
/* GL_AMD_shader_stencil_export */

enum GL_AMD_shader_trinary_minmax = 1;
/* GL_AMD_shader_trinary_minmax */

enum GL_AMD_sparse_texture = 1;
enum GL_VIRTUAL_PAGE_SIZE_X_AMD = 0x9195;
enum GL_VIRTUAL_PAGE_SIZE_Y_AMD = 0x9196;
enum GL_VIRTUAL_PAGE_SIZE_Z_AMD = 0x9197;
enum GL_MAX_SPARSE_TEXTURE_SIZE_AMD = 0x9198;
enum GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD = 0x9199;
enum GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 0x919A;
enum GL_MIN_SPARSE_LEVEL_AMD = 0x919B;
enum GL_MIN_LOD_WARNING_AMD = 0x919C;
enum GL_TEXTURE_STORAGE_SPARSE_BIT_AMD = 0x00000001;
alias PFNGLTEXSTORAGESPARSEAMDPROC = void function (GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
alias PFNGLTEXTURESTORAGESPARSEAMDPROC = void function (GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
void glTexStorageSparseAMD (GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
void glTextureStorageSparseAMD (GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);

/* GL_AMD_sparse_texture */

enum GL_AMD_stencil_operation_extended = 1;
enum GL_SET_AMD = 0x874A;
enum GL_REPLACE_VALUE_AMD = 0x874B;
enum GL_STENCIL_OP_VALUE_AMD = 0x874C;
enum GL_STENCIL_BACK_OP_VALUE_AMD = 0x874D;
alias PFNGLSTENCILOPVALUEAMDPROC = void function (GLenum face, GLuint value);
void glStencilOpValueAMD (GLenum face, GLuint value);

/* GL_AMD_stencil_operation_extended */

enum GL_AMD_texture_texture4 = 1;
/* GL_AMD_texture_texture4 */

enum GL_AMD_transform_feedback3_lines_triangles = 1;
/* GL_AMD_transform_feedback3_lines_triangles */

enum GL_AMD_transform_feedback4 = 1;
enum GL_STREAM_RASTERIZATION_AMD = 0x91A0;
/* GL_AMD_transform_feedback4 */

enum GL_AMD_vertex_shader_layer = 1;
/* GL_AMD_vertex_shader_layer */

enum GL_AMD_vertex_shader_tessellator = 1;
enum GL_SAMPLER_BUFFER_AMD = 0x9001;
enum GL_INT_SAMPLER_BUFFER_AMD = 0x9002;
enum GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD = 0x9003;
enum GL_TESSELLATION_MODE_AMD = 0x9004;
enum GL_TESSELLATION_FACTOR_AMD = 0x9005;
enum GL_DISCRETE_AMD = 0x9006;
enum GL_CONTINUOUS_AMD = 0x9007;
alias PFNGLTESSELLATIONFACTORAMDPROC = void function (GLfloat factor);
alias PFNGLTESSELLATIONMODEAMDPROC = void function (GLenum mode);
void glTessellationFactorAMD (GLfloat factor);
void glTessellationModeAMD (GLenum mode);

/* GL_AMD_vertex_shader_tessellator */

enum GL_AMD_vertex_shader_viewport_index = 1;
/* GL_AMD_vertex_shader_viewport_index */

enum GL_APPLE_aux_depth_stencil = 1;
enum GL_AUX_DEPTH_STENCIL_APPLE = 0x8A14;
/* GL_APPLE_aux_depth_stencil */

enum GL_APPLE_client_storage = 1;
enum GL_UNPACK_CLIENT_STORAGE_APPLE = 0x85B2;
/* GL_APPLE_client_storage */

enum GL_APPLE_element_array = 1;
enum GL_ELEMENT_ARRAY_APPLE = 0x8A0C;
enum GL_ELEMENT_ARRAY_TYPE_APPLE = 0x8A0D;
enum GL_ELEMENT_ARRAY_POINTER_APPLE = 0x8A0E;
alias PFNGLELEMENTPOINTERAPPLEPROC = void function (GLenum type, const(void)* pointer);
alias PFNGLDRAWELEMENTARRAYAPPLEPROC = void function (GLenum mode, GLint first, GLsizei count);
alias PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC = void function (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
alias PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC = void function (GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount);
alias PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC = void function (GLenum mode, GLuint start, GLuint end, const(GLint)* first, const(GLsizei)* count, GLsizei primcount);
void glElementPointerAPPLE (GLenum type, const(void)* pointer);
void glDrawElementArrayAPPLE (GLenum mode, GLint first, GLsizei count);
void glDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
void glMultiDrawElementArrayAPPLE (GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount);
void glMultiDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, const(GLint)* first, const(GLsizei)* count, GLsizei primcount);

/* GL_APPLE_element_array */

enum GL_APPLE_fence = 1;
enum GL_DRAW_PIXELS_APPLE = 0x8A0A;
enum GL_FENCE_APPLE = 0x8A0B;
alias PFNGLGENFENCESAPPLEPROC = void function (GLsizei n, GLuint* fences);
alias PFNGLDELETEFENCESAPPLEPROC = void function (GLsizei n, const(GLuint)* fences);
alias PFNGLSETFENCEAPPLEPROC = void function (GLuint fence);
alias PFNGLISFENCEAPPLEPROC = ubyte function (GLuint fence);
alias PFNGLTESTFENCEAPPLEPROC = ubyte function (GLuint fence);
alias PFNGLFINISHFENCEAPPLEPROC = void function (GLuint fence);
alias PFNGLTESTOBJECTAPPLEPROC = ubyte function (GLenum object, GLuint name);
alias PFNGLFINISHOBJECTAPPLEPROC = void function (GLenum object, GLint name);
void glGenFencesAPPLE (GLsizei n, GLuint* fences);
void glDeleteFencesAPPLE (GLsizei n, const(GLuint)* fences);
void glSetFenceAPPLE (GLuint fence);
GLboolean glIsFenceAPPLE (GLuint fence);
GLboolean glTestFenceAPPLE (GLuint fence);
void glFinishFenceAPPLE (GLuint fence);
GLboolean glTestObjectAPPLE (GLenum object, GLuint name);
void glFinishObjectAPPLE (GLenum object, GLint name);

/* GL_APPLE_fence */

enum GL_APPLE_float_pixels = 1;
enum GL_HALF_APPLE = 0x140B;
enum GL_RGBA_FLOAT32_APPLE = 0x8814;
enum GL_RGB_FLOAT32_APPLE = 0x8815;
enum GL_ALPHA_FLOAT32_APPLE = 0x8816;
enum GL_INTENSITY_FLOAT32_APPLE = 0x8817;
enum GL_LUMINANCE_FLOAT32_APPLE = 0x8818;
enum GL_LUMINANCE_ALPHA_FLOAT32_APPLE = 0x8819;
enum GL_RGBA_FLOAT16_APPLE = 0x881A;
enum GL_RGB_FLOAT16_APPLE = 0x881B;
enum GL_ALPHA_FLOAT16_APPLE = 0x881C;
enum GL_INTENSITY_FLOAT16_APPLE = 0x881D;
enum GL_LUMINANCE_FLOAT16_APPLE = 0x881E;
enum GL_LUMINANCE_ALPHA_FLOAT16_APPLE = 0x881F;
enum GL_COLOR_FLOAT_APPLE = 0x8A0F;
/* GL_APPLE_float_pixels */

enum GL_APPLE_flush_buffer_range = 1;
enum GL_BUFFER_SERIALIZED_MODIFY_APPLE = 0x8A12;
enum GL_BUFFER_FLUSHING_UNMAP_APPLE = 0x8A13;
alias PFNGLBUFFERPARAMETERIAPPLEPROC = void function (GLenum target, GLenum pname, GLint param);
alias PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC = void function (GLenum target, GLintptr offset, GLsizeiptr size);
void glBufferParameteriAPPLE (GLenum target, GLenum pname, GLint param);
void glFlushMappedBufferRangeAPPLE (GLenum target, GLintptr offset, GLsizeiptr size);

/* GL_APPLE_flush_buffer_range */

enum GL_APPLE_object_purgeable = 1;
enum GL_BUFFER_OBJECT_APPLE = 0x85B3;
enum GL_RELEASED_APPLE = 0x8A19;
enum GL_VOLATILE_APPLE = 0x8A1A;
enum GL_RETAINED_APPLE = 0x8A1B;
enum GL_UNDEFINED_APPLE = 0x8A1C;
enum GL_PURGEABLE_APPLE = 0x8A1D;
alias PFNGLOBJECTPURGEABLEAPPLEPROC = uint function (GLenum objectType, GLuint name, GLenum option);
alias PFNGLOBJECTUNPURGEABLEAPPLEPROC = uint function (GLenum objectType, GLuint name, GLenum option);
alias PFNGLGETOBJECTPARAMETERIVAPPLEPROC = void function (GLenum objectType, GLuint name, GLenum pname, GLint* params);
GLenum glObjectPurgeableAPPLE (GLenum objectType, GLuint name, GLenum option);
GLenum glObjectUnpurgeableAPPLE (GLenum objectType, GLuint name, GLenum option);
void glGetObjectParameterivAPPLE (GLenum objectType, GLuint name, GLenum pname, GLint* params);

/* GL_APPLE_object_purgeable */

enum GL_APPLE_rgb_422 = 1;
enum GL_RGB_422_APPLE = 0x8A1F;
enum GL_UNSIGNED_SHORT_8_8_APPLE = 0x85BA;
enum GL_UNSIGNED_SHORT_8_8_REV_APPLE = 0x85BB;
enum GL_RGB_RAW_422_APPLE = 0x8A51;
/* GL_APPLE_rgb_422 */

enum GL_APPLE_row_bytes = 1;
enum GL_PACK_ROW_BYTES_APPLE = 0x8A15;
enum GL_UNPACK_ROW_BYTES_APPLE = 0x8A16;
/* GL_APPLE_row_bytes */

enum GL_APPLE_specular_vector = 1;
enum GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = 0x85B0;
/* GL_APPLE_specular_vector */

enum GL_APPLE_texture_range = 1;
enum GL_TEXTURE_RANGE_LENGTH_APPLE = 0x85B7;
enum GL_TEXTURE_RANGE_POINTER_APPLE = 0x85B8;
enum GL_TEXTURE_STORAGE_HINT_APPLE = 0x85BC;
enum GL_STORAGE_PRIVATE_APPLE = 0x85BD;
enum GL_STORAGE_CACHED_APPLE = 0x85BE;
enum GL_STORAGE_SHARED_APPLE = 0x85BF;
alias PFNGLTEXTURERANGEAPPLEPROC = void function (GLenum target, GLsizei length, const(void)* pointer);
alias PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC = void function (GLenum target, GLenum pname, void** params);
void glTextureRangeAPPLE (GLenum target, GLsizei length, const(void)* pointer);
void glGetTexParameterPointervAPPLE (GLenum target, GLenum pname, void** params);

/* GL_APPLE_texture_range */

enum GL_APPLE_transform_hint = 1;
enum GL_TRANSFORM_HINT_APPLE = 0x85B1;
/* GL_APPLE_transform_hint */

enum GL_APPLE_vertex_array_object = 1;
enum GL_VERTEX_ARRAY_BINDING_APPLE = 0x85B5;
alias PFNGLBINDVERTEXARRAYAPPLEPROC = void function (GLuint array);
alias PFNGLDELETEVERTEXARRAYSAPPLEPROC = void function (GLsizei n, const(GLuint)* arrays);
alias PFNGLGENVERTEXARRAYSAPPLEPROC = void function (GLsizei n, GLuint* arrays);
alias PFNGLISVERTEXARRAYAPPLEPROC = ubyte function (GLuint array);
void glBindVertexArrayAPPLE (GLuint array);
void glDeleteVertexArraysAPPLE (GLsizei n, const(GLuint)* arrays);
void glGenVertexArraysAPPLE (GLsizei n, GLuint* arrays);
GLboolean glIsVertexArrayAPPLE (GLuint array);

/* GL_APPLE_vertex_array_object */

enum GL_APPLE_vertex_array_range = 1;
enum GL_VERTEX_ARRAY_RANGE_APPLE = 0x851D;
enum GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE = 0x851E;
enum GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = 0x851F;
enum GL_VERTEX_ARRAY_RANGE_POINTER_APPLE = 0x8521;
enum GL_STORAGE_CLIENT_APPLE = 0x85B4;
alias PFNGLVERTEXARRAYRANGEAPPLEPROC = void function (GLsizei length, void* pointer);
alias PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC = void function (GLsizei length, void* pointer);
alias PFNGLVERTEXARRAYPARAMETERIAPPLEPROC = void function (GLenum pname, GLint param);
void glVertexArrayRangeAPPLE (GLsizei length, void* pointer);
void glFlushVertexArrayRangeAPPLE (GLsizei length, void* pointer);
void glVertexArrayParameteriAPPLE (GLenum pname, GLint param);

/* GL_APPLE_vertex_array_range */

enum GL_APPLE_vertex_program_evaluators = 1;
enum GL_VERTEX_ATTRIB_MAP1_APPLE = 0x8A00;
enum GL_VERTEX_ATTRIB_MAP2_APPLE = 0x8A01;
enum GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE = 0x8A02;
enum GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE = 0x8A03;
enum GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE = 0x8A04;
enum GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = 0x8A05;
enum GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE = 0x8A06;
enum GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE = 0x8A07;
enum GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE = 0x8A08;
enum GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = 0x8A09;
alias PFNGLENABLEVERTEXATTRIBAPPLEPROC = void function (GLuint index, GLenum pname);
alias PFNGLDISABLEVERTEXATTRIBAPPLEPROC = void function (GLuint index, GLenum pname);
alias PFNGLISVERTEXATTRIBENABLEDAPPLEPROC = ubyte function (GLuint index, GLenum pname);
alias PFNGLMAPVERTEXATTRIB1DAPPLEPROC = void function (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const(GLdouble)* points);
alias PFNGLMAPVERTEXATTRIB1FAPPLEPROC = void function (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const(GLfloat)* points);
alias PFNGLMAPVERTEXATTRIB2DAPPLEPROC = void function (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const(GLdouble)* points);
alias PFNGLMAPVERTEXATTRIB2FAPPLEPROC = void function (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const(GLfloat)* points);
void glEnableVertexAttribAPPLE (GLuint index, GLenum pname);
void glDisableVertexAttribAPPLE (GLuint index, GLenum pname);
GLboolean glIsVertexAttribEnabledAPPLE (GLuint index, GLenum pname);
void glMapVertexAttrib1dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const(GLdouble)* points);
void glMapVertexAttrib1fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const(GLfloat)* points);
void glMapVertexAttrib2dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const(GLdouble)* points);
void glMapVertexAttrib2fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const(GLfloat)* points);

/* GL_APPLE_vertex_program_evaluators */

enum GL_APPLE_ycbcr_422 = 1;
enum GL_YCBCR_422_APPLE = 0x85B9;
/* GL_APPLE_ycbcr_422 */

enum GL_ATI_draw_buffers = 1;
enum GL_MAX_DRAW_BUFFERS_ATI = 0x8824;
enum GL_DRAW_BUFFER0_ATI = 0x8825;
enum GL_DRAW_BUFFER1_ATI = 0x8826;
enum GL_DRAW_BUFFER2_ATI = 0x8827;
enum GL_DRAW_BUFFER3_ATI = 0x8828;
enum GL_DRAW_BUFFER4_ATI = 0x8829;
enum GL_DRAW_BUFFER5_ATI = 0x882A;
enum GL_DRAW_BUFFER6_ATI = 0x882B;
enum GL_DRAW_BUFFER7_ATI = 0x882C;
enum GL_DRAW_BUFFER8_ATI = 0x882D;
enum GL_DRAW_BUFFER9_ATI = 0x882E;
enum GL_DRAW_BUFFER10_ATI = 0x882F;
enum GL_DRAW_BUFFER11_ATI = 0x8830;
enum GL_DRAW_BUFFER12_ATI = 0x8831;
enum GL_DRAW_BUFFER13_ATI = 0x8832;
enum GL_DRAW_BUFFER14_ATI = 0x8833;
enum GL_DRAW_BUFFER15_ATI = 0x8834;
alias PFNGLDRAWBUFFERSATIPROC = void function (GLsizei n, const(GLenum)* bufs);
void glDrawBuffersATI (GLsizei n, const(GLenum)* bufs);

/* GL_ATI_draw_buffers */

enum GL_ATI_element_array = 1;
enum GL_ELEMENT_ARRAY_ATI = 0x8768;
enum GL_ELEMENT_ARRAY_TYPE_ATI = 0x8769;
enum GL_ELEMENT_ARRAY_POINTER_ATI = 0x876A;
alias PFNGLELEMENTPOINTERATIPROC = void function (GLenum type, const(void)* pointer);
alias PFNGLDRAWELEMENTARRAYATIPROC = void function (GLenum mode, GLsizei count);
alias PFNGLDRAWRANGEELEMENTARRAYATIPROC = void function (GLenum mode, GLuint start, GLuint end, GLsizei count);
void glElementPointerATI (GLenum type, const(void)* pointer);
void glDrawElementArrayATI (GLenum mode, GLsizei count);
void glDrawRangeElementArrayATI (GLenum mode, GLuint start, GLuint end, GLsizei count);

/* GL_ATI_element_array */

enum GL_ATI_envmap_bumpmap = 1;
enum GL_BUMP_ROT_MATRIX_ATI = 0x8775;
enum GL_BUMP_ROT_MATRIX_SIZE_ATI = 0x8776;
enum GL_BUMP_NUM_TEX_UNITS_ATI = 0x8777;
enum GL_BUMP_TEX_UNITS_ATI = 0x8778;
enum GL_DUDV_ATI = 0x8779;
enum GL_DU8DV8_ATI = 0x877A;
enum GL_BUMP_ENVMAP_ATI = 0x877B;
enum GL_BUMP_TARGET_ATI = 0x877C;
alias PFNGLTEXBUMPPARAMETERIVATIPROC = void function (GLenum pname, const(GLint)* param);
alias PFNGLTEXBUMPPARAMETERFVATIPROC = void function (GLenum pname, const(GLfloat)* param);
alias PFNGLGETTEXBUMPPARAMETERIVATIPROC = void function (GLenum pname, GLint* param);
alias PFNGLGETTEXBUMPPARAMETERFVATIPROC = void function (GLenum pname, GLfloat* param);
void glTexBumpParameterivATI (GLenum pname, const(GLint)* param);
void glTexBumpParameterfvATI (GLenum pname, const(GLfloat)* param);
void glGetTexBumpParameterivATI (GLenum pname, GLint* param);
void glGetTexBumpParameterfvATI (GLenum pname, GLfloat* param);

/* GL_ATI_envmap_bumpmap */

enum GL_ATI_fragment_shader = 1;
enum GL_FRAGMENT_SHADER_ATI = 0x8920;
enum GL_REG_0_ATI = 0x8921;
enum GL_REG_1_ATI = 0x8922;
enum GL_REG_2_ATI = 0x8923;
enum GL_REG_3_ATI = 0x8924;
enum GL_REG_4_ATI = 0x8925;
enum GL_REG_5_ATI = 0x8926;
enum GL_REG_6_ATI = 0x8927;
enum GL_REG_7_ATI = 0x8928;
enum GL_REG_8_ATI = 0x8929;
enum GL_REG_9_ATI = 0x892A;
enum GL_REG_10_ATI = 0x892B;
enum GL_REG_11_ATI = 0x892C;
enum GL_REG_12_ATI = 0x892D;
enum GL_REG_13_ATI = 0x892E;
enum GL_REG_14_ATI = 0x892F;
enum GL_REG_15_ATI = 0x8930;
enum GL_REG_16_ATI = 0x8931;
enum GL_REG_17_ATI = 0x8932;
enum GL_REG_18_ATI = 0x8933;
enum GL_REG_19_ATI = 0x8934;
enum GL_REG_20_ATI = 0x8935;
enum GL_REG_21_ATI = 0x8936;
enum GL_REG_22_ATI = 0x8937;
enum GL_REG_23_ATI = 0x8938;
enum GL_REG_24_ATI = 0x8939;
enum GL_REG_25_ATI = 0x893A;
enum GL_REG_26_ATI = 0x893B;
enum GL_REG_27_ATI = 0x893C;
enum GL_REG_28_ATI = 0x893D;
enum GL_REG_29_ATI = 0x893E;
enum GL_REG_30_ATI = 0x893F;
enum GL_REG_31_ATI = 0x8940;
enum GL_CON_0_ATI = 0x8941;
enum GL_CON_1_ATI = 0x8942;
enum GL_CON_2_ATI = 0x8943;
enum GL_CON_3_ATI = 0x8944;
enum GL_CON_4_ATI = 0x8945;
enum GL_CON_5_ATI = 0x8946;
enum GL_CON_6_ATI = 0x8947;
enum GL_CON_7_ATI = 0x8948;
enum GL_CON_8_ATI = 0x8949;
enum GL_CON_9_ATI = 0x894A;
enum GL_CON_10_ATI = 0x894B;
enum GL_CON_11_ATI = 0x894C;
enum GL_CON_12_ATI = 0x894D;
enum GL_CON_13_ATI = 0x894E;
enum GL_CON_14_ATI = 0x894F;
enum GL_CON_15_ATI = 0x8950;
enum GL_CON_16_ATI = 0x8951;
enum GL_CON_17_ATI = 0x8952;
enum GL_CON_18_ATI = 0x8953;
enum GL_CON_19_ATI = 0x8954;
enum GL_CON_20_ATI = 0x8955;
enum GL_CON_21_ATI = 0x8956;
enum GL_CON_22_ATI = 0x8957;
enum GL_CON_23_ATI = 0x8958;
enum GL_CON_24_ATI = 0x8959;
enum GL_CON_25_ATI = 0x895A;
enum GL_CON_26_ATI = 0x895B;
enum GL_CON_27_ATI = 0x895C;
enum GL_CON_28_ATI = 0x895D;
enum GL_CON_29_ATI = 0x895E;
enum GL_CON_30_ATI = 0x895F;
enum GL_CON_31_ATI = 0x8960;
enum GL_MOV_ATI = 0x8961;
enum GL_ADD_ATI = 0x8963;
enum GL_MUL_ATI = 0x8964;
enum GL_SUB_ATI = 0x8965;
enum GL_DOT3_ATI = 0x8966;
enum GL_DOT4_ATI = 0x8967;
enum GL_MAD_ATI = 0x8968;
enum GL_LERP_ATI = 0x8969;
enum GL_CND_ATI = 0x896A;
enum GL_CND0_ATI = 0x896B;
enum GL_DOT2_ADD_ATI = 0x896C;
enum GL_SECONDARY_INTERPOLATOR_ATI = 0x896D;
enum GL_NUM_FRAGMENT_REGISTERS_ATI = 0x896E;
enum GL_NUM_FRAGMENT_CONSTANTS_ATI = 0x896F;
enum GL_NUM_PASSES_ATI = 0x8970;
enum GL_NUM_INSTRUCTIONS_PER_PASS_ATI = 0x8971;
enum GL_NUM_INSTRUCTIONS_TOTAL_ATI = 0x8972;
enum GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973;
enum GL_NUM_LOOPBACK_COMPONENTS_ATI = 0x8974;
enum GL_COLOR_ALPHA_PAIRING_ATI = 0x8975;
enum GL_SWIZZLE_STR_ATI = 0x8976;
enum GL_SWIZZLE_STQ_ATI = 0x8977;
enum GL_SWIZZLE_STR_DR_ATI = 0x8978;
enum GL_SWIZZLE_STQ_DQ_ATI = 0x8979;
enum GL_SWIZZLE_STRQ_ATI = 0x897A;
enum GL_SWIZZLE_STRQ_DQ_ATI = 0x897B;
enum GL_RED_BIT_ATI = 0x00000001;
enum GL_GREEN_BIT_ATI = 0x00000002;
enum GL_BLUE_BIT_ATI = 0x00000004;
enum GL_2X_BIT_ATI = 0x00000001;
enum GL_4X_BIT_ATI = 0x00000002;
enum GL_8X_BIT_ATI = 0x00000004;
enum GL_HALF_BIT_ATI = 0x00000008;
enum GL_QUARTER_BIT_ATI = 0x00000010;
enum GL_EIGHTH_BIT_ATI = 0x00000020;
enum GL_SATURATE_BIT_ATI = 0x00000040;
enum GL_COMP_BIT_ATI = 0x00000002;
enum GL_NEGATE_BIT_ATI = 0x00000004;
enum GL_BIAS_BIT_ATI = 0x00000008;
alias PFNGLGENFRAGMENTSHADERSATIPROC = uint function (GLuint range);
alias PFNGLBINDFRAGMENTSHADERATIPROC = void function (GLuint id);
alias PFNGLDELETEFRAGMENTSHADERATIPROC = void function (GLuint id);
alias PFNGLBEGINFRAGMENTSHADERATIPROC = void function ();
alias PFNGLENDFRAGMENTSHADERATIPROC = void function ();
alias PFNGLPASSTEXCOORDATIPROC = void function (GLuint dst, GLuint coord, GLenum swizzle);
alias PFNGLSAMPLEMAPATIPROC = void function (GLuint dst, GLuint interp, GLenum swizzle);
alias PFNGLCOLORFRAGMENTOP1ATIPROC = void function (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
alias PFNGLCOLORFRAGMENTOP2ATIPROC = void function (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
alias PFNGLCOLORFRAGMENTOP3ATIPROC = void function (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
alias PFNGLALPHAFRAGMENTOP1ATIPROC = void function (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
alias PFNGLALPHAFRAGMENTOP2ATIPROC = void function (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
alias PFNGLALPHAFRAGMENTOP3ATIPROC = void function (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
alias PFNGLSETFRAGMENTSHADERCONSTANTATIPROC = void function (GLuint dst, const(GLfloat)* value);
GLuint glGenFragmentShadersATI (GLuint range);
void glBindFragmentShaderATI (GLuint id);
void glDeleteFragmentShaderATI (GLuint id);
void glBeginFragmentShaderATI ();
void glEndFragmentShaderATI ();
void glPassTexCoordATI (GLuint dst, GLuint coord, GLenum swizzle);
void glSampleMapATI (GLuint dst, GLuint interp, GLenum swizzle);
void glColorFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
void glColorFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
void glColorFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
void glAlphaFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
void glAlphaFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
void glAlphaFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
void glSetFragmentShaderConstantATI (GLuint dst, const(GLfloat)* value);

/* GL_ATI_fragment_shader */

enum GL_ATI_map_object_buffer = 1;
alias PFNGLMAPOBJECTBUFFERATIPROC = void* function (GLuint buffer);
alias PFNGLUNMAPOBJECTBUFFERATIPROC = void function (GLuint buffer);
void* glMapObjectBufferATI (GLuint buffer);
void glUnmapObjectBufferATI (GLuint buffer);

/* GL_ATI_map_object_buffer */

enum GL_ATI_meminfo = 1;
enum GL_VBO_FREE_MEMORY_ATI = 0x87FB;
enum GL_TEXTURE_FREE_MEMORY_ATI = 0x87FC;
enum GL_RENDERBUFFER_FREE_MEMORY_ATI = 0x87FD;
/* GL_ATI_meminfo */

enum GL_ATI_pixel_format_float = 1;
enum GL_RGBA_FLOAT_MODE_ATI = 0x8820;
enum GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 0x8835;
/* GL_ATI_pixel_format_float */

enum GL_ATI_pn_triangles = 1;
enum GL_PN_TRIANGLES_ATI = 0x87F0;
enum GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1;
enum GL_PN_TRIANGLES_POINT_MODE_ATI = 0x87F2;
enum GL_PN_TRIANGLES_NORMAL_MODE_ATI = 0x87F3;
enum GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F4;
enum GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87F5;
enum GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87F6;
enum GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87F7;
enum GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8;
alias PFNGLPNTRIANGLESIATIPROC = void function (GLenum pname, GLint param);
alias PFNGLPNTRIANGLESFATIPROC = void function (GLenum pname, GLfloat param);
void glPNTrianglesiATI (GLenum pname, GLint param);
void glPNTrianglesfATI (GLenum pname, GLfloat param);

/* GL_ATI_pn_triangles */

enum GL_ATI_separate_stencil = 1;
enum GL_STENCIL_BACK_FUNC_ATI = 0x8800;
enum GL_STENCIL_BACK_FAIL_ATI = 0x8801;
enum GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802;
enum GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803;
alias PFNGLSTENCILOPSEPARATEATIPROC = void function (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
alias PFNGLSTENCILFUNCSEPARATEATIPROC = void function (GLenum frontfunc, GLenum backfunc, GLint ref_, GLuint mask);
void glStencilOpSeparateATI (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilFuncSeparateATI (GLenum frontfunc, GLenum backfunc, GLint ref_, GLuint mask);

/* GL_ATI_separate_stencil */

enum GL_ATI_text_fragment_shader = 1;
enum GL_TEXT_FRAGMENT_SHADER_ATI = 0x8200;
/* GL_ATI_text_fragment_shader */

enum GL_ATI_texture_env_combine3 = 1;
enum GL_MODULATE_ADD_ATI = 0x8744;
enum GL_MODULATE_SIGNED_ADD_ATI = 0x8745;
enum GL_MODULATE_SUBTRACT_ATI = 0x8746;
/* GL_ATI_texture_env_combine3 */

enum GL_ATI_texture_float = 1;
enum GL_RGBA_FLOAT32_ATI = 0x8814;
enum GL_RGB_FLOAT32_ATI = 0x8815;
enum GL_ALPHA_FLOAT32_ATI = 0x8816;
enum GL_INTENSITY_FLOAT32_ATI = 0x8817;
enum GL_LUMINANCE_FLOAT32_ATI = 0x8818;
enum GL_LUMINANCE_ALPHA_FLOAT32_ATI = 0x8819;
enum GL_RGBA_FLOAT16_ATI = 0x881A;
enum GL_RGB_FLOAT16_ATI = 0x881B;
enum GL_ALPHA_FLOAT16_ATI = 0x881C;
enum GL_INTENSITY_FLOAT16_ATI = 0x881D;
enum GL_LUMINANCE_FLOAT16_ATI = 0x881E;
enum GL_LUMINANCE_ALPHA_FLOAT16_ATI = 0x881F;
/* GL_ATI_texture_float */

enum GL_ATI_texture_mirror_once = 1;
enum GL_MIRROR_CLAMP_ATI = 0x8742;
enum GL_MIRROR_CLAMP_TO_EDGE_ATI = 0x8743;
/* GL_ATI_texture_mirror_once */

enum GL_ATI_vertex_array_object = 1;
enum GL_STATIC_ATI = 0x8760;
enum GL_DYNAMIC_ATI = 0x8761;
enum GL_PRESERVE_ATI = 0x8762;
enum GL_DISCARD_ATI = 0x8763;
enum GL_OBJECT_BUFFER_SIZE_ATI = 0x8764;
enum GL_OBJECT_BUFFER_USAGE_ATI = 0x8765;
enum GL_ARRAY_OBJECT_BUFFER_ATI = 0x8766;
enum GL_ARRAY_OBJECT_OFFSET_ATI = 0x8767;
alias PFNGLNEWOBJECTBUFFERATIPROC = uint function (GLsizei size, const(void)* pointer, GLenum usage);
alias PFNGLISOBJECTBUFFERATIPROC = ubyte function (GLuint buffer);
alias PFNGLUPDATEOBJECTBUFFERATIPROC = void function (GLuint buffer, GLuint offset, GLsizei size, const(void)* pointer, GLenum preserve);
alias PFNGLGETOBJECTBUFFERFVATIPROC = void function (GLuint buffer, GLenum pname, GLfloat* params);
alias PFNGLGETOBJECTBUFFERIVATIPROC = void function (GLuint buffer, GLenum pname, GLint* params);
alias PFNGLFREEOBJECTBUFFERATIPROC = void function (GLuint buffer);
alias PFNGLARRAYOBJECTATIPROC = void function (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
alias PFNGLGETARRAYOBJECTFVATIPROC = void function (GLenum array, GLenum pname, GLfloat* params);
alias PFNGLGETARRAYOBJECTIVATIPROC = void function (GLenum array, GLenum pname, GLint* params);
alias PFNGLVARIANTARRAYOBJECTATIPROC = void function (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
alias PFNGLGETVARIANTARRAYOBJECTFVATIPROC = void function (GLuint id, GLenum pname, GLfloat* params);
alias PFNGLGETVARIANTARRAYOBJECTIVATIPROC = void function (GLuint id, GLenum pname, GLint* params);
GLuint glNewObjectBufferATI (GLsizei size, const(void)* pointer, GLenum usage);
GLboolean glIsObjectBufferATI (GLuint buffer);
void glUpdateObjectBufferATI (GLuint buffer, GLuint offset, GLsizei size, const(void)* pointer, GLenum preserve);
void glGetObjectBufferfvATI (GLuint buffer, GLenum pname, GLfloat* params);
void glGetObjectBufferivATI (GLuint buffer, GLenum pname, GLint* params);
void glFreeObjectBufferATI (GLuint buffer);
void glArrayObjectATI (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
void glGetArrayObjectfvATI (GLenum array, GLenum pname, GLfloat* params);
void glGetArrayObjectivATI (GLenum array, GLenum pname, GLint* params);
void glVariantArrayObjectATI (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
void glGetVariantArrayObjectfvATI (GLuint id, GLenum pname, GLfloat* params);
void glGetVariantArrayObjectivATI (GLuint id, GLenum pname, GLint* params);

/* GL_ATI_vertex_array_object */

enum GL_ATI_vertex_attrib_array_object = 1;
alias PFNGLVERTEXATTRIBARRAYOBJECTATIPROC = void function (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
alias PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC = void function (GLuint index, GLenum pname, GLfloat* params);
alias PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC = void function (GLuint index, GLenum pname, GLint* params);
void glVertexAttribArrayObjectATI (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
void glGetVertexAttribArrayObjectfvATI (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribArrayObjectivATI (GLuint index, GLenum pname, GLint* params);

/* GL_ATI_vertex_attrib_array_object */

enum GL_ATI_vertex_streams = 1;
enum GL_MAX_VERTEX_STREAMS_ATI = 0x876B;
enum GL_VERTEX_STREAM0_ATI = 0x876C;
enum GL_VERTEX_STREAM1_ATI = 0x876D;
enum GL_VERTEX_STREAM2_ATI = 0x876E;
enum GL_VERTEX_STREAM3_ATI = 0x876F;
enum GL_VERTEX_STREAM4_ATI = 0x8770;
enum GL_VERTEX_STREAM5_ATI = 0x8771;
enum GL_VERTEX_STREAM6_ATI = 0x8772;
enum GL_VERTEX_STREAM7_ATI = 0x8773;
enum GL_VERTEX_SOURCE_ATI = 0x8774;
alias PFNGLVERTEXSTREAM1SATIPROC = void function (GLenum stream, GLshort x);
alias PFNGLVERTEXSTREAM1SVATIPROC = void function (GLenum stream, const(GLshort)* coords);
alias PFNGLVERTEXSTREAM1IATIPROC = void function (GLenum stream, GLint x);
alias PFNGLVERTEXSTREAM1IVATIPROC = void function (GLenum stream, const(GLint)* coords);
alias PFNGLVERTEXSTREAM1FATIPROC = void function (GLenum stream, GLfloat x);
alias PFNGLVERTEXSTREAM1FVATIPROC = void function (GLenum stream, const(GLfloat)* coords);
alias PFNGLVERTEXSTREAM1DATIPROC = void function (GLenum stream, GLdouble x);
alias PFNGLVERTEXSTREAM1DVATIPROC = void function (GLenum stream, const(GLdouble)* coords);
alias PFNGLVERTEXSTREAM2SATIPROC = void function (GLenum stream, GLshort x, GLshort y);
alias PFNGLVERTEXSTREAM2SVATIPROC = void function (GLenum stream, const(GLshort)* coords);
alias PFNGLVERTEXSTREAM2IATIPROC = void function (GLenum stream, GLint x, GLint y);
alias PFNGLVERTEXSTREAM2IVATIPROC = void function (GLenum stream, const(GLint)* coords);
alias PFNGLVERTEXSTREAM2FATIPROC = void function (GLenum stream, GLfloat x, GLfloat y);
alias PFNGLVERTEXSTREAM2FVATIPROC = void function (GLenum stream, const(GLfloat)* coords);
alias PFNGLVERTEXSTREAM2DATIPROC = void function (GLenum stream, GLdouble x, GLdouble y);
alias PFNGLVERTEXSTREAM2DVATIPROC = void function (GLenum stream, const(GLdouble)* coords);
alias PFNGLVERTEXSTREAM3SATIPROC = void function (GLenum stream, GLshort x, GLshort y, GLshort z);
alias PFNGLVERTEXSTREAM3SVATIPROC = void function (GLenum stream, const(GLshort)* coords);
alias PFNGLVERTEXSTREAM3IATIPROC = void function (GLenum stream, GLint x, GLint y, GLint z);
alias PFNGLVERTEXSTREAM3IVATIPROC = void function (GLenum stream, const(GLint)* coords);
alias PFNGLVERTEXSTREAM3FATIPROC = void function (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLVERTEXSTREAM3FVATIPROC = void function (GLenum stream, const(GLfloat)* coords);
alias PFNGLVERTEXSTREAM3DATIPROC = void function (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLVERTEXSTREAM3DVATIPROC = void function (GLenum stream, const(GLdouble)* coords);
alias PFNGLVERTEXSTREAM4SATIPROC = void function (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
alias PFNGLVERTEXSTREAM4SVATIPROC = void function (GLenum stream, const(GLshort)* coords);
alias PFNGLVERTEXSTREAM4IATIPROC = void function (GLenum stream, GLint x, GLint y, GLint z, GLint w);
alias PFNGLVERTEXSTREAM4IVATIPROC = void function (GLenum stream, const(GLint)* coords);
alias PFNGLVERTEXSTREAM4FATIPROC = void function (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLVERTEXSTREAM4FVATIPROC = void function (GLenum stream, const(GLfloat)* coords);
alias PFNGLVERTEXSTREAM4DATIPROC = void function (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLVERTEXSTREAM4DVATIPROC = void function (GLenum stream, const(GLdouble)* coords);
alias PFNGLNORMALSTREAM3BATIPROC = void function (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
alias PFNGLNORMALSTREAM3BVATIPROC = void function (GLenum stream, const(GLbyte)* coords);
alias PFNGLNORMALSTREAM3SATIPROC = void function (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
alias PFNGLNORMALSTREAM3SVATIPROC = void function (GLenum stream, const(GLshort)* coords);
alias PFNGLNORMALSTREAM3IATIPROC = void function (GLenum stream, GLint nx, GLint ny, GLint nz);
alias PFNGLNORMALSTREAM3IVATIPROC = void function (GLenum stream, const(GLint)* coords);
alias PFNGLNORMALSTREAM3FATIPROC = void function (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
alias PFNGLNORMALSTREAM3FVATIPROC = void function (GLenum stream, const(GLfloat)* coords);
alias PFNGLNORMALSTREAM3DATIPROC = void function (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
alias PFNGLNORMALSTREAM3DVATIPROC = void function (GLenum stream, const(GLdouble)* coords);
alias PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC = void function (GLenum stream);
alias PFNGLVERTEXBLENDENVIATIPROC = void function (GLenum pname, GLint param);
alias PFNGLVERTEXBLENDENVFATIPROC = void function (GLenum pname, GLfloat param);
void glVertexStream1sATI (GLenum stream, GLshort x);
void glVertexStream1svATI (GLenum stream, const(GLshort)* coords);
void glVertexStream1iATI (GLenum stream, GLint x);
void glVertexStream1ivATI (GLenum stream, const(GLint)* coords);
void glVertexStream1fATI (GLenum stream, GLfloat x);
void glVertexStream1fvATI (GLenum stream, const(GLfloat)* coords);
void glVertexStream1dATI (GLenum stream, GLdouble x);
void glVertexStream1dvATI (GLenum stream, const(GLdouble)* coords);
void glVertexStream2sATI (GLenum stream, GLshort x, GLshort y);
void glVertexStream2svATI (GLenum stream, const(GLshort)* coords);
void glVertexStream2iATI (GLenum stream, GLint x, GLint y);
void glVertexStream2ivATI (GLenum stream, const(GLint)* coords);
void glVertexStream2fATI (GLenum stream, GLfloat x, GLfloat y);
void glVertexStream2fvATI (GLenum stream, const(GLfloat)* coords);
void glVertexStream2dATI (GLenum stream, GLdouble x, GLdouble y);
void glVertexStream2dvATI (GLenum stream, const(GLdouble)* coords);
void glVertexStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z);
void glVertexStream3svATI (GLenum stream, const(GLshort)* coords);
void glVertexStream3iATI (GLenum stream, GLint x, GLint y, GLint z);
void glVertexStream3ivATI (GLenum stream, const(GLint)* coords);
void glVertexStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
void glVertexStream3fvATI (GLenum stream, const(GLfloat)* coords);
void glVertexStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
void glVertexStream3dvATI (GLenum stream, const(GLdouble)* coords);
void glVertexStream4sATI (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexStream4svATI (GLenum stream, const(GLshort)* coords);
void glVertexStream4iATI (GLenum stream, GLint x, GLint y, GLint z, GLint w);
void glVertexStream4ivATI (GLenum stream, const(GLint)* coords);
void glVertexStream4fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexStream4fvATI (GLenum stream, const(GLfloat)* coords);
void glVertexStream4dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexStream4dvATI (GLenum stream, const(GLdouble)* coords);
void glNormalStream3bATI (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
void glNormalStream3bvATI (GLenum stream, const(GLbyte)* coords);
void glNormalStream3sATI (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
void glNormalStream3svATI (GLenum stream, const(GLshort)* coords);
void glNormalStream3iATI (GLenum stream, GLint nx, GLint ny, GLint nz);
void glNormalStream3ivATI (GLenum stream, const(GLint)* coords);
void glNormalStream3fATI (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
void glNormalStream3fvATI (GLenum stream, const(GLfloat)* coords);
void glNormalStream3dATI (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
void glNormalStream3dvATI (GLenum stream, const(GLdouble)* coords);
void glClientActiveVertexStreamATI (GLenum stream);
void glVertexBlendEnviATI (GLenum pname, GLint param);
void glVertexBlendEnvfATI (GLenum pname, GLfloat param);

/* GL_ATI_vertex_streams */

enum GL_EXT_422_pixels = 1;
enum GL_422_EXT = 0x80CC;
enum GL_422_REV_EXT = 0x80CD;
enum GL_422_AVERAGE_EXT = 0x80CE;
enum GL_422_REV_AVERAGE_EXT = 0x80CF;
/* GL_EXT_422_pixels */

enum GL_EXT_abgr = 1;
enum GL_ABGR_EXT = 0x8000;
/* GL_EXT_abgr */

enum GL_EXT_bgra = 1;
enum GL_BGR_EXT = 0x80E0;
enum GL_BGRA_EXT = 0x80E1;
/* GL_EXT_bgra */

enum GL_EXT_bindable_uniform = 1;
enum GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT = 0x8DE2;
enum GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = 0x8DE3;
enum GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = 0x8DE4;
enum GL_MAX_BINDABLE_UNIFORM_SIZE_EXT = 0x8DED;
enum GL_UNIFORM_BUFFER_EXT = 0x8DEE;
enum GL_UNIFORM_BUFFER_BINDING_EXT = 0x8DEF;
alias PFNGLUNIFORMBUFFEREXTPROC = void function (GLuint program, GLint location, GLuint buffer);
alias PFNGLGETUNIFORMBUFFERSIZEEXTPROC = int function (GLuint program, GLint location);
alias PFNGLGETUNIFORMOFFSETEXTPROC = c_long function (GLuint program, GLint location);
void glUniformBufferEXT (GLuint program, GLint location, GLuint buffer);
GLint glGetUniformBufferSizeEXT (GLuint program, GLint location);
GLintptr glGetUniformOffsetEXT (GLuint program, GLint location);

/* GL_EXT_bindable_uniform */

enum GL_EXT_blend_color = 1;
enum GL_CONSTANT_COLOR_EXT = 0x8001;
enum GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002;
enum GL_CONSTANT_ALPHA_EXT = 0x8003;
enum GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004;
enum GL_BLEND_COLOR_EXT = 0x8005;
alias PFNGLBLENDCOLOREXTPROC = void function (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glBlendColorEXT (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);

/* GL_EXT_blend_color */

enum GL_EXT_blend_equation_separate = 1;
enum GL_BLEND_EQUATION_RGB_EXT = 0x8009;
enum GL_BLEND_EQUATION_ALPHA_EXT = 0x883D;
alias PFNGLBLENDEQUATIONSEPARATEEXTPROC = void function (GLenum modeRGB, GLenum modeAlpha);
void glBlendEquationSeparateEXT (GLenum modeRGB, GLenum modeAlpha);

/* GL_EXT_blend_equation_separate */

enum GL_EXT_blend_func_separate = 1;
enum GL_BLEND_DST_RGB_EXT = 0x80C8;
enum GL_BLEND_SRC_RGB_EXT = 0x80C9;
enum GL_BLEND_DST_ALPHA_EXT = 0x80CA;
enum GL_BLEND_SRC_ALPHA_EXT = 0x80CB;
alias PFNGLBLENDFUNCSEPARATEEXTPROC = void function (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
void glBlendFuncSeparateEXT (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);

/* GL_EXT_blend_func_separate */

enum GL_EXT_blend_logic_op = 1;
/* GL_EXT_blend_logic_op */

enum GL_EXT_blend_minmax = 1;
enum GL_MIN_EXT = 0x8007;
enum GL_MAX_EXT = 0x8008;
enum GL_FUNC_ADD_EXT = 0x8006;
enum GL_BLEND_EQUATION_EXT = 0x8009;
alias PFNGLBLENDEQUATIONEXTPROC = void function (GLenum mode);
void glBlendEquationEXT (GLenum mode);

/* GL_EXT_blend_minmax */

enum GL_EXT_blend_subtract = 1;
enum GL_FUNC_SUBTRACT_EXT = 0x800A;
enum GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800B;
/* GL_EXT_blend_subtract */

enum GL_EXT_clip_volume_hint = 1;
enum GL_CLIP_VOLUME_CLIPPING_HINT_EXT = 0x80F0;
/* GL_EXT_clip_volume_hint */

enum GL_EXT_cmyka = 1;
enum GL_CMYK_EXT = 0x800C;
enum GL_CMYKA_EXT = 0x800D;
enum GL_PACK_CMYK_HINT_EXT = 0x800E;
enum GL_UNPACK_CMYK_HINT_EXT = 0x800F;
/* GL_EXT_cmyka */

enum GL_EXT_color_subtable = 1;
alias PFNGLCOLORSUBTABLEEXTPROC = void function (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(void)* data);
alias PFNGLCOPYCOLORSUBTABLEEXTPROC = void function (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
void glColorSubTableEXT (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(void)* data);
void glCopyColorSubTableEXT (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);

/* GL_EXT_color_subtable */

enum GL_EXT_compiled_vertex_array = 1;
enum GL_ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81A8;
enum GL_ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81A9;
alias PFNGLLOCKARRAYSEXTPROC = void function (GLint first, GLsizei count);
alias PFNGLUNLOCKARRAYSEXTPROC = void function ();
void glLockArraysEXT (GLint first, GLsizei count);
void glUnlockArraysEXT ();

/* GL_EXT_compiled_vertex_array */

enum GL_EXT_convolution = 1;
enum GL_CONVOLUTION_1D_EXT = 0x8010;
enum GL_CONVOLUTION_2D_EXT = 0x8011;
enum GL_SEPARABLE_2D_EXT = 0x8012;
enum GL_CONVOLUTION_BORDER_MODE_EXT = 0x8013;
enum GL_CONVOLUTION_FILTER_SCALE_EXT = 0x8014;
enum GL_CONVOLUTION_FILTER_BIAS_EXT = 0x8015;
enum GL_REDUCE_EXT = 0x8016;
enum GL_CONVOLUTION_FORMAT_EXT = 0x8017;
enum GL_CONVOLUTION_WIDTH_EXT = 0x8018;
enum GL_CONVOLUTION_HEIGHT_EXT = 0x8019;
enum GL_MAX_CONVOLUTION_WIDTH_EXT = 0x801A;
enum GL_MAX_CONVOLUTION_HEIGHT_EXT = 0x801B;
enum GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C;
enum GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D;
enum GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E;
enum GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F;
enum GL_POST_CONVOLUTION_RED_BIAS_EXT = 0x8020;
enum GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021;
enum GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022;
enum GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023;
alias PFNGLCONVOLUTIONFILTER1DEXTPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* image);
alias PFNGLCONVOLUTIONFILTER2DEXTPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* image);
alias PFNGLCONVOLUTIONPARAMETERFEXTPROC = void function (GLenum target, GLenum pname, GLfloat params);
alias PFNGLCONVOLUTIONPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLCONVOLUTIONPARAMETERIEXTPROC = void function (GLenum target, GLenum pname, GLint params);
alias PFNGLCONVOLUTIONPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC = void function (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC = void function (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLGETCONVOLUTIONFILTEREXTPROC = void function (GLenum target, GLenum format, GLenum type, void* image);
alias PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETSEPARABLEFILTEREXTPROC = void function (GLenum target, GLenum format, GLenum type, void* row, void* column, void* span);
alias PFNGLSEPARABLEFILTER2DEXTPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* row, const(void)* column);
void glConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* image);
void glConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* image);
void glConvolutionParameterfEXT (GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfvEXT (GLenum target, GLenum pname, const(GLfloat)* params);
void glConvolutionParameteriEXT (GLenum target, GLenum pname, GLint params);
void glConvolutionParameterivEXT (GLenum target, GLenum pname, const(GLint)* params);
void glCopyConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilterEXT (GLenum target, GLenum format, GLenum type, void* image);
void glGetConvolutionParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetConvolutionParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glGetSeparableFilterEXT (GLenum target, GLenum format, GLenum type, void* row, void* column, void* span);
void glSeparableFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* row, const(void)* column);

/* GL_EXT_convolution */

enum GL_EXT_coordinate_frame = 1;
enum GL_TANGENT_ARRAY_EXT = 0x8439;
enum GL_BINORMAL_ARRAY_EXT = 0x843A;
enum GL_CURRENT_TANGENT_EXT = 0x843B;
enum GL_CURRENT_BINORMAL_EXT = 0x843C;
enum GL_TANGENT_ARRAY_TYPE_EXT = 0x843E;
enum GL_TANGENT_ARRAY_STRIDE_EXT = 0x843F;
enum GL_BINORMAL_ARRAY_TYPE_EXT = 0x8440;
enum GL_BINORMAL_ARRAY_STRIDE_EXT = 0x8441;
enum GL_TANGENT_ARRAY_POINTER_EXT = 0x8442;
enum GL_BINORMAL_ARRAY_POINTER_EXT = 0x8443;
enum GL_MAP1_TANGENT_EXT = 0x8444;
enum GL_MAP2_TANGENT_EXT = 0x8445;
enum GL_MAP1_BINORMAL_EXT = 0x8446;
enum GL_MAP2_BINORMAL_EXT = 0x8447;
alias PFNGLTANGENT3BEXTPROC = void function (GLbyte tx, GLbyte ty, GLbyte tz);
alias PFNGLTANGENT3BVEXTPROC = void function (const(GLbyte)* v);
alias PFNGLTANGENT3DEXTPROC = void function (GLdouble tx, GLdouble ty, GLdouble tz);
alias PFNGLTANGENT3DVEXTPROC = void function (const(GLdouble)* v);
alias PFNGLTANGENT3FEXTPROC = void function (GLfloat tx, GLfloat ty, GLfloat tz);
alias PFNGLTANGENT3FVEXTPROC = void function (const(GLfloat)* v);
alias PFNGLTANGENT3IEXTPROC = void function (GLint tx, GLint ty, GLint tz);
alias PFNGLTANGENT3IVEXTPROC = void function (const(GLint)* v);
alias PFNGLTANGENT3SEXTPROC = void function (GLshort tx, GLshort ty, GLshort tz);
alias PFNGLTANGENT3SVEXTPROC = void function (const(GLshort)* v);
alias PFNGLBINORMAL3BEXTPROC = void function (GLbyte bx, GLbyte by, GLbyte bz);
alias PFNGLBINORMAL3BVEXTPROC = void function (const(GLbyte)* v);
alias PFNGLBINORMAL3DEXTPROC = void function (GLdouble bx, GLdouble by, GLdouble bz);
alias PFNGLBINORMAL3DVEXTPROC = void function (const(GLdouble)* v);
alias PFNGLBINORMAL3FEXTPROC = void function (GLfloat bx, GLfloat by, GLfloat bz);
alias PFNGLBINORMAL3FVEXTPROC = void function (const(GLfloat)* v);
alias PFNGLBINORMAL3IEXTPROC = void function (GLint bx, GLint by, GLint bz);
alias PFNGLBINORMAL3IVEXTPROC = void function (const(GLint)* v);
alias PFNGLBINORMAL3SEXTPROC = void function (GLshort bx, GLshort by, GLshort bz);
alias PFNGLBINORMAL3SVEXTPROC = void function (const(GLshort)* v);
alias PFNGLTANGENTPOINTEREXTPROC = void function (GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLBINORMALPOINTEREXTPROC = void function (GLenum type, GLsizei stride, const(void)* pointer);
void glTangent3bEXT (GLbyte tx, GLbyte ty, GLbyte tz);
void glTangent3bvEXT (const(GLbyte)* v);
void glTangent3dEXT (GLdouble tx, GLdouble ty, GLdouble tz);
void glTangent3dvEXT (const(GLdouble)* v);
void glTangent3fEXT (GLfloat tx, GLfloat ty, GLfloat tz);
void glTangent3fvEXT (const(GLfloat)* v);
void glTangent3iEXT (GLint tx, GLint ty, GLint tz);
void glTangent3ivEXT (const(GLint)* v);
void glTangent3sEXT (GLshort tx, GLshort ty, GLshort tz);
void glTangent3svEXT (const(GLshort)* v);
void glBinormal3bEXT (GLbyte bx, GLbyte by, GLbyte bz);
void glBinormal3bvEXT (const(GLbyte)* v);
void glBinormal3dEXT (GLdouble bx, GLdouble by, GLdouble bz);
void glBinormal3dvEXT (const(GLdouble)* v);
void glBinormal3fEXT (GLfloat bx, GLfloat by, GLfloat bz);
void glBinormal3fvEXT (const(GLfloat)* v);
void glBinormal3iEXT (GLint bx, GLint by, GLint bz);
void glBinormal3ivEXT (const(GLint)* v);
void glBinormal3sEXT (GLshort bx, GLshort by, GLshort bz);
void glBinormal3svEXT (const(GLshort)* v);
void glTangentPointerEXT (GLenum type, GLsizei stride, const(void)* pointer);
void glBinormalPointerEXT (GLenum type, GLsizei stride, const(void)* pointer);

/* GL_EXT_coordinate_frame */

enum GL_EXT_copy_texture = 1;
alias PFNGLCOPYTEXIMAGE1DEXTPROC = void function (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
alias PFNGLCOPYTEXIMAGE2DEXTPROC = void function (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
alias PFNGLCOPYTEXSUBIMAGE1DEXTPROC = void function (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
alias PFNGLCOPYTEXSUBIMAGE2DEXTPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLCOPYTEXSUBIMAGE3DEXTPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTexImage1DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);

/* GL_EXT_copy_texture */

enum GL_EXT_cull_vertex = 1;
enum GL_CULL_VERTEX_EXT = 0x81AA;
enum GL_CULL_VERTEX_EYE_POSITION_EXT = 0x81AB;
enum GL_CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC;
alias PFNGLCULLPARAMETERDVEXTPROC = void function (GLenum pname, GLdouble* params);
alias PFNGLCULLPARAMETERFVEXTPROC = void function (GLenum pname, GLfloat* params);
void glCullParameterdvEXT (GLenum pname, GLdouble* params);
void glCullParameterfvEXT (GLenum pname, GLfloat* params);

/* GL_EXT_cull_vertex */

enum GL_EXT_debug_label = 1;
enum GL_PROGRAM_PIPELINE_OBJECT_EXT = 0x8A4F;
enum GL_PROGRAM_OBJECT_EXT = 0x8B40;
enum GL_SHADER_OBJECT_EXT = 0x8B48;
enum GL_BUFFER_OBJECT_EXT = 0x9151;
enum GL_QUERY_OBJECT_EXT = 0x9153;
enum GL_VERTEX_ARRAY_OBJECT_EXT = 0x9154;
alias PFNGLLABELOBJECTEXTPROC = void function (GLenum type, GLuint object, GLsizei length, const(GLchar)* label);
alias PFNGLGETOBJECTLABELEXTPROC = void function (GLenum type, GLuint object, GLsizei bufSize, GLsizei* length, GLchar* label);
void glLabelObjectEXT (GLenum type, GLuint object, GLsizei length, const(GLchar)* label);
void glGetObjectLabelEXT (GLenum type, GLuint object, GLsizei bufSize, GLsizei* length, GLchar* label);

/* GL_EXT_debug_label */

enum GL_EXT_debug_marker = 1;
alias PFNGLINSERTEVENTMARKEREXTPROC = void function (GLsizei length, const(GLchar)* marker);
alias PFNGLPUSHGROUPMARKEREXTPROC = void function (GLsizei length, const(GLchar)* marker);
alias PFNGLPOPGROUPMARKEREXTPROC = void function ();
void glInsertEventMarkerEXT (GLsizei length, const(GLchar)* marker);
void glPushGroupMarkerEXT (GLsizei length, const(GLchar)* marker);
void glPopGroupMarkerEXT ();

/* GL_EXT_debug_marker */

enum GL_EXT_depth_bounds_test = 1;
enum GL_DEPTH_BOUNDS_TEST_EXT = 0x8890;
enum GL_DEPTH_BOUNDS_EXT = 0x8891;
alias PFNGLDEPTHBOUNDSEXTPROC = void function (GLclampd zmin, GLclampd zmax);
void glDepthBoundsEXT (GLclampd zmin, GLclampd zmax);

/* GL_EXT_depth_bounds_test */

enum GL_EXT_direct_state_access = 1;
enum GL_PROGRAM_MATRIX_EXT = 0x8E2D;
enum GL_TRANSPOSE_PROGRAM_MATRIX_EXT = 0x8E2E;
enum GL_PROGRAM_MATRIX_STACK_DEPTH_EXT = 0x8E2F;
alias PFNGLMATRIXLOADFEXTPROC = void function (GLenum mode, const(GLfloat)* m);
alias PFNGLMATRIXLOADDEXTPROC = void function (GLenum mode, const(GLdouble)* m);
alias PFNGLMATRIXMULTFEXTPROC = void function (GLenum mode, const(GLfloat)* m);
alias PFNGLMATRIXMULTDEXTPROC = void function (GLenum mode, const(GLdouble)* m);
alias PFNGLMATRIXLOADIDENTITYEXTPROC = void function (GLenum mode);
alias PFNGLMATRIXROTATEFEXTPROC = void function (GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLMATRIXROTATEDEXTPROC = void function (GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLMATRIXSCALEFEXTPROC = void function (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLMATRIXSCALEDEXTPROC = void function (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLMATRIXTRANSLATEFEXTPROC = void function (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLMATRIXTRANSLATEDEXTPROC = void function (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLMATRIXFRUSTUMEXTPROC = void function (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
alias PFNGLMATRIXORTHOEXTPROC = void function (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
alias PFNGLMATRIXPOPEXTPROC = void function (GLenum mode);
alias PFNGLMATRIXPUSHEXTPROC = void function (GLenum mode);
alias PFNGLCLIENTATTRIBDEFAULTEXTPROC = void function (GLbitfield mask);
alias PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC = void function (GLbitfield mask);
alias PFNGLTEXTUREPARAMETERFEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, GLfloat param);
alias PFNGLTEXTUREPARAMETERFVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLTEXTUREPARAMETERIEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, GLint param);
alias PFNGLTEXTUREPARAMETERIVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLTEXTUREIMAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXTUREIMAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXTURESUBIMAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXTURESUBIMAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLCOPYTEXTUREIMAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
alias PFNGLCOPYTEXTUREIMAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
alias PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
alias PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLGETTEXTUREIMAGEEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, void* pixels);
alias PFNGLGETTEXTUREPARAMETERFVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETTEXTUREPARAMETERIVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, GLint* params);
alias PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params);
alias PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params);
alias PFNGLTEXTUREIMAGE3DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXTURESUBIMAGE3DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLBINDMULTITEXTUREEXTPROC = void function (GLenum texunit, GLenum target, GLuint texture);
alias PFNGLMULTITEXCOORDPOINTEREXTPROC = void function (GLenum texunit, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLMULTITEXENVFEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
alias PFNGLMULTITEXENVFVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLMULTITEXENVIEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLint param);
alias PFNGLMULTITEXENVIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLMULTITEXGENDEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, GLdouble param);
alias PFNGLMULTITEXGENDVEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, const(GLdouble)* params);
alias PFNGLMULTITEXGENFEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, GLfloat param);
alias PFNGLMULTITEXGENFVEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, const(GLfloat)* params);
alias PFNGLMULTITEXGENIEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, GLint param);
alias PFNGLMULTITEXGENIVEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, const(GLint)* params);
alias PFNGLGETMULTITEXENVFVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETMULTITEXENVIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLint* params);
alias PFNGLGETMULTITEXGENDVEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, GLdouble* params);
alias PFNGLGETMULTITEXGENFVEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, GLfloat* params);
alias PFNGLGETMULTITEXGENIVEXTPROC = void function (GLenum texunit, GLenum coord, GLenum pname, GLint* params);
alias PFNGLMULTITEXPARAMETERIEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLint param);
alias PFNGLMULTITEXPARAMETERIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLMULTITEXPARAMETERFEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
alias PFNGLMULTITEXPARAMETERFVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLMULTITEXIMAGE1DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLMULTITEXIMAGE2DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLMULTITEXSUBIMAGE1DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLMULTITEXSUBIMAGE2DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLCOPYMULTITEXIMAGE1DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
alias PFNGLCOPYMULTITEXIMAGE2DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
alias PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
alias PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLGETMULTITEXIMAGEEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, void* pixels);
alias PFNGLGETMULTITEXPARAMETERFVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETMULTITEXPARAMETERIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLint* params);
alias PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params);
alias PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params);
alias PFNGLMULTITEXIMAGE3DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLMULTITEXSUBIMAGE3DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias PFNGLENABLECLIENTSTATEINDEXEDEXTPROC = void function (GLenum array, GLuint index);
alias PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC = void function (GLenum array, GLuint index);
alias PFNGLGETFLOATINDEXEDVEXTPROC = void function (GLenum target, GLuint index, GLfloat* data);
alias PFNGLGETDOUBLEINDEXEDVEXTPROC = void function (GLenum target, GLuint index, GLdouble* data);
alias PFNGLGETPOINTERINDEXEDVEXTPROC = void function (GLenum target, GLuint index, void** data);
alias PFNGLENABLEINDEXEDEXTPROC = void function (GLenum target, GLuint index);
alias PFNGLDISABLEINDEXEDEXTPROC = void function (GLenum target, GLuint index);
alias PFNGLISENABLEDINDEXEDEXTPROC = ubyte function (GLenum target, GLuint index);
alias PFNGLGETINTEGERINDEXEDVEXTPROC = void function (GLenum target, GLuint index, GLint* data);
alias PFNGLGETBOOLEANINDEXEDVEXTPROC = void function (GLenum target, GLuint index, GLboolean* data);
alias PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* bits);
alias PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC = void function (GLuint texture, GLenum target, GLint lod, void* img);
alias PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* bits);
alias PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC = void function (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* bits);
alias PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC = void function (GLenum texunit, GLenum target, GLint lod, void* img);
alias PFNGLMATRIXLOADTRANSPOSEFEXTPROC = void function (GLenum mode, const(GLfloat)* m);
alias PFNGLMATRIXLOADTRANSPOSEDEXTPROC = void function (GLenum mode, const(GLdouble)* m);
alias PFNGLMATRIXMULTTRANSPOSEFEXTPROC = void function (GLenum mode, const(GLfloat)* m);
alias PFNGLMATRIXMULTTRANSPOSEDEXTPROC = void function (GLenum mode, const(GLdouble)* m);
alias PFNGLNAMEDBUFFERDATAEXTPROC = void function (GLuint buffer, GLsizeiptr size, const(void)* data, GLenum usage);
alias PFNGLNAMEDBUFFERSUBDATAEXTPROC = void function (GLuint buffer, GLintptr offset, GLsizeiptr size, const(void)* data);
alias PFNGLMAPNAMEDBUFFEREXTPROC = void* function (GLuint buffer, GLenum access);
alias PFNGLUNMAPNAMEDBUFFEREXTPROC = ubyte function (GLuint buffer);
alias PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC = void function (GLuint buffer, GLenum pname, GLint* params);
alias PFNGLGETNAMEDBUFFERPOINTERVEXTPROC = void function (GLuint buffer, GLenum pname, void** params);
alias PFNGLGETNAMEDBUFFERSUBDATAEXTPROC = void function (GLuint buffer, GLintptr offset, GLsizeiptr size, void* data);
alias PFNGLPROGRAMUNIFORM1FEXTPROC = void function (GLuint program, GLint location, GLfloat v0);
alias PFNGLPROGRAMUNIFORM2FEXTPROC = void function (GLuint program, GLint location, GLfloat v0, GLfloat v1);
alias PFNGLPROGRAMUNIFORM3FEXTPROC = void function (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
alias PFNGLPROGRAMUNIFORM4FEXTPROC = void function (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
alias PFNGLPROGRAMUNIFORM1IEXTPROC = void function (GLuint program, GLint location, GLint v0);
alias PFNGLPROGRAMUNIFORM2IEXTPROC = void function (GLuint program, GLint location, GLint v0, GLint v1);
alias PFNGLPROGRAMUNIFORM3IEXTPROC = void function (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
alias PFNGLPROGRAMUNIFORM4IEXTPROC = void function (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
alias PFNGLPROGRAMUNIFORM1FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM2FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM3FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM4FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORM1IVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM2IVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM3IVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORM4IVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLint)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
alias PFNGLTEXTUREBUFFEREXTPROC = void function (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer);
alias PFNGLMULTITEXBUFFEREXTPROC = void function (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer);
alias PFNGLTEXTUREPARAMETERIIVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLTEXTUREPARAMETERIUIVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, const(GLuint)* params);
alias PFNGLGETTEXTUREPARAMETERIIVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, GLint* params);
alias PFNGLGETTEXTUREPARAMETERIUIVEXTPROC = void function (GLuint texture, GLenum target, GLenum pname, GLuint* params);
alias PFNGLMULTITEXPARAMETERIIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLMULTITEXPARAMETERIUIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, const(GLuint)* params);
alias PFNGLGETMULTITEXPARAMETERIIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLint* params);
alias PFNGLGETMULTITEXPARAMETERIUIVEXTPROC = void function (GLenum texunit, GLenum target, GLenum pname, GLuint* params);
alias PFNGLPROGRAMUNIFORM1UIEXTPROC = void function (GLuint program, GLint location, GLuint v0);
alias PFNGLPROGRAMUNIFORM2UIEXTPROC = void function (GLuint program, GLint location, GLuint v0, GLuint v1);
alias PFNGLPROGRAMUNIFORM3UIEXTPROC = void function (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
alias PFNGLPROGRAMUNIFORM4UIEXTPROC = void function (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
alias PFNGLPROGRAMUNIFORM1UIVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORM2UIVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORM3UIVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLPROGRAMUNIFORM4UIVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLsizei count, const(GLfloat)* params);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC = void function (GLuint program, GLenum target, GLuint index, const(GLint)* params);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLsizei count, const(GLint)* params);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC = void function (GLuint program, GLenum target, GLuint index, const(GLuint)* params);
alias PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLsizei count, const(GLuint)* params);
alias PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLint* params);
alias PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLuint* params);
alias PFNGLENABLECLIENTSTATEIEXTPROC = void function (GLenum array, GLuint index);
alias PFNGLDISABLECLIENTSTATEIEXTPROC = void function (GLenum array, GLuint index);
alias PFNGLGETFLOATI_VEXTPROC = void function (GLenum pname, GLuint index, GLfloat* params);
alias PFNGLGETDOUBLEI_VEXTPROC = void function (GLenum pname, GLuint index, GLdouble* params);
alias PFNGLGETPOINTERI_VEXTPROC = void function (GLenum pname, GLuint index, void** params);
alias PFNGLNAMEDPROGRAMSTRINGEXTPROC = void function (GLuint program, GLenum target, GLenum format, GLsizei len, const(void)* string);
alias PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC = void function (GLuint program, GLenum target, GLuint index, const(GLdouble)* params);
alias PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC = void function (GLuint program, GLenum target, GLuint index, const(GLfloat)* params);
alias PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLdouble* params);
alias PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC = void function (GLuint program, GLenum target, GLuint index, GLfloat* params);
alias PFNGLGETNAMEDPROGRAMIVEXTPROC = void function (GLuint program, GLenum target, GLenum pname, GLint* params);
alias PFNGLGETNAMEDPROGRAMSTRINGEXTPROC = void function (GLuint program, GLenum target, GLenum pname, void* string);
alias PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC = void function (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC = void function (GLuint renderbuffer, GLenum pname, GLint* params);
alias PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC = void function (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC = void function (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC = uint function (GLuint framebuffer, GLenum target);
alias PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC = void function (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
alias PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC = void function (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
alias PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC = void function (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
alias PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC = void function (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
alias PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC = void function (GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params);
alias PFNGLGENERATETEXTUREMIPMAPEXTPROC = void function (GLuint texture, GLenum target);
alias PFNGLGENERATEMULTITEXMIPMAPEXTPROC = void function (GLenum texunit, GLenum target);
alias PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC = void function (GLuint framebuffer, GLenum mode);
alias PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC = void function (GLuint framebuffer, GLsizei n, const(GLenum)* bufs);
alias PFNGLFRAMEBUFFERREADBUFFEREXTPROC = void function (GLuint framebuffer, GLenum mode);
alias PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC = void function (GLuint framebuffer, GLenum pname, GLint* params);
alias PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC = void function (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
alias PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC = void function (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
alias PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC = void function (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
alias PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC = void function (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face);
alias PFNGLTEXTURERENDERBUFFEREXTPROC = void function (GLuint texture, GLenum target, GLuint renderbuffer);
alias PFNGLMULTITEXRENDERBUFFEREXTPROC = void function (GLenum texunit, GLenum target, GLuint renderbuffer);
alias PFNGLVERTEXARRAYVERTEXOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYCOLOROFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYEDGEFLAGOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYINDEXOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYNORMALOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYTEXCOORDOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYMULTITEXCOORDOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYFOGCOORDOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYSECONDARYCOLOROFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYVERTEXATTRIBOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset);
alias PFNGLVERTEXARRAYVERTEXATTRIBIOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLENABLEVERTEXARRAYEXTPROC = void function (GLuint vaobj, GLenum array);
alias PFNGLDISABLEVERTEXARRAYEXTPROC = void function (GLuint vaobj, GLenum array);
alias PFNGLENABLEVERTEXARRAYATTRIBEXTPROC = void function (GLuint vaobj, GLuint index);
alias PFNGLDISABLEVERTEXARRAYATTRIBEXTPROC = void function (GLuint vaobj, GLuint index);
alias PFNGLGETVERTEXARRAYINTEGERVEXTPROC = void function (GLuint vaobj, GLenum pname, GLint* param);
alias PFNGLGETVERTEXARRAYPOINTERVEXTPROC = void function (GLuint vaobj, GLenum pname, void** param);
alias PFNGLGETVERTEXARRAYINTEGERI_VEXTPROC = void function (GLuint vaobj, GLuint index, GLenum pname, GLint* param);
alias PFNGLGETVERTEXARRAYPOINTERI_VEXTPROC = void function (GLuint vaobj, GLuint index, GLenum pname, void** param);
alias PFNGLMAPNAMEDBUFFERRANGEEXTPROC = void* function (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
alias PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC = void function (GLuint buffer, GLintptr offset, GLsizeiptr length);
alias PFNGLNAMEDBUFFERSTORAGEEXTPROC = void function (GLuint buffer, GLsizeiptr size, const(void)* data, GLbitfield flags);
alias PFNGLCLEARNAMEDBUFFERDATAEXTPROC = void function (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const(void)* data);
alias PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC = void function (GLuint buffer, GLenum internalformat, GLsizeiptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data);
alias PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC = void function (GLuint framebuffer, GLenum pname, GLint param);
alias PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC = void function (GLuint framebuffer, GLenum pname, GLint* params);
alias PFNGLPROGRAMUNIFORM1DEXTPROC = void function (GLuint program, GLint location, GLdouble x);
alias PFNGLPROGRAMUNIFORM2DEXTPROC = void function (GLuint program, GLint location, GLdouble x, GLdouble y);
alias PFNGLPROGRAMUNIFORM3DEXTPROC = void function (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLPROGRAMUNIFORM4DEXTPROC = void function (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLPROGRAMUNIFORM1DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM2DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM3DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORM4DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC = void function (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
alias PFNGLTEXTUREBUFFERRANGEEXTPROC = void function (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
alias PFNGLTEXTURESTORAGE1DEXTPROC = void function (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
alias PFNGLTEXTURESTORAGE2DEXTPROC = void function (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLTEXTURESTORAGE3DEXTPROC = void function (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
alias PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC = void function (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
alias PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC = void function (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
alias PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC = void function (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
alias PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC = void function (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
alias PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC = void function (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
alias PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC = void function (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
alias PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC = void function (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
alias PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC = void function (GLuint vaobj, GLuint bindingindex, GLuint divisor);
alias PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC = void function (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
alias PFNGLTEXTUREPAGECOMMITMENTEXTPROC = void function (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean resident);
alias PFNGLVERTEXARRAYVERTEXATTRIBDIVISOREXTPROC = void function (GLuint vaobj, GLuint index, GLuint divisor);
void glMatrixLoadfEXT (GLenum mode, const(GLfloat)* m);
void glMatrixLoaddEXT (GLenum mode, const(GLdouble)* m);
void glMatrixMultfEXT (GLenum mode, const(GLfloat)* m);
void glMatrixMultdEXT (GLenum mode, const(GLdouble)* m);
void glMatrixLoadIdentityEXT (GLenum mode);
void glMatrixRotatefEXT (GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glMatrixRotatedEXT (GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glMatrixScalefEXT (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
void glMatrixScaledEXT (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
void glMatrixTranslatefEXT (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
void glMatrixTranslatedEXT (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
void glMatrixFrustumEXT (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glMatrixOrthoEXT (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glMatrixPopEXT (GLenum mode);
void glMatrixPushEXT (GLenum mode);
void glClientAttribDefaultEXT (GLbitfield mask);
void glPushClientAttribDefaultEXT (GLbitfield mask);
void glTextureParameterfEXT (GLuint texture, GLenum target, GLenum pname, GLfloat param);
void glTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, const(GLfloat)* params);
void glTextureParameteriEXT (GLuint texture, GLenum target, GLenum pname, GLint param);
void glTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, const(GLint)* params);
void glTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(void)* pixels);
void glTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* pixels);
void glCopyTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetTextureImageEXT (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, void* pixels);
void glGetTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, GLfloat* params);
void glGetTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, GLint* params);
void glGetTextureLevelParameterfvEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params);
void glGetTextureLevelParameterivEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params);
void glTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
void glCopyTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glBindMultiTextureEXT (GLenum texunit, GLenum target, GLuint texture);
void glMultiTexCoordPointerEXT (GLenum texunit, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glMultiTexEnvfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
void glMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, const(GLfloat)* params);
void glMultiTexEnviEXT (GLenum texunit, GLenum target, GLenum pname, GLint param);
void glMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, const(GLint)* params);
void glMultiTexGendEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble param);
void glMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, const(GLdouble)* params);
void glMultiTexGenfEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat param);
void glMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, const(GLfloat)* params);
void glMultiTexGeniEXT (GLenum texunit, GLenum coord, GLenum pname, GLint param);
void glMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, const(GLint)* params);
void glGetMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
void glGetMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params);
void glGetMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble* params);
void glGetMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat* params);
void glGetMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, GLint* params);
void glMultiTexParameteriEXT (GLenum texunit, GLenum target, GLenum pname, GLint param);
void glMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, const(GLint)* params);
void glMultiTexParameterfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
void glMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, const(GLfloat)* params);
void glMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(void)* pixels);
void glMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* pixels);
void glCopyMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, void* pixels);
void glGetMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
void glGetMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params);
void glGetMultiTexLevelParameterfvEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params);
void glGetMultiTexLevelParameterivEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params);
void glMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
void glCopyMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glEnableClientStateIndexedEXT (GLenum array, GLuint index);
void glDisableClientStateIndexedEXT (GLenum array, GLuint index);
void glGetFloatIndexedvEXT (GLenum target, GLuint index, GLfloat* data);
void glGetDoubleIndexedvEXT (GLenum target, GLuint index, GLdouble* data);
void glGetPointerIndexedvEXT (GLenum target, GLuint index, void** data);
void glEnableIndexedEXT (GLenum target, GLuint index);
void glDisableIndexedEXT (GLenum target, GLuint index);
GLboolean glIsEnabledIndexedEXT (GLenum target, GLuint index);
void glGetIntegerIndexedvEXT (GLenum target, GLuint index, GLint* data);
void glGetBooleanIndexedvEXT (GLenum target, GLuint index, GLboolean* data);
void glCompressedTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* bits);
void glCompressedTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* bits);
void glCompressedTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* bits);
void glCompressedTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* bits);
void glCompressedTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* bits);
void glCompressedTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* bits);
void glGetCompressedTextureImageEXT (GLuint texture, GLenum target, GLint lod, void* img);
void glCompressedMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(void)* bits);
void glCompressedMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(void)* bits);
void glCompressedMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(void)* bits);
void glCompressedMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(void)* bits);
void glCompressedMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(void)* bits);
void glCompressedMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(void)* bits);
void glGetCompressedMultiTexImageEXT (GLenum texunit, GLenum target, GLint lod, void* img);
void glMatrixLoadTransposefEXT (GLenum mode, const(GLfloat)* m);
void glMatrixLoadTransposedEXT (GLenum mode, const(GLdouble)* m);
void glMatrixMultTransposefEXT (GLenum mode, const(GLfloat)* m);
void glMatrixMultTransposedEXT (GLenum mode, const(GLdouble)* m);
void glNamedBufferDataEXT (GLuint buffer, GLsizeiptr size, const(void)* data, GLenum usage);
void glNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, const(void)* data);
void* glMapNamedBufferEXT (GLuint buffer, GLenum access);
GLboolean glUnmapNamedBufferEXT (GLuint buffer);
void glGetNamedBufferParameterivEXT (GLuint buffer, GLenum pname, GLint* params);
void glGetNamedBufferPointervEXT (GLuint buffer, GLenum pname, void** params);
void glGetNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, void* data);
void glProgramUniform1fEXT (GLuint program, GLint location, GLfloat v0);
void glProgramUniform2fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1);
void glProgramUniform3fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glProgramUniform4fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glProgramUniform1iEXT (GLuint program, GLint location, GLint v0);
void glProgramUniform2iEXT (GLuint program, GLint location, GLint v0, GLint v1);
void glProgramUniform3iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
void glProgramUniform4iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glProgramUniform1fvEXT (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform2fvEXT (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform3fvEXT (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform4fvEXT (GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
void glProgramUniform1ivEXT (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform2ivEXT (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform3ivEXT (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniform4ivEXT (GLuint program, GLint location, GLsizei count, const(GLint)* value);
void glProgramUniformMatrix2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix2x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix3x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix2x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix4x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix3x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glProgramUniformMatrix4x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
void glTextureBufferEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer);
void glMultiTexBufferEXT (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer);
void glTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, const(GLint)* params);
void glTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, const(GLuint)* params);
void glGetTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, GLint* params);
void glGetTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, GLuint* params);
void glMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, const(GLint)* params);
void glMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, const(GLuint)* params);
void glGetMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params);
void glGetMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, GLuint* params);
void glProgramUniform1uiEXT (GLuint program, GLint location, GLuint v0);
void glProgramUniform2uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1);
void glProgramUniform3uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
void glProgramUniform4uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glProgramUniform1uivEXT (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniform2uivEXT (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniform3uivEXT (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glProgramUniform4uivEXT (GLuint program, GLint location, GLsizei count, const(GLuint)* value);
void glNamedProgramLocalParameters4fvEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const(GLfloat)* params);
void glNamedProgramLocalParameterI4iEXT (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glNamedProgramLocalParameterI4ivEXT (GLuint program, GLenum target, GLuint index, const(GLint)* params);
void glNamedProgramLocalParametersI4ivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const(GLint)* params);
void glNamedProgramLocalParameterI4uiEXT (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glNamedProgramLocalParameterI4uivEXT (GLuint program, GLenum target, GLuint index, const(GLuint)* params);
void glNamedProgramLocalParametersI4uivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const(GLuint)* params);
void glGetNamedProgramLocalParameterIivEXT (GLuint program, GLenum target, GLuint index, GLint* params);
void glGetNamedProgramLocalParameterIuivEXT (GLuint program, GLenum target, GLuint index, GLuint* params);
void glEnableClientStateiEXT (GLenum array, GLuint index);
void glDisableClientStateiEXT (GLenum array, GLuint index);
void glGetFloati_vEXT (GLenum pname, GLuint index, GLfloat* params);
void glGetDoublei_vEXT (GLenum pname, GLuint index, GLdouble* params);
void glGetPointeri_vEXT (GLenum pname, GLuint index, void** params);
void glNamedProgramStringEXT (GLuint program, GLenum target, GLenum format, GLsizei len, const(void)* string);
void glNamedProgramLocalParameter4dEXT (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glNamedProgramLocalParameter4dvEXT (GLuint program, GLenum target, GLuint index, const(GLdouble)* params);
void glNamedProgramLocalParameter4fEXT (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glNamedProgramLocalParameter4fvEXT (GLuint program, GLenum target, GLuint index, const(GLfloat)* params);
void glGetNamedProgramLocalParameterdvEXT (GLuint program, GLenum target, GLuint index, GLdouble* params);
void glGetNamedProgramLocalParameterfvEXT (GLuint program, GLenum target, GLuint index, GLfloat* params);
void glGetNamedProgramivEXT (GLuint program, GLenum target, GLenum pname, GLint* params);
void glGetNamedProgramStringEXT (GLuint program, GLenum target, GLenum pname, void* string);
void glNamedRenderbufferStorageEXT (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
void glGetNamedRenderbufferParameterivEXT (GLuint renderbuffer, GLenum pname, GLint* params);
void glNamedRenderbufferStorageMultisampleEXT (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glNamedRenderbufferStorageMultisampleCoverageEXT (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
GLenum glCheckNamedFramebufferStatusEXT (GLuint framebuffer, GLenum target);
void glNamedFramebufferTexture1DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glNamedFramebufferTexture2DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glNamedFramebufferTexture3DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glNamedFramebufferRenderbufferEXT (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetNamedFramebufferAttachmentParameterivEXT (GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params);
void glGenerateTextureMipmapEXT (GLuint texture, GLenum target);
void glGenerateMultiTexMipmapEXT (GLenum texunit, GLenum target);
void glFramebufferDrawBufferEXT (GLuint framebuffer, GLenum mode);
void glFramebufferDrawBuffersEXT (GLuint framebuffer, GLsizei n, const(GLenum)* bufs);
void glFramebufferReadBufferEXT (GLuint framebuffer, GLenum mode);
void glGetFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint* params);
void glNamedCopyBufferSubDataEXT (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void glNamedFramebufferTextureEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
void glNamedFramebufferTextureLayerEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glNamedFramebufferTextureFaceEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glTextureRenderbufferEXT (GLuint texture, GLenum target, GLuint renderbuffer);
void glMultiTexRenderbufferEXT (GLenum texunit, GLenum target, GLuint renderbuffer);
void glVertexArrayVertexOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayColorOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayEdgeFlagOffsetEXT (GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset);
void glVertexArrayIndexOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayNormalOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayTexCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayMultiTexCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayFogCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArraySecondaryColorOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayVertexAttribOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset);
void glVertexArrayVertexAttribIOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glEnableVertexArrayEXT (GLuint vaobj, GLenum array);
void glDisableVertexArrayEXT (GLuint vaobj, GLenum array);
void glEnableVertexArrayAttribEXT (GLuint vaobj, GLuint index);
void glDisableVertexArrayAttribEXT (GLuint vaobj, GLuint index);
void glGetVertexArrayIntegervEXT (GLuint vaobj, GLenum pname, GLint* param);
void glGetVertexArrayPointervEXT (GLuint vaobj, GLenum pname, void** param);
void glGetVertexArrayIntegeri_vEXT (GLuint vaobj, GLuint index, GLenum pname, GLint* param);
void glGetVertexArrayPointeri_vEXT (GLuint vaobj, GLuint index, GLenum pname, void** param);
void* glMapNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
void glFlushMappedNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glNamedBufferStorageEXT (GLuint buffer, GLsizeiptr size, const(void)* data, GLbitfield flags);
void glClearNamedBufferDataEXT (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const(void)* data);
void glClearNamedBufferSubDataEXT (GLuint buffer, GLenum internalformat, GLsizeiptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data);
void glNamedFramebufferParameteriEXT (GLuint framebuffer, GLenum pname, GLint param);
void glGetNamedFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint* params);
void glProgramUniform1dEXT (GLuint program, GLint location, GLdouble x);
void glProgramUniform2dEXT (GLuint program, GLint location, GLdouble x, GLdouble y);
void glProgramUniform3dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z);
void glProgramUniform4dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramUniform1dvEXT (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform2dvEXT (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform3dvEXT (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniform4dvEXT (GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
void glProgramUniformMatrix2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix2x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix2x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix3x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix3x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix4x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glProgramUniformMatrix4x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
void glTextureBufferRangeEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glTextureStorage1DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTextureStorage2DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTextureStorage3DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void glTextureStorage2DMultisampleEXT (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTextureStorage3DMultisampleEXT (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glVertexArrayBindVertexBufferEXT (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexArrayVertexAttribFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexArrayVertexAttribIFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayVertexAttribLFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayVertexAttribBindingEXT (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
void glVertexArrayVertexBindingDivisorEXT (GLuint vaobj, GLuint bindingindex, GLuint divisor);
void glVertexArrayVertexAttribLOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glTexturePageCommitmentEXT (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean resident);
void glVertexArrayVertexAttribDivisorEXT (GLuint vaobj, GLuint index, GLuint divisor);

/* GL_EXT_direct_state_access */

enum GL_EXT_draw_buffers2 = 1;
alias PFNGLCOLORMASKINDEXEDEXTPROC = void function (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glColorMaskIndexedEXT (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);

/* GL_EXT_draw_buffers2 */

enum GL_EXT_draw_instanced = 1;
alias PFNGLDRAWARRAYSINSTANCEDEXTPROC = void function (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
alias PFNGLDRAWELEMENTSINSTANCEDEXTPROC = void function (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei primcount);
void glDrawArraysInstancedEXT (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedEXT (GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei primcount);

/* GL_EXT_draw_instanced */

enum GL_EXT_draw_range_elements = 1;
enum GL_MAX_ELEMENTS_VERTICES_EXT = 0x80E8;
enum GL_MAX_ELEMENTS_INDICES_EXT = 0x80E9;
alias PFNGLDRAWRANGEELEMENTSEXTPROC = void function (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(void)* indices);
void glDrawRangeElementsEXT (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(void)* indices);

/* GL_EXT_draw_range_elements */

enum GL_EXT_fog_coord = 1;
enum GL_FOG_COORDINATE_SOURCE_EXT = 0x8450;
enum GL_FOG_COORDINATE_EXT = 0x8451;
enum GL_FRAGMENT_DEPTH_EXT = 0x8452;
enum GL_CURRENT_FOG_COORDINATE_EXT = 0x8453;
enum GL_FOG_COORDINATE_ARRAY_TYPE_EXT = 0x8454;
enum GL_FOG_COORDINATE_ARRAY_STRIDE_EXT = 0x8455;
enum GL_FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456;
enum GL_FOG_COORDINATE_ARRAY_EXT = 0x8457;
alias PFNGLFOGCOORDFEXTPROC = void function (GLfloat coord);
alias PFNGLFOGCOORDFVEXTPROC = void function (const(GLfloat)* coord);
alias PFNGLFOGCOORDDEXTPROC = void function (GLdouble coord);
alias PFNGLFOGCOORDDVEXTPROC = void function (const(GLdouble)* coord);
alias PFNGLFOGCOORDPOINTEREXTPROC = void function (GLenum type, GLsizei stride, const(void)* pointer);
void glFogCoordfEXT (GLfloat coord);
void glFogCoordfvEXT (const(GLfloat)* coord);
void glFogCoorddEXT (GLdouble coord);
void glFogCoorddvEXT (const(GLdouble)* coord);
void glFogCoordPointerEXT (GLenum type, GLsizei stride, const(void)* pointer);

/* GL_EXT_fog_coord */

enum GL_EXT_framebuffer_blit = 1;
enum GL_READ_FRAMEBUFFER_EXT = 0x8CA8;
enum GL_DRAW_FRAMEBUFFER_EXT = 0x8CA9;
enum GL_DRAW_FRAMEBUFFER_BINDING_EXT = 0x8CA6;
enum GL_READ_FRAMEBUFFER_BINDING_EXT = 0x8CAA;
alias PFNGLBLITFRAMEBUFFEREXTPROC = void function (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
void glBlitFramebufferEXT (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);

/* GL_EXT_framebuffer_blit */

enum GL_EXT_framebuffer_multisample = 1;
enum GL_RENDERBUFFER_SAMPLES_EXT = 0x8CAB;
enum GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 0x8D56;
enum GL_MAX_SAMPLES_EXT = 0x8D57;
alias PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC = void function (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glRenderbufferStorageMultisampleEXT (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);

/* GL_EXT_framebuffer_multisample */

enum GL_EXT_framebuffer_multisample_blit_scaled = 1;
enum GL_SCALED_RESOLVE_FASTEST_EXT = 0x90BA;
enum GL_SCALED_RESOLVE_NICEST_EXT = 0x90BB;
/* GL_EXT_framebuffer_multisample_blit_scaled */

enum GL_EXT_framebuffer_object = 1;
enum GL_INVALID_FRAMEBUFFER_OPERATION_EXT = 0x0506;
enum GL_MAX_RENDERBUFFER_SIZE_EXT = 0x84E8;
enum GL_FRAMEBUFFER_BINDING_EXT = 0x8CA6;
enum GL_RENDERBUFFER_BINDING_EXT = 0x8CA7;
enum GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = 0x8CD0;
enum GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = 0x8CD1;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = 0x8CD2;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = 0x8CD3;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = 0x8CD4;
enum GL_FRAMEBUFFER_COMPLETE_EXT = 0x8CD5;
enum GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = 0x8CD6;
enum GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = 0x8CD7;
enum GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = 0x8CD9;
enum GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = 0x8CDA;
enum GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = 0x8CDB;
enum GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = 0x8CDC;
enum GL_FRAMEBUFFER_UNSUPPORTED_EXT = 0x8CDD;
enum GL_MAX_COLOR_ATTACHMENTS_EXT = 0x8CDF;
enum GL_COLOR_ATTACHMENT0_EXT = 0x8CE0;
enum GL_COLOR_ATTACHMENT1_EXT = 0x8CE1;
enum GL_COLOR_ATTACHMENT2_EXT = 0x8CE2;
enum GL_COLOR_ATTACHMENT3_EXT = 0x8CE3;
enum GL_COLOR_ATTACHMENT4_EXT = 0x8CE4;
enum GL_COLOR_ATTACHMENT5_EXT = 0x8CE5;
enum GL_COLOR_ATTACHMENT6_EXT = 0x8CE6;
enum GL_COLOR_ATTACHMENT7_EXT = 0x8CE7;
enum GL_COLOR_ATTACHMENT8_EXT = 0x8CE8;
enum GL_COLOR_ATTACHMENT9_EXT = 0x8CE9;
enum GL_COLOR_ATTACHMENT10_EXT = 0x8CEA;
enum GL_COLOR_ATTACHMENT11_EXT = 0x8CEB;
enum GL_COLOR_ATTACHMENT12_EXT = 0x8CEC;
enum GL_COLOR_ATTACHMENT13_EXT = 0x8CED;
enum GL_COLOR_ATTACHMENT14_EXT = 0x8CEE;
enum GL_COLOR_ATTACHMENT15_EXT = 0x8CEF;
enum GL_DEPTH_ATTACHMENT_EXT = 0x8D00;
enum GL_STENCIL_ATTACHMENT_EXT = 0x8D20;
enum GL_FRAMEBUFFER_EXT = 0x8D40;
enum GL_RENDERBUFFER_EXT = 0x8D41;
enum GL_RENDERBUFFER_WIDTH_EXT = 0x8D42;
enum GL_RENDERBUFFER_HEIGHT_EXT = 0x8D43;
enum GL_RENDERBUFFER_INTERNAL_FORMAT_EXT = 0x8D44;
enum GL_STENCIL_INDEX1_EXT = 0x8D46;
enum GL_STENCIL_INDEX4_EXT = 0x8D47;
enum GL_STENCIL_INDEX8_EXT = 0x8D48;
enum GL_STENCIL_INDEX16_EXT = 0x8D49;
enum GL_RENDERBUFFER_RED_SIZE_EXT = 0x8D50;
enum GL_RENDERBUFFER_GREEN_SIZE_EXT = 0x8D51;
enum GL_RENDERBUFFER_BLUE_SIZE_EXT = 0x8D52;
enum GL_RENDERBUFFER_ALPHA_SIZE_EXT = 0x8D53;
enum GL_RENDERBUFFER_DEPTH_SIZE_EXT = 0x8D54;
enum GL_RENDERBUFFER_STENCIL_SIZE_EXT = 0x8D55;
alias PFNGLISRENDERBUFFEREXTPROC = ubyte function (GLuint renderbuffer);
alias PFNGLBINDRENDERBUFFEREXTPROC = void function (GLenum target, GLuint renderbuffer);
alias PFNGLDELETERENDERBUFFERSEXTPROC = void function (GLsizei n, const(GLuint)* renderbuffers);
alias PFNGLGENRENDERBUFFERSEXTPROC = void function (GLsizei n, GLuint* renderbuffers);
alias PFNGLRENDERBUFFERSTORAGEEXTPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
alias PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLISFRAMEBUFFEREXTPROC = ubyte function (GLuint framebuffer);
alias PFNGLBINDFRAMEBUFFEREXTPROC = void function (GLenum target, GLuint framebuffer);
alias PFNGLDELETEFRAMEBUFFERSEXTPROC = void function (GLsizei n, const(GLuint)* framebuffers);
alias PFNGLGENFRAMEBUFFERSEXTPROC = void function (GLsizei n, GLuint* framebuffers);
alias PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC = uint function (GLenum target);
alias PFNGLFRAMEBUFFERTEXTURE1DEXTPROC = void function (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
alias PFNGLFRAMEBUFFERTEXTURE2DEXTPROC = void function (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
alias PFNGLFRAMEBUFFERTEXTURE3DEXTPROC = void function (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
alias PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC = void function (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
alias PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC = void function (GLenum target, GLenum attachment, GLenum pname, GLint* params);
alias PFNGLGENERATEMIPMAPEXTPROC = void function (GLenum target);
GLboolean glIsRenderbufferEXT (GLuint renderbuffer);
void glBindRenderbufferEXT (GLenum target, GLuint renderbuffer);
void glDeleteRenderbuffersEXT (GLsizei n, const(GLuint)* renderbuffers);
void glGenRenderbuffersEXT (GLsizei n, GLuint* renderbuffers);
void glRenderbufferStorageEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glGetRenderbufferParameterivEXT (GLenum target, GLenum pname, GLint* params);
GLboolean glIsFramebufferEXT (GLuint framebuffer);
void glBindFramebufferEXT (GLenum target, GLuint framebuffer);
void glDeleteFramebuffersEXT (GLsizei n, const(GLuint)* framebuffers);
void glGenFramebuffersEXT (GLsizei n, GLuint* framebuffers);
GLenum glCheckFramebufferStatusEXT (GLenum target);
void glFramebufferTexture1DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glFramebufferRenderbufferEXT (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetFramebufferAttachmentParameterivEXT (GLenum target, GLenum attachment, GLenum pname, GLint* params);
void glGenerateMipmapEXT (GLenum target);

/* GL_EXT_framebuffer_object */

enum GL_EXT_framebuffer_sRGB = 1;
enum GL_FRAMEBUFFER_SRGB_EXT = 0x8DB9;
enum GL_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x8DBA;
/* GL_EXT_framebuffer_sRGB */

enum GL_EXT_geometry_shader4 = 1;
enum GL_GEOMETRY_SHADER_EXT = 0x8DD9;
enum GL_GEOMETRY_VERTICES_OUT_EXT = 0x8DDA;
enum GL_GEOMETRY_INPUT_TYPE_EXT = 0x8DDB;
enum GL_GEOMETRY_OUTPUT_TYPE_EXT = 0x8DDC;
enum GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT = 0x8C29;
enum GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT = 0x8DDD;
enum GL_MAX_VERTEX_VARYING_COMPONENTS_EXT = 0x8DDE;
enum GL_MAX_VARYING_COMPONENTS_EXT = 0x8B4B;
enum GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT = 0x8DDF;
enum GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT = 0x8DE0;
enum GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = 0x8DE1;
enum GL_LINES_ADJACENCY_EXT = 0x000A;
enum GL_LINE_STRIP_ADJACENCY_EXT = 0x000B;
enum GL_TRIANGLES_ADJACENCY_EXT = 0x000C;
enum GL_TRIANGLE_STRIP_ADJACENCY_EXT = 0x000D;
enum GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = 0x8DA8;
enum GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT = 0x8DA9;
enum GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = 0x8DA7;
enum GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8CD4;
enum GL_PROGRAM_POINT_SIZE_EXT = 0x8642;
alias PFNGLPROGRAMPARAMETERIEXTPROC = void function (GLuint program, GLenum pname, GLint value);
void glProgramParameteriEXT (GLuint program, GLenum pname, GLint value);

/* GL_EXT_geometry_shader4 */

enum GL_EXT_gpu_program_parameters = 1;
alias PFNGLPROGRAMENVPARAMETERS4FVEXTPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLfloat)* params);
alias PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLfloat)* params);
void glProgramEnvParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const(GLfloat)* params);
void glProgramLocalParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const(GLfloat)* params);

/* GL_EXT_gpu_program_parameters */

enum GL_EXT_gpu_shader4 = 1;
enum GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT = 0x88FD;
enum GL_SAMPLER_1D_ARRAY_EXT = 0x8DC0;
enum GL_SAMPLER_2D_ARRAY_EXT = 0x8DC1;
enum GL_SAMPLER_BUFFER_EXT = 0x8DC2;
enum GL_SAMPLER_1D_ARRAY_SHADOW_EXT = 0x8DC3;
enum GL_SAMPLER_2D_ARRAY_SHADOW_EXT = 0x8DC4;
enum GL_SAMPLER_CUBE_SHADOW_EXT = 0x8DC5;
enum GL_UNSIGNED_INT_VEC2_EXT = 0x8DC6;
enum GL_UNSIGNED_INT_VEC3_EXT = 0x8DC7;
enum GL_UNSIGNED_INT_VEC4_EXT = 0x8DC8;
enum GL_INT_SAMPLER_1D_EXT = 0x8DC9;
enum GL_INT_SAMPLER_2D_EXT = 0x8DCA;
enum GL_INT_SAMPLER_3D_EXT = 0x8DCB;
enum GL_INT_SAMPLER_CUBE_EXT = 0x8DCC;
enum GL_INT_SAMPLER_2D_RECT_EXT = 0x8DCD;
enum GL_INT_SAMPLER_1D_ARRAY_EXT = 0x8DCE;
enum GL_INT_SAMPLER_2D_ARRAY_EXT = 0x8DCF;
enum GL_INT_SAMPLER_BUFFER_EXT = 0x8DD0;
enum GL_UNSIGNED_INT_SAMPLER_1D_EXT = 0x8DD1;
enum GL_UNSIGNED_INT_SAMPLER_2D_EXT = 0x8DD2;
enum GL_UNSIGNED_INT_SAMPLER_3D_EXT = 0x8DD3;
enum GL_UNSIGNED_INT_SAMPLER_CUBE_EXT = 0x8DD4;
enum GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT = 0x8DD5;
enum GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = 0x8DD6;
enum GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = 0x8DD7;
enum GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT = 0x8DD8;
enum GL_MIN_PROGRAM_TEXEL_OFFSET_EXT = 0x8904;
enum GL_MAX_PROGRAM_TEXEL_OFFSET_EXT = 0x8905;
alias PFNGLGETUNIFORMUIVEXTPROC = void function (GLuint program, GLint location, GLuint* params);
alias PFNGLBINDFRAGDATALOCATIONEXTPROC = void function (GLuint program, GLuint color, const(GLchar)* name);
alias PFNGLGETFRAGDATALOCATIONEXTPROC = int function (GLuint program, const(GLchar)* name);
alias PFNGLUNIFORM1UIEXTPROC = void function (GLint location, GLuint v0);
alias PFNGLUNIFORM2UIEXTPROC = void function (GLint location, GLuint v0, GLuint v1);
alias PFNGLUNIFORM3UIEXTPROC = void function (GLint location, GLuint v0, GLuint v1, GLuint v2);
alias PFNGLUNIFORM4UIEXTPROC = void function (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
alias PFNGLUNIFORM1UIVEXTPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLUNIFORM2UIVEXTPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLUNIFORM3UIVEXTPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
alias PFNGLUNIFORM4UIVEXTPROC = void function (GLint location, GLsizei count, const(GLuint)* value);
void glGetUniformuivEXT (GLuint program, GLint location, GLuint* params);
void glBindFragDataLocationEXT (GLuint program, GLuint color, const(GLchar)* name);
GLint glGetFragDataLocationEXT (GLuint program, const(GLchar)* name);
void glUniform1uiEXT (GLint location, GLuint v0);
void glUniform2uiEXT (GLint location, GLuint v0, GLuint v1);
void glUniform3uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2);
void glUniform4uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glUniform1uivEXT (GLint location, GLsizei count, const(GLuint)* value);
void glUniform2uivEXT (GLint location, GLsizei count, const(GLuint)* value);
void glUniform3uivEXT (GLint location, GLsizei count, const(GLuint)* value);
void glUniform4uivEXT (GLint location, GLsizei count, const(GLuint)* value);

/* GL_EXT_gpu_shader4 */

enum GL_EXT_histogram = 1;
enum GL_HISTOGRAM_EXT = 0x8024;
enum GL_PROXY_HISTOGRAM_EXT = 0x8025;
enum GL_HISTOGRAM_WIDTH_EXT = 0x8026;
enum GL_HISTOGRAM_FORMAT_EXT = 0x8027;
enum GL_HISTOGRAM_RED_SIZE_EXT = 0x8028;
enum GL_HISTOGRAM_GREEN_SIZE_EXT = 0x8029;
enum GL_HISTOGRAM_BLUE_SIZE_EXT = 0x802A;
enum GL_HISTOGRAM_ALPHA_SIZE_EXT = 0x802B;
enum GL_HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802C;
enum GL_HISTOGRAM_SINK_EXT = 0x802D;
enum GL_MINMAX_EXT = 0x802E;
enum GL_MINMAX_FORMAT_EXT = 0x802F;
enum GL_MINMAX_SINK_EXT = 0x8030;
enum GL_TABLE_TOO_LARGE_EXT = 0x8031;
alias PFNGLGETHISTOGRAMEXTPROC = void function (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
alias PFNGLGETHISTOGRAMPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETHISTOGRAMPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETMINMAXEXTPROC = void function (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
alias PFNGLGETMINMAXPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETMINMAXPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLHISTOGRAMEXTPROC = void function (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias PFNGLMINMAXEXTPROC = void function (GLenum target, GLenum internalformat, GLboolean sink);
alias PFNGLRESETHISTOGRAMEXTPROC = void function (GLenum target);
alias PFNGLRESETMINMAXEXTPROC = void function (GLenum target);
void glGetHistogramEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
void glGetHistogramParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetHistogramParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glGetMinmaxEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values);
void glGetMinmaxParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetMinmaxParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glHistogramEXT (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glMinmaxEXT (GLenum target, GLenum internalformat, GLboolean sink);
void glResetHistogramEXT (GLenum target);
void glResetMinmaxEXT (GLenum target);

/* GL_EXT_histogram */

enum GL_EXT_index_array_formats = 1;
enum GL_IUI_V2F_EXT = 0x81AD;
enum GL_IUI_V3F_EXT = 0x81AE;
enum GL_IUI_N3F_V2F_EXT = 0x81AF;
enum GL_IUI_N3F_V3F_EXT = 0x81B0;
enum GL_T2F_IUI_V2F_EXT = 0x81B1;
enum GL_T2F_IUI_V3F_EXT = 0x81B2;
enum GL_T2F_IUI_N3F_V2F_EXT = 0x81B3;
enum GL_T2F_IUI_N3F_V3F_EXT = 0x81B4;
/* GL_EXT_index_array_formats */

enum GL_EXT_index_func = 1;
enum GL_INDEX_TEST_EXT = 0x81B5;
enum GL_INDEX_TEST_FUNC_EXT = 0x81B6;
enum GL_INDEX_TEST_REF_EXT = 0x81B7;
alias PFNGLINDEXFUNCEXTPROC = void function (GLenum func, GLclampf ref_);
void glIndexFuncEXT (GLenum func, GLclampf ref_);

/* GL_EXT_index_func */

enum GL_EXT_index_material = 1;
enum GL_INDEX_MATERIAL_EXT = 0x81B8;
enum GL_INDEX_MATERIAL_PARAMETER_EXT = 0x81B9;
enum GL_INDEX_MATERIAL_FACE_EXT = 0x81BA;
alias PFNGLINDEXMATERIALEXTPROC = void function (GLenum face, GLenum mode);
void glIndexMaterialEXT (GLenum face, GLenum mode);

/* GL_EXT_index_material */

enum GL_EXT_index_texture = 1;
/* GL_EXT_index_texture */

enum GL_EXT_light_texture = 1;
enum GL_FRAGMENT_MATERIAL_EXT = 0x8349;
enum GL_FRAGMENT_NORMAL_EXT = 0x834A;
enum GL_FRAGMENT_COLOR_EXT = 0x834C;
enum GL_ATTENUATION_EXT = 0x834D;
enum GL_SHADOW_ATTENUATION_EXT = 0x834E;
enum GL_TEXTURE_APPLICATION_MODE_EXT = 0x834F;
enum GL_TEXTURE_LIGHT_EXT = 0x8350;
enum GL_TEXTURE_MATERIAL_FACE_EXT = 0x8351;
enum GL_TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352;
alias PFNGLAPPLYTEXTUREEXTPROC = void function (GLenum mode);
alias PFNGLTEXTURELIGHTEXTPROC = void function (GLenum pname);
alias PFNGLTEXTUREMATERIALEXTPROC = void function (GLenum face, GLenum mode);
void glApplyTextureEXT (GLenum mode);
void glTextureLightEXT (GLenum pname);
void glTextureMaterialEXT (GLenum face, GLenum mode);

/* GL_EXT_light_texture */

enum GL_EXT_misc_attribute = 1;
/* GL_EXT_misc_attribute */

enum GL_EXT_multi_draw_arrays = 1;
alias PFNGLMULTIDRAWARRAYSEXTPROC = void function (GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount);
alias PFNGLMULTIDRAWELEMENTSEXTPROC = void function (GLenum mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei primcount);
void glMultiDrawArraysEXT (GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount);
void glMultiDrawElementsEXT (GLenum mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei primcount);

/* GL_EXT_multi_draw_arrays */

enum GL_EXT_multisample = 1;
enum GL_MULTISAMPLE_EXT = 0x809D;
enum GL_SAMPLE_ALPHA_TO_MASK_EXT = 0x809E;
enum GL_SAMPLE_ALPHA_TO_ONE_EXT = 0x809F;
enum GL_SAMPLE_MASK_EXT = 0x80A0;
enum GL_1PASS_EXT = 0x80A1;
enum GL_2PASS_0_EXT = 0x80A2;
enum GL_2PASS_1_EXT = 0x80A3;
enum GL_4PASS_0_EXT = 0x80A4;
enum GL_4PASS_1_EXT = 0x80A5;
enum GL_4PASS_2_EXT = 0x80A6;
enum GL_4PASS_3_EXT = 0x80A7;
enum GL_SAMPLE_BUFFERS_EXT = 0x80A8;
enum GL_SAMPLES_EXT = 0x80A9;
enum GL_SAMPLE_MASK_VALUE_EXT = 0x80AA;
enum GL_SAMPLE_MASK_INVERT_EXT = 0x80AB;
enum GL_SAMPLE_PATTERN_EXT = 0x80AC;
enum GL_MULTISAMPLE_BIT_EXT = 0x20000000;
alias PFNGLSAMPLEMASKEXTPROC = void function (GLclampf value, GLboolean invert);
alias PFNGLSAMPLEPATTERNEXTPROC = void function (GLenum pattern);
void glSampleMaskEXT (GLclampf value, GLboolean invert);
void glSamplePatternEXT (GLenum pattern);

/* GL_EXT_multisample */

enum GL_EXT_packed_depth_stencil = 1;
enum GL_DEPTH_STENCIL_EXT = 0x84F9;
enum GL_UNSIGNED_INT_24_8_EXT = 0x84FA;
enum GL_DEPTH24_STENCIL8_EXT = 0x88F0;
enum GL_TEXTURE_STENCIL_SIZE_EXT = 0x88F1;
/* GL_EXT_packed_depth_stencil */

enum GL_EXT_packed_float = 1;
enum GL_R11F_G11F_B10F_EXT = 0x8C3A;
enum GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = 0x8C3B;
enum GL_RGBA_SIGNED_COMPONENTS_EXT = 0x8C3C;
/* GL_EXT_packed_float */

enum GL_EXT_packed_pixels = 1;
enum GL_UNSIGNED_BYTE_3_3_2_EXT = 0x8032;
enum GL_UNSIGNED_SHORT_4_4_4_4_EXT = 0x8033;
enum GL_UNSIGNED_SHORT_5_5_5_1_EXT = 0x8034;
enum GL_UNSIGNED_INT_8_8_8_8_EXT = 0x8035;
enum GL_UNSIGNED_INT_10_10_10_2_EXT = 0x8036;
/* GL_EXT_packed_pixels */

enum GL_EXT_paletted_texture = 1;
enum GL_COLOR_INDEX1_EXT = 0x80E2;
enum GL_COLOR_INDEX2_EXT = 0x80E3;
enum GL_COLOR_INDEX4_EXT = 0x80E4;
enum GL_COLOR_INDEX8_EXT = 0x80E5;
enum GL_COLOR_INDEX12_EXT = 0x80E6;
enum GL_COLOR_INDEX16_EXT = 0x80E7;
enum GL_TEXTURE_INDEX_SIZE_EXT = 0x80ED;
alias PFNGLCOLORTABLEEXTPROC = void function (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const(void)* table);
alias PFNGLGETCOLORTABLEEXTPROC = void function (GLenum target, GLenum format, GLenum type, void* data);
alias PFNGLGETCOLORTABLEPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETCOLORTABLEPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, GLfloat* params);
void glColorTableEXT (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const(void)* table);
void glGetColorTableEXT (GLenum target, GLenum format, GLenum type, void* data);
void glGetColorTableParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glGetColorTableParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);

/* GL_EXT_paletted_texture */

enum GL_EXT_pixel_buffer_object = 1;
enum GL_PIXEL_PACK_BUFFER_EXT = 0x88EB;
enum GL_PIXEL_UNPACK_BUFFER_EXT = 0x88EC;
enum GL_PIXEL_PACK_BUFFER_BINDING_EXT = 0x88ED;
enum GL_PIXEL_UNPACK_BUFFER_BINDING_EXT = 0x88EF;
/* GL_EXT_pixel_buffer_object */

enum GL_EXT_pixel_transform = 1;
enum GL_PIXEL_TRANSFORM_2D_EXT = 0x8330;
enum GL_PIXEL_MAG_FILTER_EXT = 0x8331;
enum GL_PIXEL_MIN_FILTER_EXT = 0x8332;
enum GL_PIXEL_CUBIC_WEIGHT_EXT = 0x8333;
enum GL_CUBIC_EXT = 0x8334;
enum GL_AVERAGE_EXT = 0x8335;
enum GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8336;
enum GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8337;
enum GL_PIXEL_TRANSFORM_2D_MATRIX_EXT = 0x8338;
alias PFNGLPIXELTRANSFORMPARAMETERIEXTPROC = void function (GLenum target, GLenum pname, GLint param);
alias PFNGLPIXELTRANSFORMPARAMETERFEXTPROC = void function (GLenum target, GLenum pname, GLfloat param);
alias PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLGETPIXELTRANSFORMPARAMETERIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETPIXELTRANSFORMPARAMETERFVEXTPROC = void function (GLenum target, GLenum pname, GLfloat* params);
void glPixelTransformParameteriEXT (GLenum target, GLenum pname, GLint param);
void glPixelTransformParameterfEXT (GLenum target, GLenum pname, GLfloat param);
void glPixelTransformParameterivEXT (GLenum target, GLenum pname, const(GLint)* params);
void glPixelTransformParameterfvEXT (GLenum target, GLenum pname, const(GLfloat)* params);
void glGetPixelTransformParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glGetPixelTransformParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);

/* GL_EXT_pixel_transform */

enum GL_EXT_pixel_transform_color_table = 1;
/* GL_EXT_pixel_transform_color_table */

enum GL_EXT_point_parameters = 1;
enum GL_POINT_SIZE_MIN_EXT = 0x8126;
enum GL_POINT_SIZE_MAX_EXT = 0x8127;
enum GL_POINT_FADE_THRESHOLD_SIZE_EXT = 0x8128;
enum GL_DISTANCE_ATTENUATION_EXT = 0x8129;
alias PFNGLPOINTPARAMETERFEXTPROC = void function (GLenum pname, GLfloat param);
alias PFNGLPOINTPARAMETERFVEXTPROC = void function (GLenum pname, const(GLfloat)* params);
void glPointParameterfEXT (GLenum pname, GLfloat param);
void glPointParameterfvEXT (GLenum pname, const(GLfloat)* params);

/* GL_EXT_point_parameters */

enum GL_EXT_polygon_offset = 1;
enum GL_POLYGON_OFFSET_EXT = 0x8037;
enum GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038;
enum GL_POLYGON_OFFSET_BIAS_EXT = 0x8039;
alias PFNGLPOLYGONOFFSETEXTPROC = void function (GLfloat factor, GLfloat bias);
void glPolygonOffsetEXT (GLfloat factor, GLfloat bias);

/* GL_EXT_polygon_offset */

enum GL_EXT_provoking_vertex = 1;
enum GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT = 0x8E4C;
enum GL_FIRST_VERTEX_CONVENTION_EXT = 0x8E4D;
enum GL_LAST_VERTEX_CONVENTION_EXT = 0x8E4E;
enum GL_PROVOKING_VERTEX_EXT = 0x8E4F;
alias PFNGLPROVOKINGVERTEXEXTPROC = void function (GLenum mode);
void glProvokingVertexEXT (GLenum mode);

/* GL_EXT_provoking_vertex */

enum GL_EXT_rescale_normal = 1;
enum GL_RESCALE_NORMAL_EXT = 0x803A;
/* GL_EXT_rescale_normal */

enum GL_EXT_secondary_color = 1;
enum GL_COLOR_SUM_EXT = 0x8458;
enum GL_CURRENT_SECONDARY_COLOR_EXT = 0x8459;
enum GL_SECONDARY_COLOR_ARRAY_SIZE_EXT = 0x845A;
enum GL_SECONDARY_COLOR_ARRAY_TYPE_EXT = 0x845B;
enum GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 0x845C;
enum GL_SECONDARY_COLOR_ARRAY_POINTER_EXT = 0x845D;
enum GL_SECONDARY_COLOR_ARRAY_EXT = 0x845E;
alias PFNGLSECONDARYCOLOR3BEXTPROC = void function (GLbyte red, GLbyte green, GLbyte blue);
alias PFNGLSECONDARYCOLOR3BVEXTPROC = void function (const(GLbyte)* v);
alias PFNGLSECONDARYCOLOR3DEXTPROC = void function (GLdouble red, GLdouble green, GLdouble blue);
alias PFNGLSECONDARYCOLOR3DVEXTPROC = void function (const(GLdouble)* v);
alias PFNGLSECONDARYCOLOR3FEXTPROC = void function (GLfloat red, GLfloat green, GLfloat blue);
alias PFNGLSECONDARYCOLOR3FVEXTPROC = void function (const(GLfloat)* v);
alias PFNGLSECONDARYCOLOR3IEXTPROC = void function (GLint red, GLint green, GLint blue);
alias PFNGLSECONDARYCOLOR3IVEXTPROC = void function (const(GLint)* v);
alias PFNGLSECONDARYCOLOR3SEXTPROC = void function (GLshort red, GLshort green, GLshort blue);
alias PFNGLSECONDARYCOLOR3SVEXTPROC = void function (const(GLshort)* v);
alias PFNGLSECONDARYCOLOR3UBEXTPROC = void function (GLubyte red, GLubyte green, GLubyte blue);
alias PFNGLSECONDARYCOLOR3UBVEXTPROC = void function (const(GLubyte)* v);
alias PFNGLSECONDARYCOLOR3UIEXTPROC = void function (GLuint red, GLuint green, GLuint blue);
alias PFNGLSECONDARYCOLOR3UIVEXTPROC = void function (const(GLuint)* v);
alias PFNGLSECONDARYCOLOR3USEXTPROC = void function (GLushort red, GLushort green, GLushort blue);
alias PFNGLSECONDARYCOLOR3USVEXTPROC = void function (const(GLushort)* v);
alias PFNGLSECONDARYCOLORPOINTEREXTPROC = void function (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glSecondaryColor3bEXT (GLbyte red, GLbyte green, GLbyte blue);
void glSecondaryColor3bvEXT (const(GLbyte)* v);
void glSecondaryColor3dEXT (GLdouble red, GLdouble green, GLdouble blue);
void glSecondaryColor3dvEXT (const(GLdouble)* v);
void glSecondaryColor3fEXT (GLfloat red, GLfloat green, GLfloat blue);
void glSecondaryColor3fvEXT (const(GLfloat)* v);
void glSecondaryColor3iEXT (GLint red, GLint green, GLint blue);
void glSecondaryColor3ivEXT (const(GLint)* v);
void glSecondaryColor3sEXT (GLshort red, GLshort green, GLshort blue);
void glSecondaryColor3svEXT (const(GLshort)* v);
void glSecondaryColor3ubEXT (GLubyte red, GLubyte green, GLubyte blue);
void glSecondaryColor3ubvEXT (const(GLubyte)* v);
void glSecondaryColor3uiEXT (GLuint red, GLuint green, GLuint blue);
void glSecondaryColor3uivEXT (const(GLuint)* v);
void glSecondaryColor3usEXT (GLushort red, GLushort green, GLushort blue);
void glSecondaryColor3usvEXT (const(GLushort)* v);
void glSecondaryColorPointerEXT (GLint size, GLenum type, GLsizei stride, const(void)* pointer);

/* GL_EXT_secondary_color */

enum GL_EXT_separate_shader_objects = 1;
enum GL_ACTIVE_PROGRAM_EXT = 0x8B8D;
alias PFNGLUSESHADERPROGRAMEXTPROC = void function (GLenum type, GLuint program);
alias PFNGLACTIVEPROGRAMEXTPROC = void function (GLuint program);
alias PFNGLCREATESHADERPROGRAMEXTPROC = uint function (GLenum type, const(GLchar)* string);
void glUseShaderProgramEXT (GLenum type, GLuint program);
void glActiveProgramEXT (GLuint program);
GLuint glCreateShaderProgramEXT (GLenum type, const(GLchar)* string);

/* GL_EXT_separate_shader_objects */

enum GL_EXT_separate_specular_color = 1;
enum GL_LIGHT_MODEL_COLOR_CONTROL_EXT = 0x81F8;
enum GL_SINGLE_COLOR_EXT = 0x81F9;
enum GL_SEPARATE_SPECULAR_COLOR_EXT = 0x81FA;
/* GL_EXT_separate_specular_color */

enum GL_EXT_shader_image_load_formatted = 1;
/* GL_EXT_shader_image_load_formatted */

enum GL_EXT_shader_image_load_store = 1;
enum GL_MAX_IMAGE_UNITS_EXT = 0x8F38;
enum GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT = 0x8F39;
enum GL_IMAGE_BINDING_NAME_EXT = 0x8F3A;
enum GL_IMAGE_BINDING_LEVEL_EXT = 0x8F3B;
enum GL_IMAGE_BINDING_LAYERED_EXT = 0x8F3C;
enum GL_IMAGE_BINDING_LAYER_EXT = 0x8F3D;
enum GL_IMAGE_BINDING_ACCESS_EXT = 0x8F3E;
enum GL_IMAGE_1D_EXT = 0x904C;
enum GL_IMAGE_2D_EXT = 0x904D;
enum GL_IMAGE_3D_EXT = 0x904E;
enum GL_IMAGE_2D_RECT_EXT = 0x904F;
enum GL_IMAGE_CUBE_EXT = 0x9050;
enum GL_IMAGE_BUFFER_EXT = 0x9051;
enum GL_IMAGE_1D_ARRAY_EXT = 0x9052;
enum GL_IMAGE_2D_ARRAY_EXT = 0x9053;
enum GL_IMAGE_CUBE_MAP_ARRAY_EXT = 0x9054;
enum GL_IMAGE_2D_MULTISAMPLE_EXT = 0x9055;
enum GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x9056;
enum GL_INT_IMAGE_1D_EXT = 0x9057;
enum GL_INT_IMAGE_2D_EXT = 0x9058;
enum GL_INT_IMAGE_3D_EXT = 0x9059;
enum GL_INT_IMAGE_2D_RECT_EXT = 0x905A;
enum GL_INT_IMAGE_CUBE_EXT = 0x905B;
enum GL_INT_IMAGE_BUFFER_EXT = 0x905C;
enum GL_INT_IMAGE_1D_ARRAY_EXT = 0x905D;
enum GL_INT_IMAGE_2D_ARRAY_EXT = 0x905E;
enum GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x905F;
enum GL_INT_IMAGE_2D_MULTISAMPLE_EXT = 0x9060;
enum GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x9061;
enum GL_UNSIGNED_INT_IMAGE_1D_EXT = 0x9062;
enum GL_UNSIGNED_INT_IMAGE_2D_EXT = 0x9063;
enum GL_UNSIGNED_INT_IMAGE_3D_EXT = 0x9064;
enum GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT = 0x9065;
enum GL_UNSIGNED_INT_IMAGE_CUBE_EXT = 0x9066;
enum GL_UNSIGNED_INT_IMAGE_BUFFER_EXT = 0x9067;
enum GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT = 0x9068;
enum GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT = 0x9069;
enum GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x906A;
enum GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT = 0x906B;
enum GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x906C;
enum GL_MAX_IMAGE_SAMPLES_EXT = 0x906D;
enum GL_IMAGE_BINDING_FORMAT_EXT = 0x906E;
enum GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = 0x00000001;
enum GL_ELEMENT_ARRAY_BARRIER_BIT_EXT = 0x00000002;
enum GL_UNIFORM_BARRIER_BIT_EXT = 0x00000004;
enum GL_TEXTURE_FETCH_BARRIER_BIT_EXT = 0x00000008;
enum GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = 0x00000020;
enum GL_COMMAND_BARRIER_BIT_EXT = 0x00000040;
enum GL_PIXEL_BUFFER_BARRIER_BIT_EXT = 0x00000080;
enum GL_TEXTURE_UPDATE_BARRIER_BIT_EXT = 0x00000100;
enum GL_BUFFER_UPDATE_BARRIER_BIT_EXT = 0x00000200;
enum GL_FRAMEBUFFER_BARRIER_BIT_EXT = 0x00000400;
enum GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = 0x00000800;
enum GL_ATOMIC_COUNTER_BARRIER_BIT_EXT = 0x00001000;
enum GL_ALL_BARRIER_BITS_EXT = 0xFFFFFFFF;
alias PFNGLBINDIMAGETEXTUREEXTPROC = void function (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format);
alias PFNGLMEMORYBARRIEREXTPROC = void function (GLbitfield barriers);
void glBindImageTextureEXT (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format);
void glMemoryBarrierEXT (GLbitfield barriers);

/* GL_EXT_shader_image_load_store */

enum GL_EXT_shader_integer_mix = 1;
/* GL_EXT_shader_integer_mix */

enum GL_EXT_shadow_funcs = 1;
/* GL_EXT_shadow_funcs */

enum GL_EXT_shared_texture_palette = 1;
enum GL_SHARED_TEXTURE_PALETTE_EXT = 0x81FB;
/* GL_EXT_shared_texture_palette */

enum GL_EXT_stencil_clear_tag = 1;
enum GL_STENCIL_TAG_BITS_EXT = 0x88F2;
enum GL_STENCIL_CLEAR_TAG_VALUE_EXT = 0x88F3;
alias PFNGLSTENCILCLEARTAGEXTPROC = void function (GLsizei stencilTagBits, GLuint stencilClearTag);
void glStencilClearTagEXT (GLsizei stencilTagBits, GLuint stencilClearTag);

/* GL_EXT_stencil_clear_tag */

enum GL_EXT_stencil_two_side = 1;
enum GL_STENCIL_TEST_TWO_SIDE_EXT = 0x8910;
enum GL_ACTIVE_STENCIL_FACE_EXT = 0x8911;
alias PFNGLACTIVESTENCILFACEEXTPROC = void function (GLenum face);
void glActiveStencilFaceEXT (GLenum face);

/* GL_EXT_stencil_two_side */

enum GL_EXT_stencil_wrap = 1;
enum GL_INCR_WRAP_EXT = 0x8507;
enum GL_DECR_WRAP_EXT = 0x8508;
/* GL_EXT_stencil_wrap */

enum GL_EXT_subtexture = 1;
alias PFNGLTEXSUBIMAGE1DEXTPROC = void function (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXSUBIMAGE2DEXTPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* pixels);
void glTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(void)* pixels);
void glTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(void)* pixels);

/* GL_EXT_subtexture */

enum GL_EXT_texture = 1;
enum GL_ALPHA4_EXT = 0x803B;
enum GL_ALPHA8_EXT = 0x803C;
enum GL_ALPHA12_EXT = 0x803D;
enum GL_ALPHA16_EXT = 0x803E;
enum GL_LUMINANCE4_EXT = 0x803F;
enum GL_LUMINANCE8_EXT = 0x8040;
enum GL_LUMINANCE12_EXT = 0x8041;
enum GL_LUMINANCE16_EXT = 0x8042;
enum GL_LUMINANCE4_ALPHA4_EXT = 0x8043;
enum GL_LUMINANCE6_ALPHA2_EXT = 0x8044;
enum GL_LUMINANCE8_ALPHA8_EXT = 0x8045;
enum GL_LUMINANCE12_ALPHA4_EXT = 0x8046;
enum GL_LUMINANCE12_ALPHA12_EXT = 0x8047;
enum GL_LUMINANCE16_ALPHA16_EXT = 0x8048;
enum GL_INTENSITY_EXT = 0x8049;
enum GL_INTENSITY4_EXT = 0x804A;
enum GL_INTENSITY8_EXT = 0x804B;
enum GL_INTENSITY12_EXT = 0x804C;
enum GL_INTENSITY16_EXT = 0x804D;
enum GL_RGB2_EXT = 0x804E;
enum GL_RGB4_EXT = 0x804F;
enum GL_RGB5_EXT = 0x8050;
enum GL_RGB8_EXT = 0x8051;
enum GL_RGB10_EXT = 0x8052;
enum GL_RGB12_EXT = 0x8053;
enum GL_RGB16_EXT = 0x8054;
enum GL_RGBA2_EXT = 0x8055;
enum GL_RGBA4_EXT = 0x8056;
enum GL_RGB5_A1_EXT = 0x8057;
enum GL_RGBA8_EXT = 0x8058;
enum GL_RGB10_A2_EXT = 0x8059;
enum GL_RGBA12_EXT = 0x805A;
enum GL_RGBA16_EXT = 0x805B;
enum GL_TEXTURE_RED_SIZE_EXT = 0x805C;
enum GL_TEXTURE_GREEN_SIZE_EXT = 0x805D;
enum GL_TEXTURE_BLUE_SIZE_EXT = 0x805E;
enum GL_TEXTURE_ALPHA_SIZE_EXT = 0x805F;
enum GL_TEXTURE_LUMINANCE_SIZE_EXT = 0x8060;
enum GL_TEXTURE_INTENSITY_SIZE_EXT = 0x8061;
enum GL_REPLACE_EXT = 0x8062;
enum GL_PROXY_TEXTURE_1D_EXT = 0x8063;
enum GL_PROXY_TEXTURE_2D_EXT = 0x8064;
enum GL_TEXTURE_TOO_LARGE_EXT = 0x8065;
/* GL_EXT_texture */

enum GL_EXT_texture3D = 1;
enum GL_PACK_SKIP_IMAGES_EXT = 0x806B;
enum GL_PACK_IMAGE_HEIGHT_EXT = 0x806C;
enum GL_UNPACK_SKIP_IMAGES_EXT = 0x806D;
enum GL_UNPACK_IMAGE_HEIGHT_EXT = 0x806E;
enum GL_TEXTURE_3D_EXT = 0x806F;
enum GL_PROXY_TEXTURE_3D_EXT = 0x8070;
enum GL_TEXTURE_DEPTH_EXT = 0x8071;
enum GL_TEXTURE_WRAP_R_EXT = 0x8072;
enum GL_MAX_3D_TEXTURE_SIZE_EXT = 0x8073;
alias PFNGLTEXIMAGE3DEXTPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXSUBIMAGE3DEXTPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);
void glTexImage3DEXT (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(void)* pixels);

/* GL_EXT_texture3D */

enum GL_EXT_texture_array = 1;
enum GL_TEXTURE_1D_ARRAY_EXT = 0x8C18;
enum GL_PROXY_TEXTURE_1D_ARRAY_EXT = 0x8C19;
enum GL_TEXTURE_2D_ARRAY_EXT = 0x8C1A;
enum GL_PROXY_TEXTURE_2D_ARRAY_EXT = 0x8C1B;
enum GL_TEXTURE_BINDING_1D_ARRAY_EXT = 0x8C1C;
enum GL_TEXTURE_BINDING_2D_ARRAY_EXT = 0x8C1D;
enum GL_MAX_ARRAY_TEXTURE_LAYERS_EXT = 0x88FF;
enum GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT = 0x884E;
/* GL_EXT_texture_array */

enum GL_EXT_texture_buffer_object = 1;
enum GL_TEXTURE_BUFFER_EXT = 0x8C2A;
enum GL_MAX_TEXTURE_BUFFER_SIZE_EXT = 0x8C2B;
enum GL_TEXTURE_BINDING_BUFFER_EXT = 0x8C2C;
enum GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = 0x8C2D;
enum GL_TEXTURE_BUFFER_FORMAT_EXT = 0x8C2E;
alias PFNGLTEXBUFFEREXTPROC = void function (GLenum target, GLenum internalformat, GLuint buffer);
void glTexBufferEXT (GLenum target, GLenum internalformat, GLuint buffer);

/* GL_EXT_texture_buffer_object */

enum GL_EXT_texture_compression_latc = 1;
enum GL_COMPRESSED_LUMINANCE_LATC1_EXT = 0x8C70;
enum GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = 0x8C71;
enum GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = 0x8C72;
enum GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = 0x8C73;
/* GL_EXT_texture_compression_latc */

enum GL_EXT_texture_compression_rgtc = 1;
enum GL_COMPRESSED_RED_RGTC1_EXT = 0x8DBB;
enum GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = 0x8DBC;
enum GL_COMPRESSED_RED_GREEN_RGTC2_EXT = 0x8DBD;
enum GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = 0x8DBE;
/* GL_EXT_texture_compression_rgtc */

enum GL_EXT_texture_compression_s3tc = 1;
enum GL_COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;
enum GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;
enum GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2;
enum GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;
/* GL_EXT_texture_compression_s3tc */

enum GL_EXT_texture_cube_map = 1;
enum GL_NORMAL_MAP_EXT = 0x8511;
enum GL_REFLECTION_MAP_EXT = 0x8512;
enum GL_TEXTURE_CUBE_MAP_EXT = 0x8513;
enum GL_TEXTURE_BINDING_CUBE_MAP_EXT = 0x8514;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = 0x8515;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = 0x8516;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = 0x8517;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = 0x8518;
enum GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = 0x8519;
enum GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = 0x851A;
enum GL_PROXY_TEXTURE_CUBE_MAP_EXT = 0x851B;
enum GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = 0x851C;
/* GL_EXT_texture_cube_map */

enum GL_EXT_texture_env_add = 1;
/* GL_EXT_texture_env_add */

enum GL_EXT_texture_env_combine = 1;
enum GL_COMBINE_EXT = 0x8570;
enum GL_COMBINE_RGB_EXT = 0x8571;
enum GL_COMBINE_ALPHA_EXT = 0x8572;
enum GL_RGB_SCALE_EXT = 0x8573;
enum GL_ADD_SIGNED_EXT = 0x8574;
enum GL_INTERPOLATE_EXT = 0x8575;
enum GL_CONSTANT_EXT = 0x8576;
enum GL_PRIMARY_COLOR_EXT = 0x8577;
enum GL_PREVIOUS_EXT = 0x8578;
enum GL_SOURCE0_RGB_EXT = 0x8580;
enum GL_SOURCE1_RGB_EXT = 0x8581;
enum GL_SOURCE2_RGB_EXT = 0x8582;
enum GL_SOURCE0_ALPHA_EXT = 0x8588;
enum GL_SOURCE1_ALPHA_EXT = 0x8589;
enum GL_SOURCE2_ALPHA_EXT = 0x858A;
enum GL_OPERAND0_RGB_EXT = 0x8590;
enum GL_OPERAND1_RGB_EXT = 0x8591;
enum GL_OPERAND2_RGB_EXT = 0x8592;
enum GL_OPERAND0_ALPHA_EXT = 0x8598;
enum GL_OPERAND1_ALPHA_EXT = 0x8599;
enum GL_OPERAND2_ALPHA_EXT = 0x859A;
/* GL_EXT_texture_env_combine */

enum GL_EXT_texture_env_dot3 = 1;
enum GL_DOT3_RGB_EXT = 0x8740;
enum GL_DOT3_RGBA_EXT = 0x8741;
/* GL_EXT_texture_env_dot3 */

enum GL_EXT_texture_filter_anisotropic = 1;
enum GL_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE;
enum GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;
/* GL_EXT_texture_filter_anisotropic */

enum GL_EXT_texture_integer = 1;
enum GL_RGBA32UI_EXT = 0x8D70;
enum GL_RGB32UI_EXT = 0x8D71;
enum GL_ALPHA32UI_EXT = 0x8D72;
enum GL_INTENSITY32UI_EXT = 0x8D73;
enum GL_LUMINANCE32UI_EXT = 0x8D74;
enum GL_LUMINANCE_ALPHA32UI_EXT = 0x8D75;
enum GL_RGBA16UI_EXT = 0x8D76;
enum GL_RGB16UI_EXT = 0x8D77;
enum GL_ALPHA16UI_EXT = 0x8D78;
enum GL_INTENSITY16UI_EXT = 0x8D79;
enum GL_LUMINANCE16UI_EXT = 0x8D7A;
enum GL_LUMINANCE_ALPHA16UI_EXT = 0x8D7B;
enum GL_RGBA8UI_EXT = 0x8D7C;
enum GL_RGB8UI_EXT = 0x8D7D;
enum GL_ALPHA8UI_EXT = 0x8D7E;
enum GL_INTENSITY8UI_EXT = 0x8D7F;
enum GL_LUMINANCE8UI_EXT = 0x8D80;
enum GL_LUMINANCE_ALPHA8UI_EXT = 0x8D81;
enum GL_RGBA32I_EXT = 0x8D82;
enum GL_RGB32I_EXT = 0x8D83;
enum GL_ALPHA32I_EXT = 0x8D84;
enum GL_INTENSITY32I_EXT = 0x8D85;
enum GL_LUMINANCE32I_EXT = 0x8D86;
enum GL_LUMINANCE_ALPHA32I_EXT = 0x8D87;
enum GL_RGBA16I_EXT = 0x8D88;
enum GL_RGB16I_EXT = 0x8D89;
enum GL_ALPHA16I_EXT = 0x8D8A;
enum GL_INTENSITY16I_EXT = 0x8D8B;
enum GL_LUMINANCE16I_EXT = 0x8D8C;
enum GL_LUMINANCE_ALPHA16I_EXT = 0x8D8D;
enum GL_RGBA8I_EXT = 0x8D8E;
enum GL_RGB8I_EXT = 0x8D8F;
enum GL_ALPHA8I_EXT = 0x8D90;
enum GL_INTENSITY8I_EXT = 0x8D91;
enum GL_LUMINANCE8I_EXT = 0x8D92;
enum GL_LUMINANCE_ALPHA8I_EXT = 0x8D93;
enum GL_RED_INTEGER_EXT = 0x8D94;
enum GL_GREEN_INTEGER_EXT = 0x8D95;
enum GL_BLUE_INTEGER_EXT = 0x8D96;
enum GL_ALPHA_INTEGER_EXT = 0x8D97;
enum GL_RGB_INTEGER_EXT = 0x8D98;
enum GL_RGBA_INTEGER_EXT = 0x8D99;
enum GL_BGR_INTEGER_EXT = 0x8D9A;
enum GL_BGRA_INTEGER_EXT = 0x8D9B;
enum GL_LUMINANCE_INTEGER_EXT = 0x8D9C;
enum GL_LUMINANCE_ALPHA_INTEGER_EXT = 0x8D9D;
enum GL_RGBA_INTEGER_MODE_EXT = 0x8D9E;
alias PFNGLTEXPARAMETERIIVEXTPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLTEXPARAMETERIUIVEXTPROC = void function (GLenum target, GLenum pname, const(GLuint)* params);
alias PFNGLGETTEXPARAMETERIIVEXTPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETTEXPARAMETERIUIVEXTPROC = void function (GLenum target, GLenum pname, GLuint* params);
alias PFNGLCLEARCOLORIIEXTPROC = void function (GLint red, GLint green, GLint blue, GLint alpha);
alias PFNGLCLEARCOLORIUIEXTPROC = void function (GLuint red, GLuint green, GLuint blue, GLuint alpha);
void glTexParameterIivEXT (GLenum target, GLenum pname, const(GLint)* params);
void glTexParameterIuivEXT (GLenum target, GLenum pname, const(GLuint)* params);
void glGetTexParameterIivEXT (GLenum target, GLenum pname, GLint* params);
void glGetTexParameterIuivEXT (GLenum target, GLenum pname, GLuint* params);
void glClearColorIiEXT (GLint red, GLint green, GLint blue, GLint alpha);
void glClearColorIuiEXT (GLuint red, GLuint green, GLuint blue, GLuint alpha);

/* GL_EXT_texture_integer */

enum GL_EXT_texture_lod_bias = 1;
enum GL_MAX_TEXTURE_LOD_BIAS_EXT = 0x84FD;
enum GL_TEXTURE_FILTER_CONTROL_EXT = 0x8500;
enum GL_TEXTURE_LOD_BIAS_EXT = 0x8501;
/* GL_EXT_texture_lod_bias */

enum GL_EXT_texture_mirror_clamp = 1;
enum GL_MIRROR_CLAMP_EXT = 0x8742;
enum GL_MIRROR_CLAMP_TO_EDGE_EXT = 0x8743;
enum GL_MIRROR_CLAMP_TO_BORDER_EXT = 0x8912;
/* GL_EXT_texture_mirror_clamp */

enum GL_EXT_texture_object = 1;
enum GL_TEXTURE_PRIORITY_EXT = 0x8066;
enum GL_TEXTURE_RESIDENT_EXT = 0x8067;
enum GL_TEXTURE_1D_BINDING_EXT = 0x8068;
enum GL_TEXTURE_2D_BINDING_EXT = 0x8069;
enum GL_TEXTURE_3D_BINDING_EXT = 0x806A;
alias PFNGLARETEXTURESRESIDENTEXTPROC = ubyte function (GLsizei n, const(GLuint)* textures, GLboolean* residences);
alias PFNGLBINDTEXTUREEXTPROC = void function (GLenum target, GLuint texture);
alias PFNGLDELETETEXTURESEXTPROC = void function (GLsizei n, const(GLuint)* textures);
alias PFNGLGENTEXTURESEXTPROC = void function (GLsizei n, GLuint* textures);
alias PFNGLISTEXTUREEXTPROC = ubyte function (GLuint texture);
alias PFNGLPRIORITIZETEXTURESEXTPROC = void function (GLsizei n, const(GLuint)* textures, const(GLclampf)* priorities);
GLboolean glAreTexturesResidentEXT (GLsizei n, const(GLuint)* textures, GLboolean* residences);
void glBindTextureEXT (GLenum target, GLuint texture);
void glDeleteTexturesEXT (GLsizei n, const(GLuint)* textures);
void glGenTexturesEXT (GLsizei n, GLuint* textures);
GLboolean glIsTextureEXT (GLuint texture);
void glPrioritizeTexturesEXT (GLsizei n, const(GLuint)* textures, const(GLclampf)* priorities);

/* GL_EXT_texture_object */

enum GL_EXT_texture_perturb_normal = 1;
enum GL_PERTURB_EXT = 0x85AE;
enum GL_TEXTURE_NORMAL_EXT = 0x85AF;
alias PFNGLTEXTURENORMALEXTPROC = void function (GLenum mode);
void glTextureNormalEXT (GLenum mode);

/* GL_EXT_texture_perturb_normal */

enum GL_EXT_texture_sRGB = 1;
enum GL_SRGB_EXT = 0x8C40;
enum GL_SRGB8_EXT = 0x8C41;
enum GL_SRGB_ALPHA_EXT = 0x8C42;
enum GL_SRGB8_ALPHA8_EXT = 0x8C43;
enum GL_SLUMINANCE_ALPHA_EXT = 0x8C44;
enum GL_SLUMINANCE8_ALPHA8_EXT = 0x8C45;
enum GL_SLUMINANCE_EXT = 0x8C46;
enum GL_SLUMINANCE8_EXT = 0x8C47;
enum GL_COMPRESSED_SRGB_EXT = 0x8C48;
enum GL_COMPRESSED_SRGB_ALPHA_EXT = 0x8C49;
enum GL_COMPRESSED_SLUMINANCE_EXT = 0x8C4A;
enum GL_COMPRESSED_SLUMINANCE_ALPHA_EXT = 0x8C4B;
enum GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = 0x8C4C;
enum GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = 0x8C4D;
enum GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = 0x8C4E;
enum GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = 0x8C4F;
/* GL_EXT_texture_sRGB */

enum GL_EXT_texture_sRGB_decode = 1;
enum GL_TEXTURE_SRGB_DECODE_EXT = 0x8A48;
enum GL_DECODE_EXT = 0x8A49;
enum GL_SKIP_DECODE_EXT = 0x8A4A;
/* GL_EXT_texture_sRGB_decode */

enum GL_EXT_texture_shared_exponent = 1;
enum GL_RGB9_E5_EXT = 0x8C3D;
enum GL_UNSIGNED_INT_5_9_9_9_REV_EXT = 0x8C3E;
enum GL_TEXTURE_SHARED_SIZE_EXT = 0x8C3F;
/* GL_EXT_texture_shared_exponent */

enum GL_EXT_texture_snorm = 1;
enum GL_ALPHA_SNORM = 0x9010;
enum GL_LUMINANCE_SNORM = 0x9011;
enum GL_LUMINANCE_ALPHA_SNORM = 0x9012;
enum GL_INTENSITY_SNORM = 0x9013;
enum GL_ALPHA8_SNORM = 0x9014;
enum GL_LUMINANCE8_SNORM = 0x9015;
enum GL_LUMINANCE8_ALPHA8_SNORM = 0x9016;
enum GL_INTENSITY8_SNORM = 0x9017;
enum GL_ALPHA16_SNORM = 0x9018;
enum GL_LUMINANCE16_SNORM = 0x9019;
enum GL_LUMINANCE16_ALPHA16_SNORM = 0x901A;
enum GL_INTENSITY16_SNORM = 0x901B;
enum GL_RED_SNORM = 0x8F90;
enum GL_RG_SNORM = 0x8F91;
enum GL_RGB_SNORM = 0x8F92;
enum GL_RGBA_SNORM = 0x8F93;
/* GL_EXT_texture_snorm */

enum GL_EXT_texture_swizzle = 1;
enum GL_TEXTURE_SWIZZLE_R_EXT = 0x8E42;
enum GL_TEXTURE_SWIZZLE_G_EXT = 0x8E43;
enum GL_TEXTURE_SWIZZLE_B_EXT = 0x8E44;
enum GL_TEXTURE_SWIZZLE_A_EXT = 0x8E45;
enum GL_TEXTURE_SWIZZLE_RGBA_EXT = 0x8E46;
/* GL_EXT_texture_swizzle */

enum GL_EXT_timer_query = 1;
enum GL_TIME_ELAPSED_EXT = 0x88BF;
alias PFNGLGETQUERYOBJECTI64VEXTPROC = void function (GLuint id, GLenum pname, GLint64* params);
alias PFNGLGETQUERYOBJECTUI64VEXTPROC = void function (GLuint id, GLenum pname, GLuint64* params);
void glGetQueryObjecti64vEXT (GLuint id, GLenum pname, GLint64* params);
void glGetQueryObjectui64vEXT (GLuint id, GLenum pname, GLuint64* params);

/* GL_EXT_timer_query */

enum GL_EXT_transform_feedback = 1;
enum GL_TRANSFORM_FEEDBACK_BUFFER_EXT = 0x8C8E;
enum GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT = 0x8C84;
enum GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT = 0x8C85;
enum GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT = 0x8C8F;
enum GL_INTERLEAVED_ATTRIBS_EXT = 0x8C8C;
enum GL_SEPARATE_ATTRIBS_EXT = 0x8C8D;
enum GL_PRIMITIVES_GENERATED_EXT = 0x8C87;
enum GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT = 0x8C88;
enum GL_RASTERIZER_DISCARD_EXT = 0x8C89;
enum GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = 0x8C8A;
enum GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT = 0x8C8B;
enum GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT = 0x8C80;
enum GL_TRANSFORM_FEEDBACK_VARYINGS_EXT = 0x8C83;
enum GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT = 0x8C7F;
enum GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT = 0x8C76;
alias PFNGLBEGINTRANSFORMFEEDBACKEXTPROC = void function (GLenum primitiveMode);
alias PFNGLENDTRANSFORMFEEDBACKEXTPROC = void function ();
alias PFNGLBINDBUFFERRANGEEXTPROC = void function (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
alias PFNGLBINDBUFFEROFFSETEXTPROC = void function (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
alias PFNGLBINDBUFFERBASEEXTPROC = void function (GLenum target, GLuint index, GLuint buffer);
alias PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC = void function (GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode);
alias PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC = void function (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
void glBeginTransformFeedbackEXT (GLenum primitiveMode);
void glEndTransformFeedbackEXT ();
void glBindBufferRangeEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferOffsetEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferBaseEXT (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryingsEXT (GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode);
void glGetTransformFeedbackVaryingEXT (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);

/* GL_EXT_transform_feedback */

enum GL_EXT_vertex_array = 1;
enum GL_VERTEX_ARRAY_EXT = 0x8074;
enum GL_NORMAL_ARRAY_EXT = 0x8075;
enum GL_COLOR_ARRAY_EXT = 0x8076;
enum GL_INDEX_ARRAY_EXT = 0x8077;
enum GL_TEXTURE_COORD_ARRAY_EXT = 0x8078;
enum GL_EDGE_FLAG_ARRAY_EXT = 0x8079;
enum GL_VERTEX_ARRAY_SIZE_EXT = 0x807A;
enum GL_VERTEX_ARRAY_TYPE_EXT = 0x807B;
enum GL_VERTEX_ARRAY_STRIDE_EXT = 0x807C;
enum GL_VERTEX_ARRAY_COUNT_EXT = 0x807D;
enum GL_NORMAL_ARRAY_TYPE_EXT = 0x807E;
enum GL_NORMAL_ARRAY_STRIDE_EXT = 0x807F;
enum GL_NORMAL_ARRAY_COUNT_EXT = 0x8080;
enum GL_COLOR_ARRAY_SIZE_EXT = 0x8081;
enum GL_COLOR_ARRAY_TYPE_EXT = 0x8082;
enum GL_COLOR_ARRAY_STRIDE_EXT = 0x8083;
enum GL_COLOR_ARRAY_COUNT_EXT = 0x8084;
enum GL_INDEX_ARRAY_TYPE_EXT = 0x8085;
enum GL_INDEX_ARRAY_STRIDE_EXT = 0x8086;
enum GL_INDEX_ARRAY_COUNT_EXT = 0x8087;
enum GL_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088;
enum GL_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089;
enum GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A;
enum GL_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808B;
enum GL_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808C;
enum GL_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808D;
enum GL_VERTEX_ARRAY_POINTER_EXT = 0x808E;
enum GL_NORMAL_ARRAY_POINTER_EXT = 0x808F;
enum GL_COLOR_ARRAY_POINTER_EXT = 0x8090;
enum GL_INDEX_ARRAY_POINTER_EXT = 0x8091;
enum GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092;
enum GL_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093;
alias PFNGLARRAYELEMENTEXTPROC = void function (GLint i);
alias PFNGLCOLORPOINTEREXTPROC = void function (GLint size, GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
alias PFNGLDRAWARRAYSEXTPROC = void function (GLenum mode, GLint first, GLsizei count);
alias PFNGLEDGEFLAGPOINTEREXTPROC = void function (GLsizei stride, GLsizei count, const(GLboolean)* pointer);
alias PFNGLGETPOINTERVEXTPROC = void function (GLenum pname, void** params);
alias PFNGLINDEXPOINTEREXTPROC = void function (GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
alias PFNGLNORMALPOINTEREXTPROC = void function (GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
alias PFNGLTEXCOORDPOINTEREXTPROC = void function (GLint size, GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
alias PFNGLVERTEXPOINTEREXTPROC = void function (GLint size, GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
void glArrayElementEXT (GLint i);
void glColorPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
void glDrawArraysEXT (GLenum mode, GLint first, GLsizei count);
void glEdgeFlagPointerEXT (GLsizei stride, GLsizei count, const(GLboolean)* pointer);
void glGetPointervEXT (GLenum pname, void** params);
void glIndexPointerEXT (GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
void glNormalPointerEXT (GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
void glTexCoordPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);
void glVertexPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const(void)* pointer);

/* GL_EXT_vertex_array */

enum GL_EXT_vertex_array_bgra = 1;
/* GL_EXT_vertex_array_bgra */

enum GL_EXT_vertex_attrib_64bit = 1;
enum GL_DOUBLE_VEC2_EXT = 0x8FFC;
enum GL_DOUBLE_VEC3_EXT = 0x8FFD;
enum GL_DOUBLE_VEC4_EXT = 0x8FFE;
enum GL_DOUBLE_MAT2_EXT = 0x8F46;
enum GL_DOUBLE_MAT3_EXT = 0x8F47;
enum GL_DOUBLE_MAT4_EXT = 0x8F48;
enum GL_DOUBLE_MAT2x3_EXT = 0x8F49;
enum GL_DOUBLE_MAT2x4_EXT = 0x8F4A;
enum GL_DOUBLE_MAT3x2_EXT = 0x8F4B;
enum GL_DOUBLE_MAT3x4_EXT = 0x8F4C;
enum GL_DOUBLE_MAT4x2_EXT = 0x8F4D;
enum GL_DOUBLE_MAT4x3_EXT = 0x8F4E;
alias PFNGLVERTEXATTRIBL1DEXTPROC = void function (GLuint index, GLdouble x);
alias PFNGLVERTEXATTRIBL2DEXTPROC = void function (GLuint index, GLdouble x, GLdouble y);
alias PFNGLVERTEXATTRIBL3DEXTPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLVERTEXATTRIBL4DEXTPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLVERTEXATTRIBL1DVEXTPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBL2DVEXTPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBL3DVEXTPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBL4DVEXTPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBLPOINTEREXTPROC = void function (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLGETVERTEXATTRIBLDVEXTPROC = void function (GLuint index, GLenum pname, GLdouble* params);
void glVertexAttribL1dEXT (GLuint index, GLdouble x);
void glVertexAttribL2dEXT (GLuint index, GLdouble x, GLdouble y);
void glVertexAttribL3dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttribL4dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttribL1dvEXT (GLuint index, const(GLdouble)* v);
void glVertexAttribL2dvEXT (GLuint index, const(GLdouble)* v);
void glVertexAttribL3dvEXT (GLuint index, const(GLdouble)* v);
void glVertexAttribL4dvEXT (GLuint index, const(GLdouble)* v);
void glVertexAttribLPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glGetVertexAttribLdvEXT (GLuint index, GLenum pname, GLdouble* params);

/* GL_EXT_vertex_attrib_64bit */

enum GL_EXT_vertex_shader = 1;
enum GL_VERTEX_SHADER_EXT = 0x8780;
enum GL_VERTEX_SHADER_BINDING_EXT = 0x8781;
enum GL_OP_INDEX_EXT = 0x8782;
enum GL_OP_NEGATE_EXT = 0x8783;
enum GL_OP_DOT3_EXT = 0x8784;
enum GL_OP_DOT4_EXT = 0x8785;
enum GL_OP_MUL_EXT = 0x8786;
enum GL_OP_ADD_EXT = 0x8787;
enum GL_OP_MADD_EXT = 0x8788;
enum GL_OP_FRAC_EXT = 0x8789;
enum GL_OP_MAX_EXT = 0x878A;
enum GL_OP_MIN_EXT = 0x878B;
enum GL_OP_SET_GE_EXT = 0x878C;
enum GL_OP_SET_LT_EXT = 0x878D;
enum GL_OP_CLAMP_EXT = 0x878E;
enum GL_OP_FLOOR_EXT = 0x878F;
enum GL_OP_ROUND_EXT = 0x8790;
enum GL_OP_EXP_BASE_2_EXT = 0x8791;
enum GL_OP_LOG_BASE_2_EXT = 0x8792;
enum GL_OP_POWER_EXT = 0x8793;
enum GL_OP_RECIP_EXT = 0x8794;
enum GL_OP_RECIP_SQRT_EXT = 0x8795;
enum GL_OP_SUB_EXT = 0x8796;
enum GL_OP_CROSS_PRODUCT_EXT = 0x8797;
enum GL_OP_MULTIPLY_MATRIX_EXT = 0x8798;
enum GL_OP_MOV_EXT = 0x8799;
enum GL_OUTPUT_VERTEX_EXT = 0x879A;
enum GL_OUTPUT_COLOR0_EXT = 0x879B;
enum GL_OUTPUT_COLOR1_EXT = 0x879C;
enum GL_OUTPUT_TEXTURE_COORD0_EXT = 0x879D;
enum GL_OUTPUT_TEXTURE_COORD1_EXT = 0x879E;
enum GL_OUTPUT_TEXTURE_COORD2_EXT = 0x879F;
enum GL_OUTPUT_TEXTURE_COORD3_EXT = 0x87A0;
enum GL_OUTPUT_TEXTURE_COORD4_EXT = 0x87A1;
enum GL_OUTPUT_TEXTURE_COORD5_EXT = 0x87A2;
enum GL_OUTPUT_TEXTURE_COORD6_EXT = 0x87A3;
enum GL_OUTPUT_TEXTURE_COORD7_EXT = 0x87A4;
enum GL_OUTPUT_TEXTURE_COORD8_EXT = 0x87A5;
enum GL_OUTPUT_TEXTURE_COORD9_EXT = 0x87A6;
enum GL_OUTPUT_TEXTURE_COORD10_EXT = 0x87A7;
enum GL_OUTPUT_TEXTURE_COORD11_EXT = 0x87A8;
enum GL_OUTPUT_TEXTURE_COORD12_EXT = 0x87A9;
enum GL_OUTPUT_TEXTURE_COORD13_EXT = 0x87AA;
enum GL_OUTPUT_TEXTURE_COORD14_EXT = 0x87AB;
enum GL_OUTPUT_TEXTURE_COORD15_EXT = 0x87AC;
enum GL_OUTPUT_TEXTURE_COORD16_EXT = 0x87AD;
enum GL_OUTPUT_TEXTURE_COORD17_EXT = 0x87AE;
enum GL_OUTPUT_TEXTURE_COORD18_EXT = 0x87AF;
enum GL_OUTPUT_TEXTURE_COORD19_EXT = 0x87B0;
enum GL_OUTPUT_TEXTURE_COORD20_EXT = 0x87B1;
enum GL_OUTPUT_TEXTURE_COORD21_EXT = 0x87B2;
enum GL_OUTPUT_TEXTURE_COORD22_EXT = 0x87B3;
enum GL_OUTPUT_TEXTURE_COORD23_EXT = 0x87B4;
enum GL_OUTPUT_TEXTURE_COORD24_EXT = 0x87B5;
enum GL_OUTPUT_TEXTURE_COORD25_EXT = 0x87B6;
enum GL_OUTPUT_TEXTURE_COORD26_EXT = 0x87B7;
enum GL_OUTPUT_TEXTURE_COORD27_EXT = 0x87B8;
enum GL_OUTPUT_TEXTURE_COORD28_EXT = 0x87B9;
enum GL_OUTPUT_TEXTURE_COORD29_EXT = 0x87BA;
enum GL_OUTPUT_TEXTURE_COORD30_EXT = 0x87BB;
enum GL_OUTPUT_TEXTURE_COORD31_EXT = 0x87BC;
enum GL_OUTPUT_FOG_EXT = 0x87BD;
enum GL_SCALAR_EXT = 0x87BE;
enum GL_VECTOR_EXT = 0x87BF;
enum GL_MATRIX_EXT = 0x87C0;
enum GL_VARIANT_EXT = 0x87C1;
enum GL_INVARIANT_EXT = 0x87C2;
enum GL_LOCAL_CONSTANT_EXT = 0x87C3;
enum GL_LOCAL_EXT = 0x87C4;
enum GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87C5;
enum GL_MAX_VERTEX_SHADER_VARIANTS_EXT = 0x87C6;
enum GL_MAX_VERTEX_SHADER_INVARIANTS_EXT = 0x87C7;
enum GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87C8;
enum GL_MAX_VERTEX_SHADER_LOCALS_EXT = 0x87C9;
enum GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CA;
enum GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 0x87CB;
enum GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87CC;
enum GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = 0x87CD;
enum GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 0x87CE;
enum GL_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CF;
enum GL_VERTEX_SHADER_VARIANTS_EXT = 0x87D0;
enum GL_VERTEX_SHADER_INVARIANTS_EXT = 0x87D1;
enum GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87D2;
enum GL_VERTEX_SHADER_LOCALS_EXT = 0x87D3;
enum GL_VERTEX_SHADER_OPTIMIZED_EXT = 0x87D4;
enum GL_X_EXT = 0x87D5;
enum GL_Y_EXT = 0x87D6;
enum GL_Z_EXT = 0x87D7;
enum GL_W_EXT = 0x87D8;
enum GL_NEGATIVE_X_EXT = 0x87D9;
enum GL_NEGATIVE_Y_EXT = 0x87DA;
enum GL_NEGATIVE_Z_EXT = 0x87DB;
enum GL_NEGATIVE_W_EXT = 0x87DC;
enum GL_ZERO_EXT = 0x87DD;
enum GL_ONE_EXT = 0x87DE;
enum GL_NEGATIVE_ONE_EXT = 0x87DF;
enum GL_NORMALIZED_RANGE_EXT = 0x87E0;
enum GL_FULL_RANGE_EXT = 0x87E1;
enum GL_CURRENT_VERTEX_EXT = 0x87E2;
enum GL_MVP_MATRIX_EXT = 0x87E3;
enum GL_VARIANT_VALUE_EXT = 0x87E4;
enum GL_VARIANT_DATATYPE_EXT = 0x87E5;
enum GL_VARIANT_ARRAY_STRIDE_EXT = 0x87E6;
enum GL_VARIANT_ARRAY_TYPE_EXT = 0x87E7;
enum GL_VARIANT_ARRAY_EXT = 0x87E8;
enum GL_VARIANT_ARRAY_POINTER_EXT = 0x87E9;
enum GL_INVARIANT_VALUE_EXT = 0x87EA;
enum GL_INVARIANT_DATATYPE_EXT = 0x87EB;
enum GL_LOCAL_CONSTANT_VALUE_EXT = 0x87EC;
enum GL_LOCAL_CONSTANT_DATATYPE_EXT = 0x87ED;
alias PFNGLBEGINVERTEXSHADEREXTPROC = void function ();
alias PFNGLENDVERTEXSHADEREXTPROC = void function ();
alias PFNGLBINDVERTEXSHADEREXTPROC = void function (GLuint id);
alias PFNGLGENVERTEXSHADERSEXTPROC = uint function (GLuint range);
alias PFNGLDELETEVERTEXSHADEREXTPROC = void function (GLuint id);
alias PFNGLSHADEROP1EXTPROC = void function (GLenum op, GLuint res, GLuint arg1);
alias PFNGLSHADEROP2EXTPROC = void function (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
alias PFNGLSHADEROP3EXTPROC = void function (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
alias PFNGLSWIZZLEEXTPROC = void function (GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
alias PFNGLWRITEMASKEXTPROC = void function (GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
alias PFNGLINSERTCOMPONENTEXTPROC = void function (GLuint res, GLuint src, GLuint num);
alias PFNGLEXTRACTCOMPONENTEXTPROC = void function (GLuint res, GLuint src, GLuint num);
alias PFNGLGENSYMBOLSEXTPROC = uint function (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
alias PFNGLSETINVARIANTEXTPROC = void function (GLuint id, GLenum type, const(void)* addr);
alias PFNGLSETLOCALCONSTANTEXTPROC = void function (GLuint id, GLenum type, const(void)* addr);
alias PFNGLVARIANTBVEXTPROC = void function (GLuint id, const(GLbyte)* addr);
alias PFNGLVARIANTSVEXTPROC = void function (GLuint id, const(GLshort)* addr);
alias PFNGLVARIANTIVEXTPROC = void function (GLuint id, const(GLint)* addr);
alias PFNGLVARIANTFVEXTPROC = void function (GLuint id, const(GLfloat)* addr);
alias PFNGLVARIANTDVEXTPROC = void function (GLuint id, const(GLdouble)* addr);
alias PFNGLVARIANTUBVEXTPROC = void function (GLuint id, const(GLubyte)* addr);
alias PFNGLVARIANTUSVEXTPROC = void function (GLuint id, const(GLushort)* addr);
alias PFNGLVARIANTUIVEXTPROC = void function (GLuint id, const(GLuint)* addr);
alias PFNGLVARIANTPOINTEREXTPROC = void function (GLuint id, GLenum type, GLuint stride, const(void)* addr);
alias PFNGLENABLEVARIANTCLIENTSTATEEXTPROC = void function (GLuint id);
alias PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC = void function (GLuint id);
alias PFNGLBINDLIGHTPARAMETEREXTPROC = uint function (GLenum light, GLenum value);
alias PFNGLBINDMATERIALPARAMETEREXTPROC = uint function (GLenum face, GLenum value);
alias PFNGLBINDTEXGENPARAMETEREXTPROC = uint function (GLenum unit, GLenum coord, GLenum value);
alias PFNGLBINDTEXTUREUNITPARAMETEREXTPROC = uint function (GLenum unit, GLenum value);
alias PFNGLBINDPARAMETEREXTPROC = uint function (GLenum value);
alias PFNGLISVARIANTENABLEDEXTPROC = ubyte function (GLuint id, GLenum cap);
alias PFNGLGETVARIANTBOOLEANVEXTPROC = void function (GLuint id, GLenum value, GLboolean* data);
alias PFNGLGETVARIANTINTEGERVEXTPROC = void function (GLuint id, GLenum value, GLint* data);
alias PFNGLGETVARIANTFLOATVEXTPROC = void function (GLuint id, GLenum value, GLfloat* data);
alias PFNGLGETVARIANTPOINTERVEXTPROC = void function (GLuint id, GLenum value, void** data);
alias PFNGLGETINVARIANTBOOLEANVEXTPROC = void function (GLuint id, GLenum value, GLboolean* data);
alias PFNGLGETINVARIANTINTEGERVEXTPROC = void function (GLuint id, GLenum value, GLint* data);
alias PFNGLGETINVARIANTFLOATVEXTPROC = void function (GLuint id, GLenum value, GLfloat* data);
alias PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC = void function (GLuint id, GLenum value, GLboolean* data);
alias PFNGLGETLOCALCONSTANTINTEGERVEXTPROC = void function (GLuint id, GLenum value, GLint* data);
alias PFNGLGETLOCALCONSTANTFLOATVEXTPROC = void function (GLuint id, GLenum value, GLfloat* data);
void glBeginVertexShaderEXT ();
void glEndVertexShaderEXT ();
void glBindVertexShaderEXT (GLuint id);
GLuint glGenVertexShadersEXT (GLuint range);
void glDeleteVertexShaderEXT (GLuint id);
void glShaderOp1EXT (GLenum op, GLuint res, GLuint arg1);
void glShaderOp2EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
void glShaderOp3EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
void glSwizzleEXT (GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
void glWriteMaskEXT (GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
void glInsertComponentEXT (GLuint res, GLuint src, GLuint num);
void glExtractComponentEXT (GLuint res, GLuint src, GLuint num);
GLuint glGenSymbolsEXT (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
void glSetInvariantEXT (GLuint id, GLenum type, const(void)* addr);
void glSetLocalConstantEXT (GLuint id, GLenum type, const(void)* addr);
void glVariantbvEXT (GLuint id, const(GLbyte)* addr);
void glVariantsvEXT (GLuint id, const(GLshort)* addr);
void glVariantivEXT (GLuint id, const(GLint)* addr);
void glVariantfvEXT (GLuint id, const(GLfloat)* addr);
void glVariantdvEXT (GLuint id, const(GLdouble)* addr);
void glVariantubvEXT (GLuint id, const(GLubyte)* addr);
void glVariantusvEXT (GLuint id, const(GLushort)* addr);
void glVariantuivEXT (GLuint id, const(GLuint)* addr);
void glVariantPointerEXT (GLuint id, GLenum type, GLuint stride, const(void)* addr);
void glEnableVariantClientStateEXT (GLuint id);
void glDisableVariantClientStateEXT (GLuint id);
GLuint glBindLightParameterEXT (GLenum light, GLenum value);
GLuint glBindMaterialParameterEXT (GLenum face, GLenum value);
GLuint glBindTexGenParameterEXT (GLenum unit, GLenum coord, GLenum value);
GLuint glBindTextureUnitParameterEXT (GLenum unit, GLenum value);
GLuint glBindParameterEXT (GLenum value);
GLboolean glIsVariantEnabledEXT (GLuint id, GLenum cap);
void glGetVariantBooleanvEXT (GLuint id, GLenum value, GLboolean* data);
void glGetVariantIntegervEXT (GLuint id, GLenum value, GLint* data);
void glGetVariantFloatvEXT (GLuint id, GLenum value, GLfloat* data);
void glGetVariantPointervEXT (GLuint id, GLenum value, void** data);
void glGetInvariantBooleanvEXT (GLuint id, GLenum value, GLboolean* data);
void glGetInvariantIntegervEXT (GLuint id, GLenum value, GLint* data);
void glGetInvariantFloatvEXT (GLuint id, GLenum value, GLfloat* data);
void glGetLocalConstantBooleanvEXT (GLuint id, GLenum value, GLboolean* data);
void glGetLocalConstantIntegervEXT (GLuint id, GLenum value, GLint* data);
void glGetLocalConstantFloatvEXT (GLuint id, GLenum value, GLfloat* data);

/* GL_EXT_vertex_shader */

enum GL_EXT_vertex_weighting = 1;
enum GL_MODELVIEW0_STACK_DEPTH_EXT = 0x0BA3;
enum GL_MODELVIEW1_STACK_DEPTH_EXT = 0x8502;
enum GL_MODELVIEW0_MATRIX_EXT = 0x0BA6;
enum GL_MODELVIEW1_MATRIX_EXT = 0x8506;
enum GL_VERTEX_WEIGHTING_EXT = 0x8509;
enum GL_MODELVIEW0_EXT = 0x1700;
enum GL_MODELVIEW1_EXT = 0x850A;
enum GL_CURRENT_VERTEX_WEIGHT_EXT = 0x850B;
enum GL_VERTEX_WEIGHT_ARRAY_EXT = 0x850C;
enum GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT = 0x850D;
enum GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT = 0x850E;
enum GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = 0x850F;
enum GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510;
alias PFNGLVERTEXWEIGHTFEXTPROC = void function (GLfloat weight);
alias PFNGLVERTEXWEIGHTFVEXTPROC = void function (const(GLfloat)* weight);
alias PFNGLVERTEXWEIGHTPOINTEREXTPROC = void function (GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glVertexWeightfEXT (GLfloat weight);
void glVertexWeightfvEXT (const(GLfloat)* weight);
void glVertexWeightPointerEXT (GLint size, GLenum type, GLsizei stride, const(void)* pointer);

/* GL_EXT_vertex_weighting */

enum GL_EXT_x11_sync_object = 1;
enum GL_SYNC_X11_FENCE_EXT = 0x90E1;
alias PFNGLIMPORTSYNCEXTPROC = __GLsync* function (GLenum external_sync_type, GLintptr external_sync, GLbitfield flags);
GLsync glImportSyncEXT (GLenum external_sync_type, GLintptr external_sync, GLbitfield flags);

/* GL_EXT_x11_sync_object */

enum GL_GREMEDY_frame_terminator = 1;
alias PFNGLFRAMETERMINATORGREMEDYPROC = void function ();
void glFrameTerminatorGREMEDY ();

/* GL_GREMEDY_frame_terminator */

enum GL_GREMEDY_string_marker = 1;
alias PFNGLSTRINGMARKERGREMEDYPROC = void function (GLsizei len, const(void)* string);
void glStringMarkerGREMEDY (GLsizei len, const(void)* string);

/* GL_GREMEDY_string_marker */

enum GL_HP_convolution_border_modes = 1;
enum GL_IGNORE_BORDER_HP = 0x8150;
enum GL_CONSTANT_BORDER_HP = 0x8151;
enum GL_REPLICATE_BORDER_HP = 0x8153;
enum GL_CONVOLUTION_BORDER_COLOR_HP = 0x8154;
/* GL_HP_convolution_border_modes */

enum GL_HP_image_transform = 1;
enum GL_IMAGE_SCALE_X_HP = 0x8155;
enum GL_IMAGE_SCALE_Y_HP = 0x8156;
enum GL_IMAGE_TRANSLATE_X_HP = 0x8157;
enum GL_IMAGE_TRANSLATE_Y_HP = 0x8158;
enum GL_IMAGE_ROTATE_ANGLE_HP = 0x8159;
enum GL_IMAGE_ROTATE_ORIGIN_X_HP = 0x815A;
enum GL_IMAGE_ROTATE_ORIGIN_Y_HP = 0x815B;
enum GL_IMAGE_MAG_FILTER_HP = 0x815C;
enum GL_IMAGE_MIN_FILTER_HP = 0x815D;
enum GL_IMAGE_CUBIC_WEIGHT_HP = 0x815E;
enum GL_CUBIC_HP = 0x815F;
enum GL_AVERAGE_HP = 0x8160;
enum GL_IMAGE_TRANSFORM_2D_HP = 0x8161;
enum GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8162;
enum GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8163;
alias PFNGLIMAGETRANSFORMPARAMETERIHPPROC = void function (GLenum target, GLenum pname, GLint param);
alias PFNGLIMAGETRANSFORMPARAMETERFHPPROC = void function (GLenum target, GLenum pname, GLfloat param);
alias PFNGLIMAGETRANSFORMPARAMETERIVHPPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLIMAGETRANSFORMPARAMETERFVHPPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC = void function (GLenum target, GLenum pname, GLfloat* params);
void glImageTransformParameteriHP (GLenum target, GLenum pname, GLint param);
void glImageTransformParameterfHP (GLenum target, GLenum pname, GLfloat param);
void glImageTransformParameterivHP (GLenum target, GLenum pname, const(GLint)* params);
void glImageTransformParameterfvHP (GLenum target, GLenum pname, const(GLfloat)* params);
void glGetImageTransformParameterivHP (GLenum target, GLenum pname, GLint* params);
void glGetImageTransformParameterfvHP (GLenum target, GLenum pname, GLfloat* params);

/* GL_HP_image_transform */

enum GL_HP_occlusion_test = 1;
enum GL_OCCLUSION_TEST_HP = 0x8165;
enum GL_OCCLUSION_TEST_RESULT_HP = 0x8166;
/* GL_HP_occlusion_test */

enum GL_HP_texture_lighting = 1;
enum GL_TEXTURE_LIGHTING_MODE_HP = 0x8167;
enum GL_TEXTURE_POST_SPECULAR_HP = 0x8168;
enum GL_TEXTURE_PRE_SPECULAR_HP = 0x8169;
/* GL_HP_texture_lighting */

enum GL_IBM_cull_vertex = 1;
enum GL_CULL_VERTEX_IBM = 103050;
/* GL_IBM_cull_vertex */

enum GL_IBM_multimode_draw_arrays = 1;
alias PFNGLMULTIMODEDRAWARRAYSIBMPROC = void function (const(GLenum)* mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount, GLint modestride);
alias PFNGLMULTIMODEDRAWELEMENTSIBMPROC = void function (const(GLenum)* mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei primcount, GLint modestride);
void glMultiModeDrawArraysIBM (const(GLenum)* mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount, GLint modestride);
void glMultiModeDrawElementsIBM (const(GLenum)* mode, const(GLsizei)* count, GLenum type, const(void*)* indices, GLsizei primcount, GLint modestride);

/* GL_IBM_multimode_draw_arrays */

enum GL_IBM_rasterpos_clip = 1;
enum GL_RASTER_POSITION_UNCLIPPED_IBM = 0x19262;
/* GL_IBM_rasterpos_clip */

enum GL_IBM_static_data = 1;
enum GL_ALL_STATIC_DATA_IBM = 103060;
enum GL_STATIC_VERTEX_ARRAY_IBM = 103061;
alias PFNGLFLUSHSTATICDATAIBMPROC = void function (GLenum target);
void glFlushStaticDataIBM (GLenum target);

/* GL_IBM_static_data */

enum GL_IBM_texture_mirrored_repeat = 1;
enum GL_MIRRORED_REPEAT_IBM = 0x8370;
/* GL_IBM_texture_mirrored_repeat */

enum GL_IBM_vertex_array_lists = 1;
enum GL_VERTEX_ARRAY_LIST_IBM = 103070;
enum GL_NORMAL_ARRAY_LIST_IBM = 103071;
enum GL_COLOR_ARRAY_LIST_IBM = 103072;
enum GL_INDEX_ARRAY_LIST_IBM = 103073;
enum GL_TEXTURE_COORD_ARRAY_LIST_IBM = 103074;
enum GL_EDGE_FLAG_ARRAY_LIST_IBM = 103075;
enum GL_FOG_COORDINATE_ARRAY_LIST_IBM = 103076;
enum GL_SECONDARY_COLOR_ARRAY_LIST_IBM = 103077;
enum GL_VERTEX_ARRAY_LIST_STRIDE_IBM = 103080;
enum GL_NORMAL_ARRAY_LIST_STRIDE_IBM = 103081;
enum GL_COLOR_ARRAY_LIST_STRIDE_IBM = 103082;
enum GL_INDEX_ARRAY_LIST_STRIDE_IBM = 103083;
enum GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = 103084;
enum GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = 103085;
enum GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = 103086;
enum GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = 103087;
alias PFNGLCOLORPOINTERLISTIBMPROC = void function (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
alias PFNGLSECONDARYCOLORPOINTERLISTIBMPROC = void function (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
alias PFNGLEDGEFLAGPOINTERLISTIBMPROC = void function (GLint stride, const(GLboolean*)* pointer, GLint ptrstride);
alias PFNGLFOGCOORDPOINTERLISTIBMPROC = void function (GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
alias PFNGLINDEXPOINTERLISTIBMPROC = void function (GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
alias PFNGLNORMALPOINTERLISTIBMPROC = void function (GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
alias PFNGLTEXCOORDPOINTERLISTIBMPROC = void function (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
alias PFNGLVERTEXPOINTERLISTIBMPROC = void function (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glColorPointerListIBM (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glSecondaryColorPointerListIBM (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glEdgeFlagPointerListIBM (GLint stride, const(GLboolean*)* pointer, GLint ptrstride);
void glFogCoordPointerListIBM (GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glIndexPointerListIBM (GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glNormalPointerListIBM (GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glTexCoordPointerListIBM (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);
void glVertexPointerListIBM (GLint size, GLenum type, GLint stride, const(void*)* pointer, GLint ptrstride);

/* GL_IBM_vertex_array_lists */

enum GL_INGR_blend_func_separate = 1;
alias PFNGLBLENDFUNCSEPARATEINGRPROC = void function (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
void glBlendFuncSeparateINGR (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);

/* GL_INGR_blend_func_separate */

enum GL_INGR_color_clamp = 1;
enum GL_RED_MIN_CLAMP_INGR = 0x8560;
enum GL_GREEN_MIN_CLAMP_INGR = 0x8561;
enum GL_BLUE_MIN_CLAMP_INGR = 0x8562;
enum GL_ALPHA_MIN_CLAMP_INGR = 0x8563;
enum GL_RED_MAX_CLAMP_INGR = 0x8564;
enum GL_GREEN_MAX_CLAMP_INGR = 0x8565;
enum GL_BLUE_MAX_CLAMP_INGR = 0x8566;
enum GL_ALPHA_MAX_CLAMP_INGR = 0x8567;
/* GL_INGR_color_clamp */

enum GL_INGR_interlace_read = 1;
enum GL_INTERLACE_READ_INGR = 0x8568;
/* GL_INGR_interlace_read */

enum GL_INTEL_fragment_shader_ordering = 1;
/* GL_INTEL_fragment_shader_ordering */

enum GL_INTEL_map_texture = 1;
enum GL_TEXTURE_MEMORY_LAYOUT_INTEL = 0x83FF;
enum GL_LAYOUT_DEFAULT_INTEL = 0;
enum GL_LAYOUT_LINEAR_INTEL = 1;
enum GL_LAYOUT_LINEAR_CPU_CACHED_INTEL = 2;
alias PFNGLSYNCTEXTUREINTELPROC = void function (GLuint texture);
alias PFNGLUNMAPTEXTURE2DINTELPROC = void function (GLuint texture, GLint level);
alias PFNGLMAPTEXTURE2DINTELPROC = void* function (GLuint texture, GLint level, GLbitfield access, GLint* stride, GLenum* layout);
void glSyncTextureINTEL (GLuint texture);
void glUnmapTexture2DINTEL (GLuint texture, GLint level);
void* glMapTexture2DINTEL (GLuint texture, GLint level, GLbitfield access, GLint* stride, GLenum* layout);

/* GL_INTEL_map_texture */

enum GL_INTEL_parallel_arrays = 1;
enum GL_PARALLEL_ARRAYS_INTEL = 0x83F4;
enum GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F5;
enum GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F6;
enum GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F7;
enum GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F8;
alias PFNGLVERTEXPOINTERVINTELPROC = void function (GLint size, GLenum type, const(void*)* pointer);
alias PFNGLNORMALPOINTERVINTELPROC = void function (GLenum type, const(void*)* pointer);
alias PFNGLCOLORPOINTERVINTELPROC = void function (GLint size, GLenum type, const(void*)* pointer);
alias PFNGLTEXCOORDPOINTERVINTELPROC = void function (GLint size, GLenum type, const(void*)* pointer);
void glVertexPointervINTEL (GLint size, GLenum type, const(void*)* pointer);
void glNormalPointervINTEL (GLenum type, const(void*)* pointer);
void glColorPointervINTEL (GLint size, GLenum type, const(void*)* pointer);
void glTexCoordPointervINTEL (GLint size, GLenum type, const(void*)* pointer);

/* GL_INTEL_parallel_arrays */

enum GL_INTEL_performance_query = 1;
enum GL_PERFQUERY_SINGLE_CONTEXT_INTEL = 0x00000000;
enum GL_PERFQUERY_GLOBAL_CONTEXT_INTEL = 0x00000001;
enum GL_PERFQUERY_WAIT_INTEL = 0x83FB;
enum GL_PERFQUERY_FLUSH_INTEL = 0x83FA;
enum GL_PERFQUERY_DONOT_FLUSH_INTEL = 0x83F9;
enum GL_PERFQUERY_COUNTER_EVENT_INTEL = 0x94F0;
enum GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL = 0x94F1;
enum GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL = 0x94F2;
enum GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL = 0x94F3;
enum GL_PERFQUERY_COUNTER_RAW_INTEL = 0x94F4;
enum GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL = 0x94F5;
enum GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL = 0x94F8;
enum GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL = 0x94F9;
enum GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL = 0x94FA;
enum GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL = 0x94FB;
enum GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL = 0x94FC;
enum GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL = 0x94FD;
enum GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL = 0x94FE;
enum GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL = 0x94FF;
enum GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL = 0x9500;
alias PFNGLBEGINPERFQUERYINTELPROC = void function (GLuint queryHandle);
alias PFNGLCREATEPERFQUERYINTELPROC = void function (GLuint queryId, GLuint* queryHandle);
alias PFNGLDELETEPERFQUERYINTELPROC = void function (GLuint queryHandle);
alias PFNGLENDPERFQUERYINTELPROC = void function (GLuint queryHandle);
alias PFNGLGETFIRSTPERFQUERYIDINTELPROC = void function (GLuint* queryId);
alias PFNGLGETNEXTPERFQUERYIDINTELPROC = void function (GLuint queryId, GLuint* nextQueryId);
alias PFNGLGETPERFCOUNTERINFOINTELPROC = void function (GLuint queryId, GLuint counterId, GLuint counterNameLength, GLchar* counterName, GLuint counterDescLength, GLchar* counterDesc, GLuint* counterOffset, GLuint* counterDataSize, GLuint* counterTypeEnum, GLuint* counterDataTypeEnum, GLuint64* rawCounterMaxValue);
alias PFNGLGETPERFQUERYDATAINTELPROC = void function (GLuint queryHandle, GLuint flags, GLsizei dataSize, GLvoid* data, GLuint* bytesWritten);
alias PFNGLGETPERFQUERYIDBYNAMEINTELPROC = void function (GLchar* queryName, GLuint* queryId);
alias PFNGLGETPERFQUERYINFOINTELPROC = void function (GLuint queryId, GLuint queryNameLength, GLchar* queryName, GLuint* dataSize, GLuint* noCounters, GLuint* noInstances, GLuint* capsMask);
void glBeginPerfQueryINTEL (GLuint queryHandle);
void glCreatePerfQueryINTEL (GLuint queryId, GLuint* queryHandle);
void glDeletePerfQueryINTEL (GLuint queryHandle);
void glEndPerfQueryINTEL (GLuint queryHandle);
void glGetFirstPerfQueryIdINTEL (GLuint* queryId);
void glGetNextPerfQueryIdINTEL (GLuint queryId, GLuint* nextQueryId);
void glGetPerfCounterInfoINTEL (GLuint queryId, GLuint counterId, GLuint counterNameLength, GLchar* counterName, GLuint counterDescLength, GLchar* counterDesc, GLuint* counterOffset, GLuint* counterDataSize, GLuint* counterTypeEnum, GLuint* counterDataTypeEnum, GLuint64* rawCounterMaxValue);
void glGetPerfQueryDataINTEL (GLuint queryHandle, GLuint flags, GLsizei dataSize, GLvoid* data, GLuint* bytesWritten);
void glGetPerfQueryIdByNameINTEL (GLchar* queryName, GLuint* queryId);
void glGetPerfQueryInfoINTEL (GLuint queryId, GLuint queryNameLength, GLchar* queryName, GLuint* dataSize, GLuint* noCounters, GLuint* noInstances, GLuint* capsMask);

/* GL_INTEL_performance_query */

enum GL_MESAX_texture_stack = 1;
enum GL_TEXTURE_1D_STACK_MESAX = 0x8759;
enum GL_TEXTURE_2D_STACK_MESAX = 0x875A;
enum GL_PROXY_TEXTURE_1D_STACK_MESAX = 0x875B;
enum GL_PROXY_TEXTURE_2D_STACK_MESAX = 0x875C;
enum GL_TEXTURE_1D_STACK_BINDING_MESAX = 0x875D;
enum GL_TEXTURE_2D_STACK_BINDING_MESAX = 0x875E;
/* GL_MESAX_texture_stack */

enum GL_MESA_pack_invert = 1;
enum GL_PACK_INVERT_MESA = 0x8758;
/* GL_MESA_pack_invert */

enum GL_MESA_resize_buffers = 1;
alias PFNGLRESIZEBUFFERSMESAPROC = void function ();
void glResizeBuffersMESA ();

/* GL_MESA_resize_buffers */

enum GL_MESA_window_pos = 1;
alias PFNGLWINDOWPOS2DMESAPROC = void function (GLdouble x, GLdouble y);
alias PFNGLWINDOWPOS2DVMESAPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS2FMESAPROC = void function (GLfloat x, GLfloat y);
alias PFNGLWINDOWPOS2FVMESAPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS2IMESAPROC = void function (GLint x, GLint y);
alias PFNGLWINDOWPOS2IVMESAPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS2SMESAPROC = void function (GLshort x, GLshort y);
alias PFNGLWINDOWPOS2SVMESAPROC = void function (const(GLshort)* v);
alias PFNGLWINDOWPOS3DMESAPROC = void function (GLdouble x, GLdouble y, GLdouble z);
alias PFNGLWINDOWPOS3DVMESAPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS3FMESAPROC = void function (GLfloat x, GLfloat y, GLfloat z);
alias PFNGLWINDOWPOS3FVMESAPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS3IMESAPROC = void function (GLint x, GLint y, GLint z);
alias PFNGLWINDOWPOS3IVMESAPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS3SMESAPROC = void function (GLshort x, GLshort y, GLshort z);
alias PFNGLWINDOWPOS3SVMESAPROC = void function (const(GLshort)* v);
alias PFNGLWINDOWPOS4DMESAPROC = void function (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLWINDOWPOS4DVMESAPROC = void function (const(GLdouble)* v);
alias PFNGLWINDOWPOS4FMESAPROC = void function (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLWINDOWPOS4FVMESAPROC = void function (const(GLfloat)* v);
alias PFNGLWINDOWPOS4IMESAPROC = void function (GLint x, GLint y, GLint z, GLint w);
alias PFNGLWINDOWPOS4IVMESAPROC = void function (const(GLint)* v);
alias PFNGLWINDOWPOS4SMESAPROC = void function (GLshort x, GLshort y, GLshort z, GLshort w);
alias PFNGLWINDOWPOS4SVMESAPROC = void function (const(GLshort)* v);
void glWindowPos2dMESA (GLdouble x, GLdouble y);
void glWindowPos2dvMESA (const(GLdouble)* v);
void glWindowPos2fMESA (GLfloat x, GLfloat y);
void glWindowPos2fvMESA (const(GLfloat)* v);
void glWindowPos2iMESA (GLint x, GLint y);
void glWindowPos2ivMESA (const(GLint)* v);
void glWindowPos2sMESA (GLshort x, GLshort y);
void glWindowPos2svMESA (const(GLshort)* v);
void glWindowPos3dMESA (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dvMESA (const(GLdouble)* v);
void glWindowPos3fMESA (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fvMESA (const(GLfloat)* v);
void glWindowPos3iMESA (GLint x, GLint y, GLint z);
void glWindowPos3ivMESA (const(GLint)* v);
void glWindowPos3sMESA (GLshort x, GLshort y, GLshort z);
void glWindowPos3svMESA (const(GLshort)* v);
void glWindowPos4dMESA (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glWindowPos4dvMESA (const(GLdouble)* v);
void glWindowPos4fMESA (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glWindowPos4fvMESA (const(GLfloat)* v);
void glWindowPos4iMESA (GLint x, GLint y, GLint z, GLint w);
void glWindowPos4ivMESA (const(GLint)* v);
void glWindowPos4sMESA (GLshort x, GLshort y, GLshort z, GLshort w);
void glWindowPos4svMESA (const(GLshort)* v);

/* GL_MESA_window_pos */

enum GL_MESA_ycbcr_texture = 1;
enum GL_UNSIGNED_SHORT_8_8_MESA = 0x85BA;
enum GL_UNSIGNED_SHORT_8_8_REV_MESA = 0x85BB;
enum GL_YCBCR_MESA = 0x8757;
/* GL_MESA_ycbcr_texture */

enum GL_NVX_conditional_render = 1;
alias PFNGLBEGINCONDITIONALRENDERNVXPROC = void function (GLuint id);
alias PFNGLENDCONDITIONALRENDERNVXPROC = void function ();
void glBeginConditionalRenderNVX (GLuint id);
void glEndConditionalRenderNVX ();

/* GL_NVX_conditional_render */

enum GL_NVX_gpu_memory_info = 1;
enum GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX = 0x9047;
enum GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX = 0x9048;
enum GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX = 0x9049;
enum GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX = 0x904A;
enum GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX = 0x904B;
/* GL_NVX_gpu_memory_info */

enum GL_NV_bindless_multi_draw_indirect = 1;
alias PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC = void function (GLenum mode, const(void)* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount);
alias PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC = void function (GLenum mode, GLenum type, const(void)* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount);
void glMultiDrawArraysIndirectBindlessNV (GLenum mode, const(void)* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount);
void glMultiDrawElementsIndirectBindlessNV (GLenum mode, GLenum type, const(void)* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount);

/* GL_NV_bindless_multi_draw_indirect */

enum GL_NV_bindless_texture = 1;
alias PFNGLGETTEXTUREHANDLENVPROC = c_ulong function (GLuint texture);
alias PFNGLGETTEXTURESAMPLERHANDLENVPROC = c_ulong function (GLuint texture, GLuint sampler);
alias PFNGLMAKETEXTUREHANDLERESIDENTNVPROC = void function (GLuint64 handle);
alias PFNGLMAKETEXTUREHANDLENONRESIDENTNVPROC = void function (GLuint64 handle);
alias PFNGLGETIMAGEHANDLENVPROC = c_ulong function (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
alias PFNGLMAKEIMAGEHANDLERESIDENTNVPROC = void function (GLuint64 handle, GLenum access);
alias PFNGLMAKEIMAGEHANDLENONRESIDENTNVPROC = void function (GLuint64 handle);
alias PFNGLUNIFORMHANDLEUI64NVPROC = void function (GLint location, GLuint64 value);
alias PFNGLUNIFORMHANDLEUI64VNVPROC = void function (GLint location, GLsizei count, const(GLuint64)* value);
alias PFNGLPROGRAMUNIFORMHANDLEUI64NVPROC = void function (GLuint program, GLint location, GLuint64 value);
alias PFNGLPROGRAMUNIFORMHANDLEUI64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64)* values);
alias PFNGLISTEXTUREHANDLERESIDENTNVPROC = ubyte function (GLuint64 handle);
alias PFNGLISIMAGEHANDLERESIDENTNVPROC = ubyte function (GLuint64 handle);
GLuint64 glGetTextureHandleNV (GLuint texture);
GLuint64 glGetTextureSamplerHandleNV (GLuint texture, GLuint sampler);
void glMakeTextureHandleResidentNV (GLuint64 handle);
void glMakeTextureHandleNonResidentNV (GLuint64 handle);
GLuint64 glGetImageHandleNV (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
void glMakeImageHandleResidentNV (GLuint64 handle, GLenum access);
void glMakeImageHandleNonResidentNV (GLuint64 handle);
void glUniformHandleui64NV (GLint location, GLuint64 value);
void glUniformHandleui64vNV (GLint location, GLsizei count, const(GLuint64)* value);
void glProgramUniformHandleui64NV (GLuint program, GLint location, GLuint64 value);
void glProgramUniformHandleui64vNV (GLuint program, GLint location, GLsizei count, const(GLuint64)* values);
GLboolean glIsTextureHandleResidentNV (GLuint64 handle);
GLboolean glIsImageHandleResidentNV (GLuint64 handle);

/* GL_NV_bindless_texture */

enum GL_NV_blend_equation_advanced = 1;
enum GL_BLEND_OVERLAP_NV = 0x9281;
enum GL_BLEND_PREMULTIPLIED_SRC_NV = 0x9280;
enum GL_BLUE_NV = 0x1905;
enum GL_COLORBURN_NV = 0x929A;
enum GL_COLORDODGE_NV = 0x9299;
enum GL_CONJOINT_NV = 0x9284;
enum GL_CONTRAST_NV = 0x92A1;
enum GL_DARKEN_NV = 0x9297;
enum GL_DIFFERENCE_NV = 0x929E;
enum GL_DISJOINT_NV = 0x9283;
enum GL_DST_ATOP_NV = 0x928F;
enum GL_DST_IN_NV = 0x928B;
enum GL_DST_NV = 0x9287;
enum GL_DST_OUT_NV = 0x928D;
enum GL_DST_OVER_NV = 0x9289;
enum GL_EXCLUSION_NV = 0x92A0;
enum GL_GREEN_NV = 0x1904;
enum GL_HARDLIGHT_NV = 0x929B;
enum GL_HARDMIX_NV = 0x92A9;
enum GL_HSL_COLOR_NV = 0x92AF;
enum GL_HSL_HUE_NV = 0x92AD;
enum GL_HSL_LUMINOSITY_NV = 0x92B0;
enum GL_HSL_SATURATION_NV = 0x92AE;
enum GL_INVERT_OVG_NV = 0x92B4;
enum GL_INVERT_RGB_NV = 0x92A3;
enum GL_LIGHTEN_NV = 0x9298;
enum GL_LINEARBURN_NV = 0x92A5;
enum GL_LINEARDODGE_NV = 0x92A4;
enum GL_LINEARLIGHT_NV = 0x92A7;
enum GL_MINUS_CLAMPED_NV = 0x92B3;
enum GL_MINUS_NV = 0x929F;
enum GL_MULTIPLY_NV = 0x9294;
enum GL_OVERLAY_NV = 0x9296;
enum GL_PINLIGHT_NV = 0x92A8;
enum GL_PLUS_CLAMPED_ALPHA_NV = 0x92B2;
enum GL_PLUS_CLAMPED_NV = 0x92B1;
enum GL_PLUS_DARKER_NV = 0x9292;
enum GL_PLUS_NV = 0x9291;
enum GL_RED_NV = 0x1903;
enum GL_SCREEN_NV = 0x9295;
enum GL_SOFTLIGHT_NV = 0x929C;
enum GL_SRC_ATOP_NV = 0x928E;
enum GL_SRC_IN_NV = 0x928A;
enum GL_SRC_NV = 0x9286;
enum GL_SRC_OUT_NV = 0x928C;
enum GL_SRC_OVER_NV = 0x9288;
enum GL_UNCORRELATED_NV = 0x9282;
enum GL_VIVIDLIGHT_NV = 0x92A6;
enum GL_XOR_NV = 0x1506;
alias PFNGLBLENDPARAMETERINVPROC = void function (GLenum pname, GLint value);
alias PFNGLBLENDBARRIERNVPROC = void function ();
void glBlendParameteriNV (GLenum pname, GLint value);
void glBlendBarrierNV ();

/* GL_NV_blend_equation_advanced */

enum GL_NV_blend_equation_advanced_coherent = 1;
enum GL_BLEND_ADVANCED_COHERENT_NV = 0x9285;
/* GL_NV_blend_equation_advanced_coherent */

enum GL_NV_blend_square = 1;
/* GL_NV_blend_square */

enum GL_NV_compute_program5 = 1;
enum GL_COMPUTE_PROGRAM_NV = 0x90FB;
enum GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV = 0x90FC;
/* GL_NV_compute_program5 */

enum GL_NV_conditional_render = 1;
enum GL_QUERY_WAIT_NV = 0x8E13;
enum GL_QUERY_NO_WAIT_NV = 0x8E14;
enum GL_QUERY_BY_REGION_WAIT_NV = 0x8E15;
enum GL_QUERY_BY_REGION_NO_WAIT_NV = 0x8E16;
alias PFNGLBEGINCONDITIONALRENDERNVPROC = void function (GLuint id, GLenum mode);
alias PFNGLENDCONDITIONALRENDERNVPROC = void function ();
void glBeginConditionalRenderNV (GLuint id, GLenum mode);
void glEndConditionalRenderNV ();

/* GL_NV_conditional_render */

enum GL_NV_copy_depth_to_color = 1;
enum GL_DEPTH_STENCIL_TO_RGBA_NV = 0x886E;
enum GL_DEPTH_STENCIL_TO_BGRA_NV = 0x886F;
/* GL_NV_copy_depth_to_color */

enum GL_NV_copy_image = 1;
alias PFNGLCOPYIMAGESUBDATANVPROC = void function (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);
void glCopyImageSubDataNV (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);

/* GL_NV_copy_image */

enum GL_NV_deep_texture3D = 1;
enum GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV = 0x90D0;
enum GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV = 0x90D1;
/* GL_NV_deep_texture3D */

enum GL_NV_depth_buffer_float = 1;
enum GL_DEPTH_COMPONENT32F_NV = 0x8DAB;
enum GL_DEPTH32F_STENCIL8_NV = 0x8DAC;
enum GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = 0x8DAD;
enum GL_DEPTH_BUFFER_FLOAT_MODE_NV = 0x8DAF;
alias PFNGLDEPTHRANGEDNVPROC = void function (GLdouble zNear, GLdouble zFar);
alias PFNGLCLEARDEPTHDNVPROC = void function (GLdouble depth);
alias PFNGLDEPTHBOUNDSDNVPROC = void function (GLdouble zmin, GLdouble zmax);
void glDepthRangedNV (GLdouble zNear, GLdouble zFar);
void glClearDepthdNV (GLdouble depth);
void glDepthBoundsdNV (GLdouble zmin, GLdouble zmax);

/* GL_NV_depth_buffer_float */

enum GL_NV_depth_clamp = 1;
enum GL_DEPTH_CLAMP_NV = 0x864F;
/* GL_NV_depth_clamp */

enum GL_NV_draw_texture = 1;
alias PFNGLDRAWTEXTURENVPROC = void function (GLuint texture, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1);
void glDrawTextureNV (GLuint texture, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1);

/* GL_NV_draw_texture */

enum GL_NV_evaluators = 1;
enum GL_EVAL_2D_NV = 0x86C0;
enum GL_EVAL_TRIANGULAR_2D_NV = 0x86C1;
enum GL_MAP_TESSELLATION_NV = 0x86C2;
enum GL_MAP_ATTRIB_U_ORDER_NV = 0x86C3;
enum GL_MAP_ATTRIB_V_ORDER_NV = 0x86C4;
enum GL_EVAL_FRACTIONAL_TESSELLATION_NV = 0x86C5;
enum GL_EVAL_VERTEX_ATTRIB0_NV = 0x86C6;
enum GL_EVAL_VERTEX_ATTRIB1_NV = 0x86C7;
enum GL_EVAL_VERTEX_ATTRIB2_NV = 0x86C8;
enum GL_EVAL_VERTEX_ATTRIB3_NV = 0x86C9;
enum GL_EVAL_VERTEX_ATTRIB4_NV = 0x86CA;
enum GL_EVAL_VERTEX_ATTRIB5_NV = 0x86CB;
enum GL_EVAL_VERTEX_ATTRIB6_NV = 0x86CC;
enum GL_EVAL_VERTEX_ATTRIB7_NV = 0x86CD;
enum GL_EVAL_VERTEX_ATTRIB8_NV = 0x86CE;
enum GL_EVAL_VERTEX_ATTRIB9_NV = 0x86CF;
enum GL_EVAL_VERTEX_ATTRIB10_NV = 0x86D0;
enum GL_EVAL_VERTEX_ATTRIB11_NV = 0x86D1;
enum GL_EVAL_VERTEX_ATTRIB12_NV = 0x86D2;
enum GL_EVAL_VERTEX_ATTRIB13_NV = 0x86D3;
enum GL_EVAL_VERTEX_ATTRIB14_NV = 0x86D4;
enum GL_EVAL_VERTEX_ATTRIB15_NV = 0x86D5;
enum GL_MAX_MAP_TESSELLATION_NV = 0x86D6;
enum GL_MAX_RATIONAL_EVAL_ORDER_NV = 0x86D7;
alias PFNGLMAPCONTROLPOINTSNVPROC = void function (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const(void)* points);
alias PFNGLMAPPARAMETERIVNVPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLMAPPARAMETERFVNVPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLGETMAPCONTROLPOINTSNVPROC = void function (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, void* points);
alias PFNGLGETMAPPARAMETERIVNVPROC = void function (GLenum target, GLenum pname, GLint* params);
alias PFNGLGETMAPPARAMETERFVNVPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETMAPATTRIBPARAMETERIVNVPROC = void function (GLenum target, GLuint index, GLenum pname, GLint* params);
alias PFNGLGETMAPATTRIBPARAMETERFVNVPROC = void function (GLenum target, GLuint index, GLenum pname, GLfloat* params);
alias PFNGLEVALMAPSNVPROC = void function (GLenum target, GLenum mode);
void glMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const(void)* points);
void glMapParameterivNV (GLenum target, GLenum pname, const(GLint)* params);
void glMapParameterfvNV (GLenum target, GLenum pname, const(GLfloat)* params);
void glGetMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, void* points);
void glGetMapParameterivNV (GLenum target, GLenum pname, GLint* params);
void glGetMapParameterfvNV (GLenum target, GLenum pname, GLfloat* params);
void glGetMapAttribParameterivNV (GLenum target, GLuint index, GLenum pname, GLint* params);
void glGetMapAttribParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat* params);
void glEvalMapsNV (GLenum target, GLenum mode);

/* GL_NV_evaluators */

enum GL_NV_explicit_multisample = 1;
enum GL_SAMPLE_POSITION_NV = 0x8E50;
enum GL_SAMPLE_MASK_NV = 0x8E51;
enum GL_SAMPLE_MASK_VALUE_NV = 0x8E52;
enum GL_TEXTURE_BINDING_RENDERBUFFER_NV = 0x8E53;
enum GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = 0x8E54;
enum GL_TEXTURE_RENDERBUFFER_NV = 0x8E55;
enum GL_SAMPLER_RENDERBUFFER_NV = 0x8E56;
enum GL_INT_SAMPLER_RENDERBUFFER_NV = 0x8E57;
enum GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV = 0x8E58;
enum GL_MAX_SAMPLE_MASK_WORDS_NV = 0x8E59;
alias PFNGLGETMULTISAMPLEFVNVPROC = void function (GLenum pname, GLuint index, GLfloat* val);
alias PFNGLSAMPLEMASKINDEXEDNVPROC = void function (GLuint index, GLbitfield mask);
alias PFNGLTEXRENDERBUFFERNVPROC = void function (GLenum target, GLuint renderbuffer);
void glGetMultisamplefvNV (GLenum pname, GLuint index, GLfloat* val);
void glSampleMaskIndexedNV (GLuint index, GLbitfield mask);
void glTexRenderbufferNV (GLenum target, GLuint renderbuffer);

/* GL_NV_explicit_multisample */

enum GL_NV_fence = 1;
enum GL_ALL_COMPLETED_NV = 0x84F2;
enum GL_FENCE_STATUS_NV = 0x84F3;
enum GL_FENCE_CONDITION_NV = 0x84F4;
alias PFNGLDELETEFENCESNVPROC = void function (GLsizei n, const(GLuint)* fences);
alias PFNGLGENFENCESNVPROC = void function (GLsizei n, GLuint* fences);
alias PFNGLISFENCENVPROC = ubyte function (GLuint fence);
alias PFNGLTESTFENCENVPROC = ubyte function (GLuint fence);
alias PFNGLGETFENCEIVNVPROC = void function (GLuint fence, GLenum pname, GLint* params);
alias PFNGLFINISHFENCENVPROC = void function (GLuint fence);
alias PFNGLSETFENCENVPROC = void function (GLuint fence, GLenum condition);
void glDeleteFencesNV (GLsizei n, const(GLuint)* fences);
void glGenFencesNV (GLsizei n, GLuint* fences);
GLboolean glIsFenceNV (GLuint fence);
GLboolean glTestFenceNV (GLuint fence);
void glGetFenceivNV (GLuint fence, GLenum pname, GLint* params);
void glFinishFenceNV (GLuint fence);
void glSetFenceNV (GLuint fence, GLenum condition);

/* GL_NV_fence */

enum GL_NV_float_buffer = 1;
enum GL_FLOAT_R_NV = 0x8880;
enum GL_FLOAT_RG_NV = 0x8881;
enum GL_FLOAT_RGB_NV = 0x8882;
enum GL_FLOAT_RGBA_NV = 0x8883;
enum GL_FLOAT_R16_NV = 0x8884;
enum GL_FLOAT_R32_NV = 0x8885;
enum GL_FLOAT_RG16_NV = 0x8886;
enum GL_FLOAT_RG32_NV = 0x8887;
enum GL_FLOAT_RGB16_NV = 0x8888;
enum GL_FLOAT_RGB32_NV = 0x8889;
enum GL_FLOAT_RGBA16_NV = 0x888A;
enum GL_FLOAT_RGBA32_NV = 0x888B;
enum GL_TEXTURE_FLOAT_COMPONENTS_NV = 0x888C;
enum GL_FLOAT_CLEAR_COLOR_VALUE_NV = 0x888D;
enum GL_FLOAT_RGBA_MODE_NV = 0x888E;
/* GL_NV_float_buffer */

enum GL_NV_fog_distance = 1;
enum GL_FOG_DISTANCE_MODE_NV = 0x855A;
enum GL_EYE_RADIAL_NV = 0x855B;
enum GL_EYE_PLANE_ABSOLUTE_NV = 0x855C;
/* GL_NV_fog_distance */

enum GL_NV_fragment_program = 1;
enum GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 0x8868;
enum GL_FRAGMENT_PROGRAM_NV = 0x8870;
enum GL_MAX_TEXTURE_COORDS_NV = 0x8871;
enum GL_MAX_TEXTURE_IMAGE_UNITS_NV = 0x8872;
enum GL_FRAGMENT_PROGRAM_BINDING_NV = 0x8873;
enum GL_PROGRAM_ERROR_STRING_NV = 0x8874;
alias PFNGLPROGRAMNAMEDPARAMETER4FNVPROC = void function (GLuint id, GLsizei len, const(GLubyte)* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC = void function (GLuint id, GLsizei len, const(GLubyte)* name, const(GLfloat)* v);
alias PFNGLPROGRAMNAMEDPARAMETER4DNVPROC = void function (GLuint id, GLsizei len, const(GLubyte)* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC = void function (GLuint id, GLsizei len, const(GLubyte)* name, const(GLdouble)* v);
alias PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC = void function (GLuint id, GLsizei len, const(GLubyte)* name, GLfloat* params);
alias PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC = void function (GLuint id, GLsizei len, const(GLubyte)* name, GLdouble* params);
void glProgramNamedParameter4fNV (GLuint id, GLsizei len, const(GLubyte)* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramNamedParameter4fvNV (GLuint id, GLsizei len, const(GLubyte)* name, const(GLfloat)* v);
void glProgramNamedParameter4dNV (GLuint id, GLsizei len, const(GLubyte)* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramNamedParameter4dvNV (GLuint id, GLsizei len, const(GLubyte)* name, const(GLdouble)* v);
void glGetProgramNamedParameterfvNV (GLuint id, GLsizei len, const(GLubyte)* name, GLfloat* params);
void glGetProgramNamedParameterdvNV (GLuint id, GLsizei len, const(GLubyte)* name, GLdouble* params);

/* GL_NV_fragment_program */

enum GL_NV_fragment_program2 = 1;
enum GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = 0x88F4;
enum GL_MAX_PROGRAM_CALL_DEPTH_NV = 0x88F5;
enum GL_MAX_PROGRAM_IF_DEPTH_NV = 0x88F6;
enum GL_MAX_PROGRAM_LOOP_DEPTH_NV = 0x88F7;
enum GL_MAX_PROGRAM_LOOP_COUNT_NV = 0x88F8;
/* GL_NV_fragment_program2 */

enum GL_NV_fragment_program4 = 1;
/* GL_NV_fragment_program4 */

enum GL_NV_fragment_program_option = 1;
/* GL_NV_fragment_program_option */

enum GL_NV_framebuffer_multisample_coverage = 1;
enum GL_RENDERBUFFER_COVERAGE_SAMPLES_NV = 0x8CAB;
enum GL_RENDERBUFFER_COLOR_SAMPLES_NV = 0x8E10;
enum GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E11;
enum GL_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E12;
alias PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC = void function (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
void glRenderbufferStorageMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);

/* GL_NV_framebuffer_multisample_coverage */

enum GL_NV_geometry_program4 = 1;
enum GL_GEOMETRY_PROGRAM_NV = 0x8C26;
enum GL_MAX_PROGRAM_OUTPUT_VERTICES_NV = 0x8C27;
enum GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = 0x8C28;
alias PFNGLPROGRAMVERTEXLIMITNVPROC = void function (GLenum target, GLint limit);
alias PFNGLFRAMEBUFFERTEXTUREEXTPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level);
alias PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
alias PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC = void function (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glProgramVertexLimitNV (GLenum target, GLint limit);
void glFramebufferTextureEXT (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureLayerEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glFramebufferTextureFaceEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);

/* GL_NV_geometry_program4 */

enum GL_NV_geometry_shader4 = 1;
/* GL_NV_geometry_shader4 */

enum GL_NV_gpu_program4 = 1;
enum GL_MIN_PROGRAM_TEXEL_OFFSET_NV = 0x8904;
enum GL_MAX_PROGRAM_TEXEL_OFFSET_NV = 0x8905;
enum GL_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8906;
enum GL_PROGRAM_RESULT_COMPONENTS_NV = 0x8907;
enum GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8908;
enum GL_MAX_PROGRAM_RESULT_COMPONENTS_NV = 0x8909;
enum GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV = 0x8DA5;
enum GL_MAX_PROGRAM_GENERIC_RESULTS_NV = 0x8DA6;
alias PFNGLPROGRAMLOCALPARAMETERI4INVPROC = void function (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
alias PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC = void function (GLenum target, GLuint index, const(GLint)* params);
alias PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLint)* params);
alias PFNGLPROGRAMLOCALPARAMETERI4UINVPROC = void function (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
alias PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC = void function (GLenum target, GLuint index, const(GLuint)* params);
alias PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLuint)* params);
alias PFNGLPROGRAMENVPARAMETERI4INVPROC = void function (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
alias PFNGLPROGRAMENVPARAMETERI4IVNVPROC = void function (GLenum target, GLuint index, const(GLint)* params);
alias PFNGLPROGRAMENVPARAMETERSI4IVNVPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLint)* params);
alias PFNGLPROGRAMENVPARAMETERI4UINVPROC = void function (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
alias PFNGLPROGRAMENVPARAMETERI4UIVNVPROC = void function (GLenum target, GLuint index, const(GLuint)* params);
alias PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLuint)* params);
alias PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC = void function (GLenum target, GLuint index, GLint* params);
alias PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC = void function (GLenum target, GLuint index, GLuint* params);
alias PFNGLGETPROGRAMENVPARAMETERIIVNVPROC = void function (GLenum target, GLuint index, GLint* params);
alias PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC = void function (GLenum target, GLuint index, GLuint* params);
void glProgramLocalParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glProgramLocalParameterI4ivNV (GLenum target, GLuint index, const(GLint)* params);
void glProgramLocalParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const(GLint)* params);
void glProgramLocalParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramLocalParameterI4uivNV (GLenum target, GLuint index, const(GLuint)* params);
void glProgramLocalParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const(GLuint)* params);
void glProgramEnvParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glProgramEnvParameterI4ivNV (GLenum target, GLuint index, const(GLint)* params);
void glProgramEnvParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const(GLint)* params);
void glProgramEnvParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramEnvParameterI4uivNV (GLenum target, GLuint index, const(GLuint)* params);
void glProgramEnvParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const(GLuint)* params);
void glGetProgramLocalParameterIivNV (GLenum target, GLuint index, GLint* params);
void glGetProgramLocalParameterIuivNV (GLenum target, GLuint index, GLuint* params);
void glGetProgramEnvParameterIivNV (GLenum target, GLuint index, GLint* params);
void glGetProgramEnvParameterIuivNV (GLenum target, GLuint index, GLuint* params);

/* GL_NV_gpu_program4 */

enum GL_NV_gpu_program5 = 1;
enum GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV = 0x8E5A;
enum GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8E5B;
enum GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8E5C;
enum GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV = 0x8E5D;
enum GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8E5E;
enum GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8E5F;
enum GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV = 0x8F44;
enum GL_MAX_PROGRAM_SUBROUTINE_NUM_NV = 0x8F45;
alias PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC = void function (GLenum target, GLsizei count, const(GLuint)* params);
alias PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC = void function (GLenum target, GLuint index, GLuint* param);
void glProgramSubroutineParametersuivNV (GLenum target, GLsizei count, const(GLuint)* params);
void glGetProgramSubroutineParameteruivNV (GLenum target, GLuint index, GLuint* param);

/* GL_NV_gpu_program5 */

enum GL_NV_gpu_program5_mem_extended = 1;
/* GL_NV_gpu_program5_mem_extended */

enum GL_NV_gpu_shader5 = 1;
/* GL_NV_gpu_shader5 */

enum GL_NV_half_float = 1;
alias GLhalfNV = ushort;
enum GL_HALF_FLOAT_NV = 0x140B;
alias PFNGLVERTEX2HNVPROC = void function (GLhalfNV x, GLhalfNV y);
alias PFNGLVERTEX2HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLVERTEX3HNVPROC = void function (GLhalfNV x, GLhalfNV y, GLhalfNV z);
alias PFNGLVERTEX3HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLVERTEX4HNVPROC = void function (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
alias PFNGLVERTEX4HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLNORMAL3HNVPROC = void function (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz);
alias PFNGLNORMAL3HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLCOLOR3HNVPROC = void function (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
alias PFNGLCOLOR3HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLCOLOR4HNVPROC = void function (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha);
alias PFNGLCOLOR4HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLTEXCOORD1HNVPROC = void function (GLhalfNV s);
alias PFNGLTEXCOORD1HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLTEXCOORD2HNVPROC = void function (GLhalfNV s, GLhalfNV t);
alias PFNGLTEXCOORD2HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLTEXCOORD3HNVPROC = void function (GLhalfNV s, GLhalfNV t, GLhalfNV r);
alias PFNGLTEXCOORD3HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLTEXCOORD4HNVPROC = void function (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
alias PFNGLTEXCOORD4HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLMULTITEXCOORD1HNVPROC = void function (GLenum target, GLhalfNV s);
alias PFNGLMULTITEXCOORD1HVNVPROC = void function (GLenum target, const(GLhalfNV)* v);
alias PFNGLMULTITEXCOORD2HNVPROC = void function (GLenum target, GLhalfNV s, GLhalfNV t);
alias PFNGLMULTITEXCOORD2HVNVPROC = void function (GLenum target, const(GLhalfNV)* v);
alias PFNGLMULTITEXCOORD3HNVPROC = void function (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r);
alias PFNGLMULTITEXCOORD3HVNVPROC = void function (GLenum target, const(GLhalfNV)* v);
alias PFNGLMULTITEXCOORD4HNVPROC = void function (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
alias PFNGLMULTITEXCOORD4HVNVPROC = void function (GLenum target, const(GLhalfNV)* v);
alias PFNGLFOGCOORDHNVPROC = void function (GLhalfNV fog);
alias PFNGLFOGCOORDHVNVPROC = void function (const(GLhalfNV)* fog);
alias PFNGLSECONDARYCOLOR3HNVPROC = void function (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
alias PFNGLSECONDARYCOLOR3HVNVPROC = void function (const(GLhalfNV)* v);
alias PFNGLVERTEXWEIGHTHNVPROC = void function (GLhalfNV weight);
alias PFNGLVERTEXWEIGHTHVNVPROC = void function (const(GLhalfNV)* weight);
alias PFNGLVERTEXATTRIB1HNVPROC = void function (GLuint index, GLhalfNV x);
alias PFNGLVERTEXATTRIB1HVNVPROC = void function (GLuint index, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIB2HNVPROC = void function (GLuint index, GLhalfNV x, GLhalfNV y);
alias PFNGLVERTEXATTRIB2HVNVPROC = void function (GLuint index, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIB3HNVPROC = void function (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z);
alias PFNGLVERTEXATTRIB3HVNVPROC = void function (GLuint index, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIB4HNVPROC = void function (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
alias PFNGLVERTEXATTRIB4HVNVPROC = void function (GLuint index, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIBS1HVNVPROC = void function (GLuint index, GLsizei n, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIBS2HVNVPROC = void function (GLuint index, GLsizei n, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIBS3HVNVPROC = void function (GLuint index, GLsizei n, const(GLhalfNV)* v);
alias PFNGLVERTEXATTRIBS4HVNVPROC = void function (GLuint index, GLsizei n, const(GLhalfNV)* v);
void glVertex2hNV (GLhalfNV x, GLhalfNV y);
void glVertex2hvNV (const(GLhalfNV)* v);
void glVertex3hNV (GLhalfNV x, GLhalfNV y, GLhalfNV z);
void glVertex3hvNV (const(GLhalfNV)* v);
void glVertex4hNV (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
void glVertex4hvNV (const(GLhalfNV)* v);
void glNormal3hNV (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz);
void glNormal3hvNV (const(GLhalfNV)* v);
void glColor3hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
void glColor3hvNV (const(GLhalfNV)* v);
void glColor4hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha);
void glColor4hvNV (const(GLhalfNV)* v);
void glTexCoord1hNV (GLhalfNV s);
void glTexCoord1hvNV (const(GLhalfNV)* v);
void glTexCoord2hNV (GLhalfNV s, GLhalfNV t);
void glTexCoord2hvNV (const(GLhalfNV)* v);
void glTexCoord3hNV (GLhalfNV s, GLhalfNV t, GLhalfNV r);
void glTexCoord3hvNV (const(GLhalfNV)* v);
void glTexCoord4hNV (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
void glTexCoord4hvNV (const(GLhalfNV)* v);
void glMultiTexCoord1hNV (GLenum target, GLhalfNV s);
void glMultiTexCoord1hvNV (GLenum target, const(GLhalfNV)* v);
void glMultiTexCoord2hNV (GLenum target, GLhalfNV s, GLhalfNV t);
void glMultiTexCoord2hvNV (GLenum target, const(GLhalfNV)* v);
void glMultiTexCoord3hNV (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r);
void glMultiTexCoord3hvNV (GLenum target, const(GLhalfNV)* v);
void glMultiTexCoord4hNV (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
void glMultiTexCoord4hvNV (GLenum target, const(GLhalfNV)* v);
void glFogCoordhNV (GLhalfNV fog);
void glFogCoordhvNV (const(GLhalfNV)* fog);
void glSecondaryColor3hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
void glSecondaryColor3hvNV (const(GLhalfNV)* v);
void glVertexWeighthNV (GLhalfNV weight);
void glVertexWeighthvNV (const(GLhalfNV)* weight);
void glVertexAttrib1hNV (GLuint index, GLhalfNV x);
void glVertexAttrib1hvNV (GLuint index, const(GLhalfNV)* v);
void glVertexAttrib2hNV (GLuint index, GLhalfNV x, GLhalfNV y);
void glVertexAttrib2hvNV (GLuint index, const(GLhalfNV)* v);
void glVertexAttrib3hNV (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z);
void glVertexAttrib3hvNV (GLuint index, const(GLhalfNV)* v);
void glVertexAttrib4hNV (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
void glVertexAttrib4hvNV (GLuint index, const(GLhalfNV)* v);
void glVertexAttribs1hvNV (GLuint index, GLsizei n, const(GLhalfNV)* v);
void glVertexAttribs2hvNV (GLuint index, GLsizei n, const(GLhalfNV)* v);
void glVertexAttribs3hvNV (GLuint index, GLsizei n, const(GLhalfNV)* v);
void glVertexAttribs4hvNV (GLuint index, GLsizei n, const(GLhalfNV)* v);

/* GL_NV_half_float */

enum GL_NV_light_max_exponent = 1;
enum GL_MAX_SHININESS_NV = 0x8504;
enum GL_MAX_SPOT_EXPONENT_NV = 0x8505;
/* GL_NV_light_max_exponent */

enum GL_NV_multisample_coverage = 1;
enum GL_COLOR_SAMPLES_NV = 0x8E20;
/* GL_NV_multisample_coverage */

enum GL_NV_multisample_filter_hint = 1;
enum GL_MULTISAMPLE_FILTER_HINT_NV = 0x8534;
/* GL_NV_multisample_filter_hint */

enum GL_NV_occlusion_query = 1;
enum GL_PIXEL_COUNTER_BITS_NV = 0x8864;
enum GL_CURRENT_OCCLUSION_QUERY_ID_NV = 0x8865;
enum GL_PIXEL_COUNT_NV = 0x8866;
enum GL_PIXEL_COUNT_AVAILABLE_NV = 0x8867;
alias PFNGLGENOCCLUSIONQUERIESNVPROC = void function (GLsizei n, GLuint* ids);
alias PFNGLDELETEOCCLUSIONQUERIESNVPROC = void function (GLsizei n, const(GLuint)* ids);
alias PFNGLISOCCLUSIONQUERYNVPROC = ubyte function (GLuint id);
alias PFNGLBEGINOCCLUSIONQUERYNVPROC = void function (GLuint id);
alias PFNGLENDOCCLUSIONQUERYNVPROC = void function ();
alias PFNGLGETOCCLUSIONQUERYIVNVPROC = void function (GLuint id, GLenum pname, GLint* params);
alias PFNGLGETOCCLUSIONQUERYUIVNVPROC = void function (GLuint id, GLenum pname, GLuint* params);
void glGenOcclusionQueriesNV (GLsizei n, GLuint* ids);
void glDeleteOcclusionQueriesNV (GLsizei n, const(GLuint)* ids);
GLboolean glIsOcclusionQueryNV (GLuint id);
void glBeginOcclusionQueryNV (GLuint id);
void glEndOcclusionQueryNV ();
void glGetOcclusionQueryivNV (GLuint id, GLenum pname, GLint* params);
void glGetOcclusionQueryuivNV (GLuint id, GLenum pname, GLuint* params);

/* GL_NV_occlusion_query */

enum GL_NV_packed_depth_stencil = 1;
enum GL_DEPTH_STENCIL_NV = 0x84F9;
enum GL_UNSIGNED_INT_24_8_NV = 0x84FA;
/* GL_NV_packed_depth_stencil */

enum GL_NV_parameter_buffer_object = 1;
enum GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV = 0x8DA0;
enum GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV = 0x8DA1;
enum GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA2;
enum GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA3;
enum GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA4;
alias PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC = void function (GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, const(GLfloat)* params);
alias PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC = void function (GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, const(GLint)* params);
alias PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC = void function (GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, const(GLuint)* params);
void glProgramBufferParametersfvNV (GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, const(GLfloat)* params);
void glProgramBufferParametersIivNV (GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, const(GLint)* params);
void glProgramBufferParametersIuivNV (GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, const(GLuint)* params);

/* GL_NV_parameter_buffer_object */

enum GL_NV_parameter_buffer_object2 = 1;
/* GL_NV_parameter_buffer_object2 */

enum GL_NV_path_rendering = 1;
enum GL_PATH_FORMAT_SVG_NV = 0x9070;
enum GL_PATH_FORMAT_PS_NV = 0x9071;
enum GL_STANDARD_FONT_NAME_NV = 0x9072;
enum GL_SYSTEM_FONT_NAME_NV = 0x9073;
enum GL_FILE_NAME_NV = 0x9074;
enum GL_PATH_STROKE_WIDTH_NV = 0x9075;
enum GL_PATH_END_CAPS_NV = 0x9076;
enum GL_PATH_INITIAL_END_CAP_NV = 0x9077;
enum GL_PATH_TERMINAL_END_CAP_NV = 0x9078;
enum GL_PATH_JOIN_STYLE_NV = 0x9079;
enum GL_PATH_MITER_LIMIT_NV = 0x907A;
enum GL_PATH_DASH_CAPS_NV = 0x907B;
enum GL_PATH_INITIAL_DASH_CAP_NV = 0x907C;
enum GL_PATH_TERMINAL_DASH_CAP_NV = 0x907D;
enum GL_PATH_DASH_OFFSET_NV = 0x907E;
enum GL_PATH_CLIENT_LENGTH_NV = 0x907F;
enum GL_PATH_FILL_MODE_NV = 0x9080;
enum GL_PATH_FILL_MASK_NV = 0x9081;
enum GL_PATH_FILL_COVER_MODE_NV = 0x9082;
enum GL_PATH_STROKE_COVER_MODE_NV = 0x9083;
enum GL_PATH_STROKE_MASK_NV = 0x9084;
enum GL_COUNT_UP_NV = 0x9088;
enum GL_COUNT_DOWN_NV = 0x9089;
enum GL_PATH_OBJECT_BOUNDING_BOX_NV = 0x908A;
enum GL_CONVEX_HULL_NV = 0x908B;
enum GL_BOUNDING_BOX_NV = 0x908D;
enum GL_TRANSLATE_X_NV = 0x908E;
enum GL_TRANSLATE_Y_NV = 0x908F;
enum GL_TRANSLATE_2D_NV = 0x9090;
enum GL_TRANSLATE_3D_NV = 0x9091;
enum GL_AFFINE_2D_NV = 0x9092;
enum GL_AFFINE_3D_NV = 0x9094;
enum GL_TRANSPOSE_AFFINE_2D_NV = 0x9096;
enum GL_TRANSPOSE_AFFINE_3D_NV = 0x9098;
enum GL_UTF8_NV = 0x909A;
enum GL_UTF16_NV = 0x909B;
enum GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = 0x909C;
enum GL_PATH_COMMAND_COUNT_NV = 0x909D;
enum GL_PATH_COORD_COUNT_NV = 0x909E;
enum GL_PATH_DASH_ARRAY_COUNT_NV = 0x909F;
enum GL_PATH_COMPUTED_LENGTH_NV = 0x90A0;
enum GL_PATH_FILL_BOUNDING_BOX_NV = 0x90A1;
enum GL_PATH_STROKE_BOUNDING_BOX_NV = 0x90A2;
enum GL_SQUARE_NV = 0x90A3;
enum GL_ROUND_NV = 0x90A4;
enum GL_TRIANGULAR_NV = 0x90A5;
enum GL_BEVEL_NV = 0x90A6;
enum GL_MITER_REVERT_NV = 0x90A7;
enum GL_MITER_TRUNCATE_NV = 0x90A8;
enum GL_SKIP_MISSING_GLYPH_NV = 0x90A9;
enum GL_USE_MISSING_GLYPH_NV = 0x90AA;
enum GL_PATH_ERROR_POSITION_NV = 0x90AB;
enum GL_PATH_FOG_GEN_MODE_NV = 0x90AC;
enum GL_ACCUM_ADJACENT_PAIRS_NV = 0x90AD;
enum GL_ADJACENT_PAIRS_NV = 0x90AE;
enum GL_FIRST_TO_REST_NV = 0x90AF;
enum GL_PATH_GEN_MODE_NV = 0x90B0;
enum GL_PATH_GEN_COEFF_NV = 0x90B1;
enum GL_PATH_GEN_COLOR_FORMAT_NV = 0x90B2;
enum GL_PATH_GEN_COMPONENTS_NV = 0x90B3;
enum GL_PATH_STENCIL_FUNC_NV = 0x90B7;
enum GL_PATH_STENCIL_REF_NV = 0x90B8;
enum GL_PATH_STENCIL_VALUE_MASK_NV = 0x90B9;
enum GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = 0x90BD;
enum GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = 0x90BE;
enum GL_PATH_COVER_DEPTH_FUNC_NV = 0x90BF;
enum GL_PATH_DASH_OFFSET_RESET_NV = 0x90B4;
enum GL_MOVE_TO_RESETS_NV = 0x90B5;
enum GL_MOVE_TO_CONTINUES_NV = 0x90B6;
enum GL_CLOSE_PATH_NV = 0x00;
enum GL_MOVE_TO_NV = 0x02;
enum GL_RELATIVE_MOVE_TO_NV = 0x03;
enum GL_LINE_TO_NV = 0x04;
enum GL_RELATIVE_LINE_TO_NV = 0x05;
enum GL_HORIZONTAL_LINE_TO_NV = 0x06;
enum GL_RELATIVE_HORIZONTAL_LINE_TO_NV = 0x07;
enum GL_VERTICAL_LINE_TO_NV = 0x08;
enum GL_RELATIVE_VERTICAL_LINE_TO_NV = 0x09;
enum GL_QUADRATIC_CURVE_TO_NV = 0x0A;
enum GL_RELATIVE_QUADRATIC_CURVE_TO_NV = 0x0B;
enum GL_CUBIC_CURVE_TO_NV = 0x0C;
enum GL_RELATIVE_CUBIC_CURVE_TO_NV = 0x0D;
enum GL_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0E;
enum GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0F;
enum GL_SMOOTH_CUBIC_CURVE_TO_NV = 0x10;
enum GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = 0x11;
enum GL_SMALL_CCW_ARC_TO_NV = 0x12;
enum GL_RELATIVE_SMALL_CCW_ARC_TO_NV = 0x13;
enum GL_SMALL_CW_ARC_TO_NV = 0x14;
enum GL_RELATIVE_SMALL_CW_ARC_TO_NV = 0x15;
enum GL_LARGE_CCW_ARC_TO_NV = 0x16;
enum GL_RELATIVE_LARGE_CCW_ARC_TO_NV = 0x17;
enum GL_LARGE_CW_ARC_TO_NV = 0x18;
enum GL_RELATIVE_LARGE_CW_ARC_TO_NV = 0x19;
enum GL_RESTART_PATH_NV = 0xF0;
enum GL_DUP_FIRST_CUBIC_CURVE_TO_NV = 0xF2;
enum GL_DUP_LAST_CUBIC_CURVE_TO_NV = 0xF4;
enum GL_RECT_NV = 0xF6;
enum GL_CIRCULAR_CCW_ARC_TO_NV = 0xF8;
enum GL_CIRCULAR_CW_ARC_TO_NV = 0xFA;
enum GL_CIRCULAR_TANGENT_ARC_TO_NV = 0xFC;
enum GL_ARC_TO_NV = 0xFE;
enum GL_RELATIVE_ARC_TO_NV = 0xFF;
enum GL_BOLD_BIT_NV = 0x01;
enum GL_ITALIC_BIT_NV = 0x02;
enum GL_GLYPH_WIDTH_BIT_NV = 0x01;
enum GL_GLYPH_HEIGHT_BIT_NV = 0x02;
enum GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = 0x04;
enum GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = 0x08;
enum GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = 0x10;
enum GL_GLYPH_VERTICAL_BEARING_X_BIT_NV = 0x20;
enum GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV = 0x40;
enum GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = 0x80;
enum GL_GLYPH_HAS_KERNING_BIT_NV = 0x100;
enum GL_FONT_X_MIN_BOUNDS_BIT_NV = 0x00010000;
enum GL_FONT_Y_MIN_BOUNDS_BIT_NV = 0x00020000;
enum GL_FONT_X_MAX_BOUNDS_BIT_NV = 0x00040000;
enum GL_FONT_Y_MAX_BOUNDS_BIT_NV = 0x00080000;
enum GL_FONT_UNITS_PER_EM_BIT_NV = 0x00100000;
enum GL_FONT_ASCENDER_BIT_NV = 0x00200000;
enum GL_FONT_DESCENDER_BIT_NV = 0x00400000;
enum GL_FONT_HEIGHT_BIT_NV = 0x00800000;
enum GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV = 0x01000000;
enum GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV = 0x02000000;
enum GL_FONT_UNDERLINE_POSITION_BIT_NV = 0x04000000;
enum GL_FONT_UNDERLINE_THICKNESS_BIT_NV = 0x08000000;
enum GL_FONT_HAS_KERNING_BIT_NV = 0x10000000;
enum GL_PRIMARY_COLOR_NV = 0x852C;
enum GL_SECONDARY_COLOR_NV = 0x852D;
alias PFNGLGENPATHSNVPROC = uint function (GLsizei range);
alias PFNGLDELETEPATHSNVPROC = void function (GLuint path, GLsizei range);
alias PFNGLISPATHNVPROC = ubyte function (GLuint path);
alias PFNGLPATHCOMMANDSNVPROC = void function (GLuint path, GLsizei numCommands, const(GLubyte)* commands, GLsizei numCoords, GLenum coordType, const(void)* coords);
alias PFNGLPATHCOORDSNVPROC = void function (GLuint path, GLsizei numCoords, GLenum coordType, const(void)* coords);
alias PFNGLPATHSUBCOMMANDSNVPROC = void function (GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, const(GLubyte)* commands, GLsizei numCoords, GLenum coordType, const(void)* coords);
alias PFNGLPATHSUBCOORDSNVPROC = void function (GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const(void)* coords);
alias PFNGLPATHSTRINGNVPROC = void function (GLuint path, GLenum format, GLsizei length, const(void)* pathString);
alias PFNGLPATHGLYPHSNVPROC = void function (GLuint firstPathName, GLenum fontTarget, const(void)* fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, const(void)* charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
alias PFNGLPATHGLYPHRANGENVPROC = void function (GLuint firstPathName, GLenum fontTarget, const(void)* fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
alias PFNGLWEIGHTPATHSNVPROC = void function (GLuint resultPath, GLsizei numPaths, const(GLuint)* paths, const(GLfloat)* weights);
alias PFNGLCOPYPATHNVPROC = void function (GLuint resultPath, GLuint srcPath);
alias PFNGLINTERPOLATEPATHSNVPROC = void function (GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight);
alias PFNGLTRANSFORMPATHNVPROC = void function (GLuint resultPath, GLuint srcPath, GLenum transformType, const(GLfloat)* transformValues);
alias PFNGLPATHPARAMETERIVNVPROC = void function (GLuint path, GLenum pname, const(GLint)* value);
alias PFNGLPATHPARAMETERINVPROC = void function (GLuint path, GLenum pname, GLint value);
alias PFNGLPATHPARAMETERFVNVPROC = void function (GLuint path, GLenum pname, const(GLfloat)* value);
alias PFNGLPATHPARAMETERFNVPROC = void function (GLuint path, GLenum pname, GLfloat value);
alias PFNGLPATHDASHARRAYNVPROC = void function (GLuint path, GLsizei dashCount, const(GLfloat)* dashArray);
alias PFNGLPATHSTENCILFUNCNVPROC = void function (GLenum func, GLint ref_, GLuint mask);
alias PFNGLPATHSTENCILDEPTHOFFSETNVPROC = void function (GLfloat factor, GLfloat units);
alias PFNGLSTENCILFILLPATHNVPROC = void function (GLuint path, GLenum fillMode, GLuint mask);
alias PFNGLSTENCILSTROKEPATHNVPROC = void function (GLuint path, GLint reference, GLuint mask);
alias PFNGLSTENCILFILLPATHINSTANCEDNVPROC = void function (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, const(GLfloat)* transformValues);
alias PFNGLSTENCILSTROKEPATHINSTANCEDNVPROC = void function (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, const(GLfloat)* transformValues);
alias PFNGLPATHCOVERDEPTHFUNCNVPROC = void function (GLenum func);
alias PFNGLPATHCOLORGENNVPROC = void function (GLenum color, GLenum genMode, GLenum colorFormat, const(GLfloat)* coeffs);
alias PFNGLPATHTEXGENNVPROC = void function (GLenum texCoordSet, GLenum genMode, GLint components, const(GLfloat)* coeffs);
alias PFNGLPATHFOGGENNVPROC = void function (GLenum genMode);
alias PFNGLCOVERFILLPATHNVPROC = void function (GLuint path, GLenum coverMode);
alias PFNGLCOVERSTROKEPATHNVPROC = void function (GLuint path, GLenum coverMode);
alias PFNGLCOVERFILLPATHINSTANCEDNVPROC = void function (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const(GLfloat)* transformValues);
alias PFNGLCOVERSTROKEPATHINSTANCEDNVPROC = void function (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const(GLfloat)* transformValues);
alias PFNGLGETPATHPARAMETERIVNVPROC = void function (GLuint path, GLenum pname, GLint* value);
alias PFNGLGETPATHPARAMETERFVNVPROC = void function (GLuint path, GLenum pname, GLfloat* value);
alias PFNGLGETPATHCOMMANDSNVPROC = void function (GLuint path, GLubyte* commands);
alias PFNGLGETPATHCOORDSNVPROC = void function (GLuint path, GLfloat* coords);
alias PFNGLGETPATHDASHARRAYNVPROC = void function (GLuint path, GLfloat* dashArray);
alias PFNGLGETPATHMETRICSNVPROC = void function (GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLsizei stride, GLfloat* metrics);
alias PFNGLGETPATHMETRICRANGENVPROC = void function (GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics);
alias PFNGLGETPATHSPACINGNVPROC = void function (GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat* returnedSpacing);
alias PFNGLGETPATHCOLORGENIVNVPROC = void function (GLenum color, GLenum pname, GLint* value);
alias PFNGLGETPATHCOLORGENFVNVPROC = void function (GLenum color, GLenum pname, GLfloat* value);
alias PFNGLGETPATHTEXGENIVNVPROC = void function (GLenum texCoordSet, GLenum pname, GLint* value);
alias PFNGLGETPATHTEXGENFVNVPROC = void function (GLenum texCoordSet, GLenum pname, GLfloat* value);
alias PFNGLISPOINTINFILLPATHNVPROC = ubyte function (GLuint path, GLuint mask, GLfloat x, GLfloat y);
alias PFNGLISPOINTINSTROKEPATHNVPROC = ubyte function (GLuint path, GLfloat x, GLfloat y);
alias PFNGLGETPATHLENGTHNVPROC = float function (GLuint path, GLsizei startSegment, GLsizei numSegments);
alias PFNGLPOINTALONGPATHNVPROC = ubyte function (GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat* y, GLfloat* tangentX, GLfloat* tangentY);
GLuint glGenPathsNV (GLsizei range);
void glDeletePathsNV (GLuint path, GLsizei range);
GLboolean glIsPathNV (GLuint path);
void glPathCommandsNV (GLuint path, GLsizei numCommands, const(GLubyte)* commands, GLsizei numCoords, GLenum coordType, const(void)* coords);
void glPathCoordsNV (GLuint path, GLsizei numCoords, GLenum coordType, const(void)* coords);
void glPathSubCommandsNV (GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, const(GLubyte)* commands, GLsizei numCoords, GLenum coordType, const(void)* coords);
void glPathSubCoordsNV (GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const(void)* coords);
void glPathStringNV (GLuint path, GLenum format, GLsizei length, const(void)* pathString);
void glPathGlyphsNV (GLuint firstPathName, GLenum fontTarget, const(void)* fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, const(void)* charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
void glPathGlyphRangeNV (GLuint firstPathName, GLenum fontTarget, const(void)* fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
void glWeightPathsNV (GLuint resultPath, GLsizei numPaths, const(GLuint)* paths, const(GLfloat)* weights);
void glCopyPathNV (GLuint resultPath, GLuint srcPath);
void glInterpolatePathsNV (GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight);
void glTransformPathNV (GLuint resultPath, GLuint srcPath, GLenum transformType, const(GLfloat)* transformValues);
void glPathParameterivNV (GLuint path, GLenum pname, const(GLint)* value);
void glPathParameteriNV (GLuint path, GLenum pname, GLint value);
void glPathParameterfvNV (GLuint path, GLenum pname, const(GLfloat)* value);
void glPathParameterfNV (GLuint path, GLenum pname, GLfloat value);
void glPathDashArrayNV (GLuint path, GLsizei dashCount, const(GLfloat)* dashArray);
void glPathStencilFuncNV (GLenum func, GLint ref_, GLuint mask);
void glPathStencilDepthOffsetNV (GLfloat factor, GLfloat units);
void glStencilFillPathNV (GLuint path, GLenum fillMode, GLuint mask);
void glStencilStrokePathNV (GLuint path, GLint reference, GLuint mask);
void glStencilFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, const(GLfloat)* transformValues);
void glStencilStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, const(GLfloat)* transformValues);
void glPathCoverDepthFuncNV (GLenum func);
void glPathColorGenNV (GLenum color, GLenum genMode, GLenum colorFormat, const(GLfloat)* coeffs);
void glPathTexGenNV (GLenum texCoordSet, GLenum genMode, GLint components, const(GLfloat)* coeffs);
void glPathFogGenNV (GLenum genMode);
void glCoverFillPathNV (GLuint path, GLenum coverMode);
void glCoverStrokePathNV (GLuint path, GLenum coverMode);
void glCoverFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const(GLfloat)* transformValues);
void glCoverStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const(GLfloat)* transformValues);
void glGetPathParameterivNV (GLuint path, GLenum pname, GLint* value);
void glGetPathParameterfvNV (GLuint path, GLenum pname, GLfloat* value);
void glGetPathCommandsNV (GLuint path, GLubyte* commands);
void glGetPathCoordsNV (GLuint path, GLfloat* coords);
void glGetPathDashArrayNV (GLuint path, GLfloat* dashArray);
void glGetPathMetricsNV (GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLsizei stride, GLfloat* metrics);
void glGetPathMetricRangeNV (GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics);
void glGetPathSpacingNV (GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const(void)* paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat* returnedSpacing);
void glGetPathColorGenivNV (GLenum color, GLenum pname, GLint* value);
void glGetPathColorGenfvNV (GLenum color, GLenum pname, GLfloat* value);
void glGetPathTexGenivNV (GLenum texCoordSet, GLenum pname, GLint* value);
void glGetPathTexGenfvNV (GLenum texCoordSet, GLenum pname, GLfloat* value);
GLboolean glIsPointInFillPathNV (GLuint path, GLuint mask, GLfloat x, GLfloat y);
GLboolean glIsPointInStrokePathNV (GLuint path, GLfloat x, GLfloat y);
GLfloat glGetPathLengthNV (GLuint path, GLsizei startSegment, GLsizei numSegments);
GLboolean glPointAlongPathNV (GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat* y, GLfloat* tangentX, GLfloat* tangentY);

/* GL_NV_path_rendering */

enum GL_NV_pixel_data_range = 1;
enum GL_WRITE_PIXEL_DATA_RANGE_NV = 0x8878;
enum GL_READ_PIXEL_DATA_RANGE_NV = 0x8879;
enum GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = 0x887A;
enum GL_READ_PIXEL_DATA_RANGE_LENGTH_NV = 0x887B;
enum GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV = 0x887C;
enum GL_READ_PIXEL_DATA_RANGE_POINTER_NV = 0x887D;
alias PFNGLPIXELDATARANGENVPROC = void function (GLenum target, GLsizei length, const(void)* pointer);
alias PFNGLFLUSHPIXELDATARANGENVPROC = void function (GLenum target);
void glPixelDataRangeNV (GLenum target, GLsizei length, const(void)* pointer);
void glFlushPixelDataRangeNV (GLenum target);

/* GL_NV_pixel_data_range */

enum GL_NV_point_sprite = 1;
enum GL_POINT_SPRITE_NV = 0x8861;
enum GL_COORD_REPLACE_NV = 0x8862;
enum GL_POINT_SPRITE_R_MODE_NV = 0x8863;
alias PFNGLPOINTPARAMETERINVPROC = void function (GLenum pname, GLint param);
alias PFNGLPOINTPARAMETERIVNVPROC = void function (GLenum pname, const(GLint)* params);
void glPointParameteriNV (GLenum pname, GLint param);
void glPointParameterivNV (GLenum pname, const(GLint)* params);

/* GL_NV_point_sprite */

enum GL_NV_present_video = 1;
enum GL_FRAME_NV = 0x8E26;
enum GL_FIELDS_NV = 0x8E27;
enum GL_CURRENT_TIME_NV = 0x8E28;
enum GL_NUM_FILL_STREAMS_NV = 0x8E29;
enum GL_PRESENT_TIME_NV = 0x8E2A;
enum GL_PRESENT_DURATION_NV = 0x8E2B;
alias PFNGLPRESENTFRAMEKEYEDNVPROC = void function (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1);
alias PFNGLPRESENTFRAMEDUALFILLNVPROC = void function (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3);
alias PFNGLGETVIDEOIVNVPROC = void function (GLuint video_slot, GLenum pname, GLint* params);
alias PFNGLGETVIDEOUIVNVPROC = void function (GLuint video_slot, GLenum pname, GLuint* params);
alias PFNGLGETVIDEOI64VNVPROC = void function (GLuint video_slot, GLenum pname, GLint64EXT* params);
alias PFNGLGETVIDEOUI64VNVPROC = void function (GLuint video_slot, GLenum pname, GLuint64EXT* params);
void glPresentFrameKeyedNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1);
void glPresentFrameDualFillNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3);
void glGetVideoivNV (GLuint video_slot, GLenum pname, GLint* params);
void glGetVideouivNV (GLuint video_slot, GLenum pname, GLuint* params);
void glGetVideoi64vNV (GLuint video_slot, GLenum pname, GLint64EXT* params);
void glGetVideoui64vNV (GLuint video_slot, GLenum pname, GLuint64EXT* params);

/* GL_NV_present_video */

enum GL_NV_primitive_restart = 1;
enum GL_PRIMITIVE_RESTART_NV = 0x8558;
enum GL_PRIMITIVE_RESTART_INDEX_NV = 0x8559;
alias PFNGLPRIMITIVERESTARTNVPROC = void function ();
alias PFNGLPRIMITIVERESTARTINDEXNVPROC = void function (GLuint index);
void glPrimitiveRestartNV ();
void glPrimitiveRestartIndexNV (GLuint index);

/* GL_NV_primitive_restart */

enum GL_NV_register_combiners = 1;
enum GL_REGISTER_COMBINERS_NV = 0x8522;
enum GL_VARIABLE_A_NV = 0x8523;
enum GL_VARIABLE_B_NV = 0x8524;
enum GL_VARIABLE_C_NV = 0x8525;
enum GL_VARIABLE_D_NV = 0x8526;
enum GL_VARIABLE_E_NV = 0x8527;
enum GL_VARIABLE_F_NV = 0x8528;
enum GL_VARIABLE_G_NV = 0x8529;
enum GL_CONSTANT_COLOR0_NV = 0x852A;
enum GL_CONSTANT_COLOR1_NV = 0x852B;
enum GL_SPARE0_NV = 0x852E;
enum GL_SPARE1_NV = 0x852F;
enum GL_DISCARD_NV = 0x8530;
enum GL_E_TIMES_F_NV = 0x8531;
enum GL_SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532;
enum GL_UNSIGNED_IDENTITY_NV = 0x8536;
enum GL_UNSIGNED_INVERT_NV = 0x8537;
enum GL_EXPAND_NORMAL_NV = 0x8538;
enum GL_EXPAND_NEGATE_NV = 0x8539;
enum GL_HALF_BIAS_NORMAL_NV = 0x853A;
enum GL_HALF_BIAS_NEGATE_NV = 0x853B;
enum GL_SIGNED_IDENTITY_NV = 0x853C;
enum GL_SIGNED_NEGATE_NV = 0x853D;
enum GL_SCALE_BY_TWO_NV = 0x853E;
enum GL_SCALE_BY_FOUR_NV = 0x853F;
enum GL_SCALE_BY_ONE_HALF_NV = 0x8540;
enum GL_BIAS_BY_NEGATIVE_ONE_HALF_NV = 0x8541;
enum GL_COMBINER_INPUT_NV = 0x8542;
enum GL_COMBINER_MAPPING_NV = 0x8543;
enum GL_COMBINER_COMPONENT_USAGE_NV = 0x8544;
enum GL_COMBINER_AB_DOT_PRODUCT_NV = 0x8545;
enum GL_COMBINER_CD_DOT_PRODUCT_NV = 0x8546;
enum GL_COMBINER_MUX_SUM_NV = 0x8547;
enum GL_COMBINER_SCALE_NV = 0x8548;
enum GL_COMBINER_BIAS_NV = 0x8549;
enum GL_COMBINER_AB_OUTPUT_NV = 0x854A;
enum GL_COMBINER_CD_OUTPUT_NV = 0x854B;
enum GL_COMBINER_SUM_OUTPUT_NV = 0x854C;
enum GL_MAX_GENERAL_COMBINERS_NV = 0x854D;
enum GL_NUM_GENERAL_COMBINERS_NV = 0x854E;
enum GL_COLOR_SUM_CLAMP_NV = 0x854F;
enum GL_COMBINER0_NV = 0x8550;
enum GL_COMBINER1_NV = 0x8551;
enum GL_COMBINER2_NV = 0x8552;
enum GL_COMBINER3_NV = 0x8553;
enum GL_COMBINER4_NV = 0x8554;
enum GL_COMBINER5_NV = 0x8555;
enum GL_COMBINER6_NV = 0x8556;
enum GL_COMBINER7_NV = 0x8557;
alias PFNGLCOMBINERPARAMETERFVNVPROC = void function (GLenum pname, const(GLfloat)* params);
alias PFNGLCOMBINERPARAMETERFNVPROC = void function (GLenum pname, GLfloat param);
alias PFNGLCOMBINERPARAMETERIVNVPROC = void function (GLenum pname, const(GLint)* params);
alias PFNGLCOMBINERPARAMETERINVPROC = void function (GLenum pname, GLint param);
alias PFNGLCOMBINERINPUTNVPROC = void function (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
alias PFNGLCOMBINEROUTPUTNVPROC = void function (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
alias PFNGLFINALCOMBINERINPUTNVPROC = void function (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
alias PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC = void function (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params);
alias PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC = void function (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params);
alias PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC = void function (GLenum stage, GLenum portion, GLenum pname, GLfloat* params);
alias PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC = void function (GLenum stage, GLenum portion, GLenum pname, GLint* params);
alias PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC = void function (GLenum variable, GLenum pname, GLfloat* params);
alias PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC = void function (GLenum variable, GLenum pname, GLint* params);
void glCombinerParameterfvNV (GLenum pname, const(GLfloat)* params);
void glCombinerParameterfNV (GLenum pname, GLfloat param);
void glCombinerParameterivNV (GLenum pname, const(GLint)* params);
void glCombinerParameteriNV (GLenum pname, GLint param);
void glCombinerInputNV (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
void glCombinerOutputNV (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
void glFinalCombinerInputNV (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
void glGetCombinerInputParameterfvNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params);
void glGetCombinerInputParameterivNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params);
void glGetCombinerOutputParameterfvNV (GLenum stage, GLenum portion, GLenum pname, GLfloat* params);
void glGetCombinerOutputParameterivNV (GLenum stage, GLenum portion, GLenum pname, GLint* params);
void glGetFinalCombinerInputParameterfvNV (GLenum variable, GLenum pname, GLfloat* params);
void glGetFinalCombinerInputParameterivNV (GLenum variable, GLenum pname, GLint* params);

/* GL_NV_register_combiners */

enum GL_NV_register_combiners2 = 1;
enum GL_PER_STAGE_CONSTANTS_NV = 0x8535;
alias PFNGLCOMBINERSTAGEPARAMETERFVNVPROC = void function (GLenum stage, GLenum pname, const(GLfloat)* params);
alias PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC = void function (GLenum stage, GLenum pname, GLfloat* params);
void glCombinerStageParameterfvNV (GLenum stage, GLenum pname, const(GLfloat)* params);
void glGetCombinerStageParameterfvNV (GLenum stage, GLenum pname, GLfloat* params);

/* GL_NV_register_combiners2 */

enum GL_NV_shader_atomic_counters = 1;
/* GL_NV_shader_atomic_counters */

enum GL_NV_shader_atomic_float = 1;
/* GL_NV_shader_atomic_float */

enum GL_NV_shader_buffer_load = 1;
enum GL_BUFFER_GPU_ADDRESS_NV = 0x8F1D;
enum GL_GPU_ADDRESS_NV = 0x8F34;
enum GL_MAX_SHADER_BUFFER_ADDRESS_NV = 0x8F35;
alias PFNGLMAKEBUFFERRESIDENTNVPROC = void function (GLenum target, GLenum access);
alias PFNGLMAKEBUFFERNONRESIDENTNVPROC = void function (GLenum target);
alias PFNGLISBUFFERRESIDENTNVPROC = ubyte function (GLenum target);
alias PFNGLMAKENAMEDBUFFERRESIDENTNVPROC = void function (GLuint buffer, GLenum access);
alias PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC = void function (GLuint buffer);
alias PFNGLISNAMEDBUFFERRESIDENTNVPROC = ubyte function (GLuint buffer);
alias PFNGLGETBUFFERPARAMETERUI64VNVPROC = void function (GLenum target, GLenum pname, GLuint64EXT* params);
alias PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC = void function (GLuint buffer, GLenum pname, GLuint64EXT* params);
alias PFNGLGETINTEGERUI64VNVPROC = void function (GLenum value, GLuint64EXT* result);
alias PFNGLUNIFORMUI64NVPROC = void function (GLint location, GLuint64EXT value);
alias PFNGLUNIFORMUI64VNVPROC = void function (GLint location, GLsizei count, const(GLuint64EXT)* value);
alias PFNGLPROGRAMUNIFORMUI64NVPROC = void function (GLuint program, GLint location, GLuint64EXT value);
alias PFNGLPROGRAMUNIFORMUI64VNVPROC = void function (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);
void glMakeBufferResidentNV (GLenum target, GLenum access);
void glMakeBufferNonResidentNV (GLenum target);
GLboolean glIsBufferResidentNV (GLenum target);
void glMakeNamedBufferResidentNV (GLuint buffer, GLenum access);
void glMakeNamedBufferNonResidentNV (GLuint buffer);
GLboolean glIsNamedBufferResidentNV (GLuint buffer);
void glGetBufferParameterui64vNV (GLenum target, GLenum pname, GLuint64EXT* params);
void glGetNamedBufferParameterui64vNV (GLuint buffer, GLenum pname, GLuint64EXT* params);
void glGetIntegerui64vNV (GLenum value, GLuint64EXT* result);
void glUniformui64NV (GLint location, GLuint64EXT value);
void glUniformui64vNV (GLint location, GLsizei count, const(GLuint64EXT)* value);
void glProgramUniformui64NV (GLuint program, GLint location, GLuint64EXT value);
void glProgramUniformui64vNV (GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value);

/* GL_NV_shader_buffer_load */

enum GL_NV_shader_buffer_store = 1;
enum GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = 0x00000010;
/* GL_NV_shader_buffer_store */

enum GL_NV_shader_storage_buffer_object = 1;
/* GL_NV_shader_storage_buffer_object */

enum GL_NV_shader_thread_group = 1;
enum GL_WARP_SIZE_NV = 0x9339;
enum GL_WARPS_PER_SM_NV = 0x933A;
enum GL_SM_COUNT_NV = 0x933B;
/* GL_NV_shader_thread_group */

enum GL_NV_shader_thread_shuffle = 1;
/* GL_NV_shader_thread_shuffle */

enum GL_NV_tessellation_program5 = 1;
enum GL_MAX_PROGRAM_PATCH_ATTRIBS_NV = 0x86D8;
enum GL_TESS_CONTROL_PROGRAM_NV = 0x891E;
enum GL_TESS_EVALUATION_PROGRAM_NV = 0x891F;
enum GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV = 0x8C74;
enum GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV = 0x8C75;
/* GL_NV_tessellation_program5 */

enum GL_NV_texgen_emboss = 1;
enum GL_EMBOSS_LIGHT_NV = 0x855D;
enum GL_EMBOSS_CONSTANT_NV = 0x855E;
enum GL_EMBOSS_MAP_NV = 0x855F;
/* GL_NV_texgen_emboss */

enum GL_NV_texgen_reflection = 1;
enum GL_NORMAL_MAP_NV = 0x8511;
enum GL_REFLECTION_MAP_NV = 0x8512;
/* GL_NV_texgen_reflection */

enum GL_NV_texture_barrier = 1;
alias PFNGLTEXTUREBARRIERNVPROC = void function ();
void glTextureBarrierNV ();

/* GL_NV_texture_barrier */

enum GL_NV_texture_compression_vtc = 1;
/* GL_NV_texture_compression_vtc */

enum GL_NV_texture_env_combine4 = 1;
enum GL_COMBINE4_NV = 0x8503;
enum GL_SOURCE3_RGB_NV = 0x8583;
enum GL_SOURCE3_ALPHA_NV = 0x858B;
enum GL_OPERAND3_RGB_NV = 0x8593;
enum GL_OPERAND3_ALPHA_NV = 0x859B;
/* GL_NV_texture_env_combine4 */

enum GL_NV_texture_expand_normal = 1;
enum GL_TEXTURE_UNSIGNED_REMAP_MODE_NV = 0x888F;
/* GL_NV_texture_expand_normal */

enum GL_NV_texture_multisample = 1;
enum GL_TEXTURE_COVERAGE_SAMPLES_NV = 0x9045;
enum GL_TEXTURE_COLOR_SAMPLES_NV = 0x9046;
alias PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC = void function (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
alias PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC = void function (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
alias PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC = void function (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
alias PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC = void function (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
alias PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC = void function (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
alias PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC = void function (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTexImage2DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTexImage3DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTextureImage2DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTextureImage3DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTextureImage2DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTextureImage3DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);

/* GL_NV_texture_multisample */

enum GL_NV_texture_rectangle = 1;
enum GL_TEXTURE_RECTANGLE_NV = 0x84F5;
enum GL_TEXTURE_BINDING_RECTANGLE_NV = 0x84F6;
enum GL_PROXY_TEXTURE_RECTANGLE_NV = 0x84F7;
enum GL_MAX_RECTANGLE_TEXTURE_SIZE_NV = 0x84F8;
/* GL_NV_texture_rectangle */

enum GL_NV_texture_shader = 1;
enum GL_OFFSET_TEXTURE_RECTANGLE_NV = 0x864C;
enum GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = 0x864D;
enum GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = 0x864E;
enum GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = 0x86D9;
enum GL_UNSIGNED_INT_S8_S8_8_8_NV = 0x86DA;
enum GL_UNSIGNED_INT_8_8_S8_S8_REV_NV = 0x86DB;
enum GL_DSDT_MAG_INTENSITY_NV = 0x86DC;
enum GL_SHADER_CONSISTENT_NV = 0x86DD;
enum GL_TEXTURE_SHADER_NV = 0x86DE;
enum GL_SHADER_OPERATION_NV = 0x86DF;
enum GL_CULL_MODES_NV = 0x86E0;
enum GL_OFFSET_TEXTURE_MATRIX_NV = 0x86E1;
enum GL_OFFSET_TEXTURE_SCALE_NV = 0x86E2;
enum GL_OFFSET_TEXTURE_BIAS_NV = 0x86E3;
enum GL_OFFSET_TEXTURE_2D_MATRIX_NV = 0x86E1;
enum GL_OFFSET_TEXTURE_2D_SCALE_NV = 0x86E2;
enum GL_OFFSET_TEXTURE_2D_BIAS_NV = 0x86E3;
enum GL_PREVIOUS_TEXTURE_INPUT_NV = 0x86E4;
enum GL_CONST_EYE_NV = 0x86E5;
enum GL_PASS_THROUGH_NV = 0x86E6;
enum GL_CULL_FRAGMENT_NV = 0x86E7;
enum GL_OFFSET_TEXTURE_2D_NV = 0x86E8;
enum GL_DEPENDENT_AR_TEXTURE_2D_NV = 0x86E9;
enum GL_DEPENDENT_GB_TEXTURE_2D_NV = 0x86EA;
enum GL_DOT_PRODUCT_NV = 0x86EC;
enum GL_DOT_PRODUCT_DEPTH_REPLACE_NV = 0x86ED;
enum GL_DOT_PRODUCT_TEXTURE_2D_NV = 0x86EE;
enum GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = 0x86F0;
enum GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = 0x86F1;
enum GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = 0x86F2;
enum GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = 0x86F3;
enum GL_HILO_NV = 0x86F4;
enum GL_DSDT_NV = 0x86F5;
enum GL_DSDT_MAG_NV = 0x86F6;
enum GL_DSDT_MAG_VIB_NV = 0x86F7;
enum GL_HILO16_NV = 0x86F8;
enum GL_SIGNED_HILO_NV = 0x86F9;
enum GL_SIGNED_HILO16_NV = 0x86FA;
enum GL_SIGNED_RGBA_NV = 0x86FB;
enum GL_SIGNED_RGBA8_NV = 0x86FC;
enum GL_SIGNED_RGB_NV = 0x86FE;
enum GL_SIGNED_RGB8_NV = 0x86FF;
enum GL_SIGNED_LUMINANCE_NV = 0x8701;
enum GL_SIGNED_LUMINANCE8_NV = 0x8702;
enum GL_SIGNED_LUMINANCE_ALPHA_NV = 0x8703;
enum GL_SIGNED_LUMINANCE8_ALPHA8_NV = 0x8704;
enum GL_SIGNED_ALPHA_NV = 0x8705;
enum GL_SIGNED_ALPHA8_NV = 0x8706;
enum GL_SIGNED_INTENSITY_NV = 0x8707;
enum GL_SIGNED_INTENSITY8_NV = 0x8708;
enum GL_DSDT8_NV = 0x8709;
enum GL_DSDT8_MAG8_NV = 0x870A;
enum GL_DSDT8_MAG8_INTENSITY8_NV = 0x870B;
enum GL_SIGNED_RGB_UNSIGNED_ALPHA_NV = 0x870C;
enum GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = 0x870D;
enum GL_HI_SCALE_NV = 0x870E;
enum GL_LO_SCALE_NV = 0x870F;
enum GL_DS_SCALE_NV = 0x8710;
enum GL_DT_SCALE_NV = 0x8711;
enum GL_MAGNITUDE_SCALE_NV = 0x8712;
enum GL_VIBRANCE_SCALE_NV = 0x8713;
enum GL_HI_BIAS_NV = 0x8714;
enum GL_LO_BIAS_NV = 0x8715;
enum GL_DS_BIAS_NV = 0x8716;
enum GL_DT_BIAS_NV = 0x8717;
enum GL_MAGNITUDE_BIAS_NV = 0x8718;
enum GL_VIBRANCE_BIAS_NV = 0x8719;
enum GL_TEXTURE_BORDER_VALUES_NV = 0x871A;
enum GL_TEXTURE_HI_SIZE_NV = 0x871B;
enum GL_TEXTURE_LO_SIZE_NV = 0x871C;
enum GL_TEXTURE_DS_SIZE_NV = 0x871D;
enum GL_TEXTURE_DT_SIZE_NV = 0x871E;
enum GL_TEXTURE_MAG_SIZE_NV = 0x871F;
/* GL_NV_texture_shader */

enum GL_NV_texture_shader2 = 1;
enum GL_DOT_PRODUCT_TEXTURE_3D_NV = 0x86EF;
/* GL_NV_texture_shader2 */

enum GL_NV_texture_shader3 = 1;
enum GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV = 0x8850;
enum GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV = 0x8851;
enum GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8852;
enum GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV = 0x8853;
enum GL_OFFSET_HILO_TEXTURE_2D_NV = 0x8854;
enum GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV = 0x8855;
enum GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV = 0x8856;
enum GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8857;
enum GL_DEPENDENT_HILO_TEXTURE_2D_NV = 0x8858;
enum GL_DEPENDENT_RGB_TEXTURE_3D_NV = 0x8859;
enum GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV = 0x885A;
enum GL_DOT_PRODUCT_PASS_THROUGH_NV = 0x885B;
enum GL_DOT_PRODUCT_TEXTURE_1D_NV = 0x885C;
enum GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV = 0x885D;
enum GL_HILO8_NV = 0x885E;
enum GL_SIGNED_HILO8_NV = 0x885F;
enum GL_FORCE_BLUE_TO_ONE_NV = 0x8860;
/* GL_NV_texture_shader3 */

enum GL_NV_transform_feedback = 1;
enum GL_BACK_PRIMARY_COLOR_NV = 0x8C77;
enum GL_BACK_SECONDARY_COLOR_NV = 0x8C78;
enum GL_TEXTURE_COORD_NV = 0x8C79;
enum GL_CLIP_DISTANCE_NV = 0x8C7A;
enum GL_VERTEX_ID_NV = 0x8C7B;
enum GL_PRIMITIVE_ID_NV = 0x8C7C;
enum GL_GENERIC_ATTRIB_NV = 0x8C7D;
enum GL_TRANSFORM_FEEDBACK_ATTRIBS_NV = 0x8C7E;
enum GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV = 0x8C7F;
enum GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV = 0x8C80;
enum GL_ACTIVE_VARYINGS_NV = 0x8C81;
enum GL_ACTIVE_VARYING_MAX_LENGTH_NV = 0x8C82;
enum GL_TRANSFORM_FEEDBACK_VARYINGS_NV = 0x8C83;
enum GL_TRANSFORM_FEEDBACK_BUFFER_START_NV = 0x8C84;
enum GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV = 0x8C85;
enum GL_TRANSFORM_FEEDBACK_RECORD_NV = 0x8C86;
enum GL_PRIMITIVES_GENERATED_NV = 0x8C87;
enum GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV = 0x8C88;
enum GL_RASTERIZER_DISCARD_NV = 0x8C89;
enum GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV = 0x8C8A;
enum GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV = 0x8C8B;
enum GL_INTERLEAVED_ATTRIBS_NV = 0x8C8C;
enum GL_SEPARATE_ATTRIBS_NV = 0x8C8D;
enum GL_TRANSFORM_FEEDBACK_BUFFER_NV = 0x8C8E;
enum GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV = 0x8C8F;
enum GL_LAYER_NV = 0x8DAA;
enum GL_NEXT_BUFFER_NV = -2;
enum GL_SKIP_COMPONENTS4_NV = -3;
enum GL_SKIP_COMPONENTS3_NV = -4;
enum GL_SKIP_COMPONENTS2_NV = -5;
enum GL_SKIP_COMPONENTS1_NV = -6;
alias PFNGLBEGINTRANSFORMFEEDBACKNVPROC = void function (GLenum primitiveMode);
alias PFNGLENDTRANSFORMFEEDBACKNVPROC = void function ();
alias PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC = void function (GLuint count, const(GLint)* attribs, GLenum bufferMode);
alias PFNGLBINDBUFFERRANGENVPROC = void function (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
alias PFNGLBINDBUFFEROFFSETNVPROC = void function (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
alias PFNGLBINDBUFFERBASENVPROC = void function (GLenum target, GLuint index, GLuint buffer);
alias PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC = void function (GLuint program, GLsizei count, const(GLint)* locations, GLenum bufferMode);
alias PFNGLACTIVEVARYINGNVPROC = void function (GLuint program, const(GLchar)* name);
alias PFNGLGETVARYINGLOCATIONNVPROC = int function (GLuint program, const(GLchar)* name);
alias PFNGLGETACTIVEVARYINGNVPROC = void function (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
alias PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC = void function (GLuint program, GLuint index, GLint* location);
alias PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC = void function (GLsizei count, const(GLint)* attribs, GLsizei nbuffers, const(GLint)* bufstreams, GLenum bufferMode);
void glBeginTransformFeedbackNV (GLenum primitiveMode);
void glEndTransformFeedbackNV ();
void glTransformFeedbackAttribsNV (GLuint count, const(GLint)* attribs, GLenum bufferMode);
void glBindBufferRangeNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferOffsetNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferBaseNV (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryingsNV (GLuint program, GLsizei count, const(GLint)* locations, GLenum bufferMode);
void glActiveVaryingNV (GLuint program, const(GLchar)* name);
GLint glGetVaryingLocationNV (GLuint program, const(GLchar)* name);
void glGetActiveVaryingNV (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
void glGetTransformFeedbackVaryingNV (GLuint program, GLuint index, GLint* location);
void glTransformFeedbackStreamAttribsNV (GLsizei count, const(GLint)* attribs, GLsizei nbuffers, const(GLint)* bufstreams, GLenum bufferMode);

/* GL_NV_transform_feedback */

enum GL_NV_transform_feedback2 = 1;
enum GL_TRANSFORM_FEEDBACK_NV = 0x8E22;
enum GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = 0x8E23;
enum GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = 0x8E24;
enum GL_TRANSFORM_FEEDBACK_BINDING_NV = 0x8E25;
alias PFNGLBINDTRANSFORMFEEDBACKNVPROC = void function (GLenum target, GLuint id);
alias PFNGLDELETETRANSFORMFEEDBACKSNVPROC = void function (GLsizei n, const(GLuint)* ids);
alias PFNGLGENTRANSFORMFEEDBACKSNVPROC = void function (GLsizei n, GLuint* ids);
alias PFNGLISTRANSFORMFEEDBACKNVPROC = ubyte function (GLuint id);
alias PFNGLPAUSETRANSFORMFEEDBACKNVPROC = void function ();
alias PFNGLRESUMETRANSFORMFEEDBACKNVPROC = void function ();
alias PFNGLDRAWTRANSFORMFEEDBACKNVPROC = void function (GLenum mode, GLuint id);
void glBindTransformFeedbackNV (GLenum target, GLuint id);
void glDeleteTransformFeedbacksNV (GLsizei n, const(GLuint)* ids);
void glGenTransformFeedbacksNV (GLsizei n, GLuint* ids);
GLboolean glIsTransformFeedbackNV (GLuint id);
void glPauseTransformFeedbackNV ();
void glResumeTransformFeedbackNV ();
void glDrawTransformFeedbackNV (GLenum mode, GLuint id);

/* GL_NV_transform_feedback2 */

enum GL_NV_vdpau_interop = 1;
alias GLvdpauSurfaceNV = c_long;
enum GL_SURFACE_STATE_NV = 0x86EB;
enum GL_SURFACE_REGISTERED_NV = 0x86FD;
enum GL_SURFACE_MAPPED_NV = 0x8700;
enum GL_WRITE_DISCARD_NV = 0x88BE;
alias PFNGLVDPAUINITNVPROC = void function (const(void)* vdpDevice, const(void)* getProcAddress);
alias PFNGLVDPAUFININVPROC = void function ();
alias PFNGLVDPAUREGISTERVIDEOSURFACENVPROC = c_long function (const(void)* vdpSurface, GLenum target, GLsizei numTextureNames, const(GLuint)* textureNames);
alias PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC = c_long function (const(void)* vdpSurface, GLenum target, GLsizei numTextureNames, const(GLuint)* textureNames);
alias PFNGLVDPAUISSURFACENVPROC = ubyte function (GLvdpauSurfaceNV surface);
alias PFNGLVDPAUUNREGISTERSURFACENVPROC = void function (GLvdpauSurfaceNV surface);
alias PFNGLVDPAUGETSURFACEIVNVPROC = void function (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);
alias PFNGLVDPAUSURFACEACCESSNVPROC = void function (GLvdpauSurfaceNV surface, GLenum access);
alias PFNGLVDPAUMAPSURFACESNVPROC = void function (GLsizei numSurfaces, const(GLvdpauSurfaceNV)* surfaces);
alias PFNGLVDPAUUNMAPSURFACESNVPROC = void function (GLsizei numSurface, const(GLvdpauSurfaceNV)* surfaces);
void glVDPAUInitNV (const(void)* vdpDevice, const(void)* getProcAddress);
void glVDPAUFiniNV ();
GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV (const(void)* vdpSurface, GLenum target, GLsizei numTextureNames, const(GLuint)* textureNames);
GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV (const(void)* vdpSurface, GLenum target, GLsizei numTextureNames, const(GLuint)* textureNames);
GLboolean glVDPAUIsSurfaceNV (GLvdpauSurfaceNV surface);
void glVDPAUUnregisterSurfaceNV (GLvdpauSurfaceNV surface);
void glVDPAUGetSurfaceivNV (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);
void glVDPAUSurfaceAccessNV (GLvdpauSurfaceNV surface, GLenum access);
void glVDPAUMapSurfacesNV (GLsizei numSurfaces, const(GLvdpauSurfaceNV)* surfaces);
void glVDPAUUnmapSurfacesNV (GLsizei numSurface, const(GLvdpauSurfaceNV)* surfaces);

/* GL_NV_vdpau_interop */

enum GL_NV_vertex_array_range = 1;
enum GL_VERTEX_ARRAY_RANGE_NV = 0x851D;
enum GL_VERTEX_ARRAY_RANGE_LENGTH_NV = 0x851E;
enum GL_VERTEX_ARRAY_RANGE_VALID_NV = 0x851F;
enum GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 0x8520;
enum GL_VERTEX_ARRAY_RANGE_POINTER_NV = 0x8521;
alias PFNGLFLUSHVERTEXARRAYRANGENVPROC = void function ();
alias PFNGLVERTEXARRAYRANGENVPROC = void function (GLsizei length, const(void)* pointer);
void glFlushVertexArrayRangeNV ();
void glVertexArrayRangeNV (GLsizei length, const(void)* pointer);

/* GL_NV_vertex_array_range */

enum GL_NV_vertex_array_range2 = 1;
enum GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = 0x8533;
/* GL_NV_vertex_array_range2 */

enum GL_NV_vertex_attrib_integer_64bit = 1;
alias PFNGLVERTEXATTRIBL1I64NVPROC = void function (GLuint index, GLint64EXT x);
alias PFNGLVERTEXATTRIBL2I64NVPROC = void function (GLuint index, GLint64EXT x, GLint64EXT y);
alias PFNGLVERTEXATTRIBL3I64NVPROC = void function (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z);
alias PFNGLVERTEXATTRIBL4I64NVPROC = void function (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
alias PFNGLVERTEXATTRIBL1I64VNVPROC = void function (GLuint index, const(GLint64EXT)* v);
alias PFNGLVERTEXATTRIBL2I64VNVPROC = void function (GLuint index, const(GLint64EXT)* v);
alias PFNGLVERTEXATTRIBL3I64VNVPROC = void function (GLuint index, const(GLint64EXT)* v);
alias PFNGLVERTEXATTRIBL4I64VNVPROC = void function (GLuint index, const(GLint64EXT)* v);
alias PFNGLVERTEXATTRIBL1UI64NVPROC = void function (GLuint index, GLuint64EXT x);
alias PFNGLVERTEXATTRIBL2UI64NVPROC = void function (GLuint index, GLuint64EXT x, GLuint64EXT y);
alias PFNGLVERTEXATTRIBL3UI64NVPROC = void function (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
alias PFNGLVERTEXATTRIBL4UI64NVPROC = void function (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
alias PFNGLVERTEXATTRIBL1UI64VNVPROC = void function (GLuint index, const(GLuint64EXT)* v);
alias PFNGLVERTEXATTRIBL2UI64VNVPROC = void function (GLuint index, const(GLuint64EXT)* v);
alias PFNGLVERTEXATTRIBL3UI64VNVPROC = void function (GLuint index, const(GLuint64EXT)* v);
alias PFNGLVERTEXATTRIBL4UI64VNVPROC = void function (GLuint index, const(GLuint64EXT)* v);
alias PFNGLGETVERTEXATTRIBLI64VNVPROC = void function (GLuint index, GLenum pname, GLint64EXT* params);
alias PFNGLGETVERTEXATTRIBLUI64VNVPROC = void function (GLuint index, GLenum pname, GLuint64EXT* params);
alias PFNGLVERTEXATTRIBLFORMATNVPROC = void function (GLuint index, GLint size, GLenum type, GLsizei stride);
void glVertexAttribL1i64NV (GLuint index, GLint64EXT x);
void glVertexAttribL2i64NV (GLuint index, GLint64EXT x, GLint64EXT y);
void glVertexAttribL3i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glVertexAttribL4i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glVertexAttribL1i64vNV (GLuint index, const(GLint64EXT)* v);
void glVertexAttribL2i64vNV (GLuint index, const(GLint64EXT)* v);
void glVertexAttribL3i64vNV (GLuint index, const(GLint64EXT)* v);
void glVertexAttribL4i64vNV (GLuint index, const(GLint64EXT)* v);
void glVertexAttribL1ui64NV (GLuint index, GLuint64EXT x);
void glVertexAttribL2ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y);
void glVertexAttribL3ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glVertexAttribL4ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glVertexAttribL1ui64vNV (GLuint index, const(GLuint64EXT)* v);
void glVertexAttribL2ui64vNV (GLuint index, const(GLuint64EXT)* v);
void glVertexAttribL3ui64vNV (GLuint index, const(GLuint64EXT)* v);
void glVertexAttribL4ui64vNV (GLuint index, const(GLuint64EXT)* v);
void glGetVertexAttribLi64vNV (GLuint index, GLenum pname, GLint64EXT* params);
void glGetVertexAttribLui64vNV (GLuint index, GLenum pname, GLuint64EXT* params);
void glVertexAttribLFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride);

/* GL_NV_vertex_attrib_integer_64bit */

enum GL_NV_vertex_buffer_unified_memory = 1;
enum GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV = 0x8F1E;
enum GL_ELEMENT_ARRAY_UNIFIED_NV = 0x8F1F;
enum GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV = 0x8F20;
enum GL_VERTEX_ARRAY_ADDRESS_NV = 0x8F21;
enum GL_NORMAL_ARRAY_ADDRESS_NV = 0x8F22;
enum GL_COLOR_ARRAY_ADDRESS_NV = 0x8F23;
enum GL_INDEX_ARRAY_ADDRESS_NV = 0x8F24;
enum GL_TEXTURE_COORD_ARRAY_ADDRESS_NV = 0x8F25;
enum GL_EDGE_FLAG_ARRAY_ADDRESS_NV = 0x8F26;
enum GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV = 0x8F27;
enum GL_FOG_COORD_ARRAY_ADDRESS_NV = 0x8F28;
enum GL_ELEMENT_ARRAY_ADDRESS_NV = 0x8F29;
enum GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV = 0x8F2A;
enum GL_VERTEX_ARRAY_LENGTH_NV = 0x8F2B;
enum GL_NORMAL_ARRAY_LENGTH_NV = 0x8F2C;
enum GL_COLOR_ARRAY_LENGTH_NV = 0x8F2D;
enum GL_INDEX_ARRAY_LENGTH_NV = 0x8F2E;
enum GL_TEXTURE_COORD_ARRAY_LENGTH_NV = 0x8F2F;
enum GL_EDGE_FLAG_ARRAY_LENGTH_NV = 0x8F30;
enum GL_SECONDARY_COLOR_ARRAY_LENGTH_NV = 0x8F31;
enum GL_FOG_COORD_ARRAY_LENGTH_NV = 0x8F32;
enum GL_ELEMENT_ARRAY_LENGTH_NV = 0x8F33;
enum GL_DRAW_INDIRECT_UNIFIED_NV = 0x8F40;
enum GL_DRAW_INDIRECT_ADDRESS_NV = 0x8F41;
enum GL_DRAW_INDIRECT_LENGTH_NV = 0x8F42;
alias PFNGLBUFFERADDRESSRANGENVPROC = void function (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length);
alias PFNGLVERTEXFORMATNVPROC = void function (GLint size, GLenum type, GLsizei stride);
alias PFNGLNORMALFORMATNVPROC = void function (GLenum type, GLsizei stride);
alias PFNGLCOLORFORMATNVPROC = void function (GLint size, GLenum type, GLsizei stride);
alias PFNGLINDEXFORMATNVPROC = void function (GLenum type, GLsizei stride);
alias PFNGLTEXCOORDFORMATNVPROC = void function (GLint size, GLenum type, GLsizei stride);
alias PFNGLEDGEFLAGFORMATNVPROC = void function (GLsizei stride);
alias PFNGLSECONDARYCOLORFORMATNVPROC = void function (GLint size, GLenum type, GLsizei stride);
alias PFNGLFOGCOORDFORMATNVPROC = void function (GLenum type, GLsizei stride);
alias PFNGLVERTEXATTRIBFORMATNVPROC = void function (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride);
alias PFNGLVERTEXATTRIBIFORMATNVPROC = void function (GLuint index, GLint size, GLenum type, GLsizei stride);
alias PFNGLGETINTEGERUI64I_VNVPROC = void function (GLenum value, GLuint index, GLuint64EXT* result);
void glBufferAddressRangeNV (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length);
void glVertexFormatNV (GLint size, GLenum type, GLsizei stride);
void glNormalFormatNV (GLenum type, GLsizei stride);
void glColorFormatNV (GLint size, GLenum type, GLsizei stride);
void glIndexFormatNV (GLenum type, GLsizei stride);
void glTexCoordFormatNV (GLint size, GLenum type, GLsizei stride);
void glEdgeFlagFormatNV (GLsizei stride);
void glSecondaryColorFormatNV (GLint size, GLenum type, GLsizei stride);
void glFogCoordFormatNV (GLenum type, GLsizei stride);
void glVertexAttribFormatNV (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride);
void glVertexAttribIFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride);
void glGetIntegerui64i_vNV (GLenum value, GLuint index, GLuint64EXT* result);

/* GL_NV_vertex_buffer_unified_memory */

enum GL_NV_vertex_program = 1;
enum GL_VERTEX_PROGRAM_NV = 0x8620;
enum GL_VERTEX_STATE_PROGRAM_NV = 0x8621;
enum GL_ATTRIB_ARRAY_SIZE_NV = 0x8623;
enum GL_ATTRIB_ARRAY_STRIDE_NV = 0x8624;
enum GL_ATTRIB_ARRAY_TYPE_NV = 0x8625;
enum GL_CURRENT_ATTRIB_NV = 0x8626;
enum GL_PROGRAM_LENGTH_NV = 0x8627;
enum GL_PROGRAM_STRING_NV = 0x8628;
enum GL_MODELVIEW_PROJECTION_NV = 0x8629;
enum GL_IDENTITY_NV = 0x862A;
enum GL_INVERSE_NV = 0x862B;
enum GL_TRANSPOSE_NV = 0x862C;
enum GL_INVERSE_TRANSPOSE_NV = 0x862D;
enum GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862E;
enum GL_MAX_TRACK_MATRICES_NV = 0x862F;
enum GL_MATRIX0_NV = 0x8630;
enum GL_MATRIX1_NV = 0x8631;
enum GL_MATRIX2_NV = 0x8632;
enum GL_MATRIX3_NV = 0x8633;
enum GL_MATRIX4_NV = 0x8634;
enum GL_MATRIX5_NV = 0x8635;
enum GL_MATRIX6_NV = 0x8636;
enum GL_MATRIX7_NV = 0x8637;
enum GL_CURRENT_MATRIX_STACK_DEPTH_NV = 0x8640;
enum GL_CURRENT_MATRIX_NV = 0x8641;
enum GL_VERTEX_PROGRAM_POINT_SIZE_NV = 0x8642;
enum GL_VERTEX_PROGRAM_TWO_SIDE_NV = 0x8643;
enum GL_PROGRAM_PARAMETER_NV = 0x8644;
enum GL_ATTRIB_ARRAY_POINTER_NV = 0x8645;
enum GL_PROGRAM_TARGET_NV = 0x8646;
enum GL_PROGRAM_RESIDENT_NV = 0x8647;
enum GL_TRACK_MATRIX_NV = 0x8648;
enum GL_TRACK_MATRIX_TRANSFORM_NV = 0x8649;
enum GL_VERTEX_PROGRAM_BINDING_NV = 0x864A;
enum GL_PROGRAM_ERROR_POSITION_NV = 0x864B;
enum GL_VERTEX_ATTRIB_ARRAY0_NV = 0x8650;
enum GL_VERTEX_ATTRIB_ARRAY1_NV = 0x8651;
enum GL_VERTEX_ATTRIB_ARRAY2_NV = 0x8652;
enum GL_VERTEX_ATTRIB_ARRAY3_NV = 0x8653;
enum GL_VERTEX_ATTRIB_ARRAY4_NV = 0x8654;
enum GL_VERTEX_ATTRIB_ARRAY5_NV = 0x8655;
enum GL_VERTEX_ATTRIB_ARRAY6_NV = 0x8656;
enum GL_VERTEX_ATTRIB_ARRAY7_NV = 0x8657;
enum GL_VERTEX_ATTRIB_ARRAY8_NV = 0x8658;
enum GL_VERTEX_ATTRIB_ARRAY9_NV = 0x8659;
enum GL_VERTEX_ATTRIB_ARRAY10_NV = 0x865A;
enum GL_VERTEX_ATTRIB_ARRAY11_NV = 0x865B;
enum GL_VERTEX_ATTRIB_ARRAY12_NV = 0x865C;
enum GL_VERTEX_ATTRIB_ARRAY13_NV = 0x865D;
enum GL_VERTEX_ATTRIB_ARRAY14_NV = 0x865E;
enum GL_VERTEX_ATTRIB_ARRAY15_NV = 0x865F;
enum GL_MAP1_VERTEX_ATTRIB0_4_NV = 0x8660;
enum GL_MAP1_VERTEX_ATTRIB1_4_NV = 0x8661;
enum GL_MAP1_VERTEX_ATTRIB2_4_NV = 0x8662;
enum GL_MAP1_VERTEX_ATTRIB3_4_NV = 0x8663;
enum GL_MAP1_VERTEX_ATTRIB4_4_NV = 0x8664;
enum GL_MAP1_VERTEX_ATTRIB5_4_NV = 0x8665;
enum GL_MAP1_VERTEX_ATTRIB6_4_NV = 0x8666;
enum GL_MAP1_VERTEX_ATTRIB7_4_NV = 0x8667;
enum GL_MAP1_VERTEX_ATTRIB8_4_NV = 0x8668;
enum GL_MAP1_VERTEX_ATTRIB9_4_NV = 0x8669;
enum GL_MAP1_VERTEX_ATTRIB10_4_NV = 0x866A;
enum GL_MAP1_VERTEX_ATTRIB11_4_NV = 0x866B;
enum GL_MAP1_VERTEX_ATTRIB12_4_NV = 0x866C;
enum GL_MAP1_VERTEX_ATTRIB13_4_NV = 0x866D;
enum GL_MAP1_VERTEX_ATTRIB14_4_NV = 0x866E;
enum GL_MAP1_VERTEX_ATTRIB15_4_NV = 0x866F;
enum GL_MAP2_VERTEX_ATTRIB0_4_NV = 0x8670;
enum GL_MAP2_VERTEX_ATTRIB1_4_NV = 0x8671;
enum GL_MAP2_VERTEX_ATTRIB2_4_NV = 0x8672;
enum GL_MAP2_VERTEX_ATTRIB3_4_NV = 0x8673;
enum GL_MAP2_VERTEX_ATTRIB4_4_NV = 0x8674;
enum GL_MAP2_VERTEX_ATTRIB5_4_NV = 0x8675;
enum GL_MAP2_VERTEX_ATTRIB6_4_NV = 0x8676;
enum GL_MAP2_VERTEX_ATTRIB7_4_NV = 0x8677;
enum GL_MAP2_VERTEX_ATTRIB8_4_NV = 0x8678;
enum GL_MAP2_VERTEX_ATTRIB9_4_NV = 0x8679;
enum GL_MAP2_VERTEX_ATTRIB10_4_NV = 0x867A;
enum GL_MAP2_VERTEX_ATTRIB11_4_NV = 0x867B;
enum GL_MAP2_VERTEX_ATTRIB12_4_NV = 0x867C;
enum GL_MAP2_VERTEX_ATTRIB13_4_NV = 0x867D;
enum GL_MAP2_VERTEX_ATTRIB14_4_NV = 0x867E;
enum GL_MAP2_VERTEX_ATTRIB15_4_NV = 0x867F;
alias PFNGLAREPROGRAMSRESIDENTNVPROC = ubyte function (GLsizei n, const(GLuint)* programs, GLboolean* residences);
alias PFNGLBINDPROGRAMNVPROC = void function (GLenum target, GLuint id);
alias PFNGLDELETEPROGRAMSNVPROC = void function (GLsizei n, const(GLuint)* programs);
alias PFNGLEXECUTEPROGRAMNVPROC = void function (GLenum target, GLuint id, const(GLfloat)* params);
alias PFNGLGENPROGRAMSNVPROC = void function (GLsizei n, GLuint* programs);
alias PFNGLGETPROGRAMPARAMETERDVNVPROC = void function (GLenum target, GLuint index, GLenum pname, GLdouble* params);
alias PFNGLGETPROGRAMPARAMETERFVNVPROC = void function (GLenum target, GLuint index, GLenum pname, GLfloat* params);
alias PFNGLGETPROGRAMIVNVPROC = void function (GLuint id, GLenum pname, GLint* params);
alias PFNGLGETPROGRAMSTRINGNVPROC = void function (GLuint id, GLenum pname, GLubyte* program);
alias PFNGLGETTRACKMATRIXIVNVPROC = void function (GLenum target, GLuint address, GLenum pname, GLint* params);
alias PFNGLGETVERTEXATTRIBDVNVPROC = void function (GLuint index, GLenum pname, GLdouble* params);
alias PFNGLGETVERTEXATTRIBFVNVPROC = void function (GLuint index, GLenum pname, GLfloat* params);
alias PFNGLGETVERTEXATTRIBIVNVPROC = void function (GLuint index, GLenum pname, GLint* params);
alias PFNGLGETVERTEXATTRIBPOINTERVNVPROC = void function (GLuint index, GLenum pname, void** pointer);
alias PFNGLISPROGRAMNVPROC = ubyte function (GLuint id);
alias PFNGLLOADPROGRAMNVPROC = void function (GLenum target, GLuint id, GLsizei len, const(GLubyte)* program);
alias PFNGLPROGRAMPARAMETER4DNVPROC = void function (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLPROGRAMPARAMETER4DVNVPROC = void function (GLenum target, GLuint index, const(GLdouble)* v);
alias PFNGLPROGRAMPARAMETER4FNVPROC = void function (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLPROGRAMPARAMETER4FVNVPROC = void function (GLenum target, GLuint index, const(GLfloat)* v);
alias PFNGLPROGRAMPARAMETERS4DVNVPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLdouble)* v);
alias PFNGLPROGRAMPARAMETERS4FVNVPROC = void function (GLenum target, GLuint index, GLsizei count, const(GLfloat)* v);
alias PFNGLREQUESTRESIDENTPROGRAMSNVPROC = void function (GLsizei n, const(GLuint)* programs);
alias PFNGLTRACKMATRIXNVPROC = void function (GLenum target, GLuint address, GLenum matrix, GLenum transform);
alias PFNGLVERTEXATTRIBPOINTERNVPROC = void function (GLuint index, GLint fsize, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLVERTEXATTRIB1DNVPROC = void function (GLuint index, GLdouble x);
alias PFNGLVERTEXATTRIB1DVNVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB1FNVPROC = void function (GLuint index, GLfloat x);
alias PFNGLVERTEXATTRIB1FVNVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB1SNVPROC = void function (GLuint index, GLshort x);
alias PFNGLVERTEXATTRIB1SVNVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB2DNVPROC = void function (GLuint index, GLdouble x, GLdouble y);
alias PFNGLVERTEXATTRIB2DVNVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB2FNVPROC = void function (GLuint index, GLfloat x, GLfloat y);
alias PFNGLVERTEXATTRIB2FVNVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB2SNVPROC = void function (GLuint index, GLshort x, GLshort y);
alias PFNGLVERTEXATTRIB2SVNVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB3DNVPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias PFNGLVERTEXATTRIB3DVNVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB3FNVPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLVERTEXATTRIB3FVNVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB3SNVPROC = void function (GLuint index, GLshort x, GLshort y, GLshort z);
alias PFNGLVERTEXATTRIB3SVNVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4DNVPROC = void function (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias PFNGLVERTEXATTRIB4DVNVPROC = void function (GLuint index, const(GLdouble)* v);
alias PFNGLVERTEXATTRIB4FNVPROC = void function (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLVERTEXATTRIB4FVNVPROC = void function (GLuint index, const(GLfloat)* v);
alias PFNGLVERTEXATTRIB4SNVPROC = void function (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias PFNGLVERTEXATTRIB4SVNVPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIB4UBNVPROC = void function (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias PFNGLVERTEXATTRIB4UBVNVPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIBS1DVNVPROC = void function (GLuint index, GLsizei count, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBS1FVNVPROC = void function (GLuint index, GLsizei count, const(GLfloat)* v);
alias PFNGLVERTEXATTRIBS1SVNVPROC = void function (GLuint index, GLsizei count, const(GLshort)* v);
alias PFNGLVERTEXATTRIBS2DVNVPROC = void function (GLuint index, GLsizei count, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBS2FVNVPROC = void function (GLuint index, GLsizei count, const(GLfloat)* v);
alias PFNGLVERTEXATTRIBS2SVNVPROC = void function (GLuint index, GLsizei count, const(GLshort)* v);
alias PFNGLVERTEXATTRIBS3DVNVPROC = void function (GLuint index, GLsizei count, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBS3FVNVPROC = void function (GLuint index, GLsizei count, const(GLfloat)* v);
alias PFNGLVERTEXATTRIBS3SVNVPROC = void function (GLuint index, GLsizei count, const(GLshort)* v);
alias PFNGLVERTEXATTRIBS4DVNVPROC = void function (GLuint index, GLsizei count, const(GLdouble)* v);
alias PFNGLVERTEXATTRIBS4FVNVPROC = void function (GLuint index, GLsizei count, const(GLfloat)* v);
alias PFNGLVERTEXATTRIBS4SVNVPROC = void function (GLuint index, GLsizei count, const(GLshort)* v);
alias PFNGLVERTEXATTRIBS4UBVNVPROC = void function (GLuint index, GLsizei count, const(GLubyte)* v);
GLboolean glAreProgramsResidentNV (GLsizei n, const(GLuint)* programs, GLboolean* residences);
void glBindProgramNV (GLenum target, GLuint id);
void glDeleteProgramsNV (GLsizei n, const(GLuint)* programs);
void glExecuteProgramNV (GLenum target, GLuint id, const(GLfloat)* params);
void glGenProgramsNV (GLsizei n, GLuint* programs);
void glGetProgramParameterdvNV (GLenum target, GLuint index, GLenum pname, GLdouble* params);
void glGetProgramParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat* params);
void glGetProgramivNV (GLuint id, GLenum pname, GLint* params);
void glGetProgramStringNV (GLuint id, GLenum pname, GLubyte* program);
void glGetTrackMatrixivNV (GLenum target, GLuint address, GLenum pname, GLint* params);
void glGetVertexAttribdvNV (GLuint index, GLenum pname, GLdouble* params);
void glGetVertexAttribfvNV (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribivNV (GLuint index, GLenum pname, GLint* params);
void glGetVertexAttribPointervNV (GLuint index, GLenum pname, void** pointer);
GLboolean glIsProgramNV (GLuint id);
void glLoadProgramNV (GLenum target, GLuint id, GLsizei len, const(GLubyte)* program);
void glProgramParameter4dNV (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramParameter4dvNV (GLenum target, GLuint index, const(GLdouble)* v);
void glProgramParameter4fNV (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramParameter4fvNV (GLenum target, GLuint index, const(GLfloat)* v);
void glProgramParameters4dvNV (GLenum target, GLuint index, GLsizei count, const(GLdouble)* v);
void glProgramParameters4fvNV (GLenum target, GLuint index, GLsizei count, const(GLfloat)* v);
void glRequestResidentProgramsNV (GLsizei n, const(GLuint)* programs);
void glTrackMatrixNV (GLenum target, GLuint address, GLenum matrix, GLenum transform);
void glVertexAttribPointerNV (GLuint index, GLint fsize, GLenum type, GLsizei stride, const(void)* pointer);
void glVertexAttrib1dNV (GLuint index, GLdouble x);
void glVertexAttrib1dvNV (GLuint index, const(GLdouble)* v);
void glVertexAttrib1fNV (GLuint index, GLfloat x);
void glVertexAttrib1fvNV (GLuint index, const(GLfloat)* v);
void glVertexAttrib1sNV (GLuint index, GLshort x);
void glVertexAttrib1svNV (GLuint index, const(GLshort)* v);
void glVertexAttrib2dNV (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvNV (GLuint index, const(GLdouble)* v);
void glVertexAttrib2fNV (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvNV (GLuint index, const(GLfloat)* v);
void glVertexAttrib2sNV (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svNV (GLuint index, const(GLshort)* v);
void glVertexAttrib3dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvNV (GLuint index, const(GLdouble)* v);
void glVertexAttrib3fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvNV (GLuint index, const(GLfloat)* v);
void glVertexAttrib3sNV (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svNV (GLuint index, const(GLshort)* v);
void glVertexAttrib4dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvNV (GLuint index, const(GLdouble)* v);
void glVertexAttrib4fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvNV (GLuint index, const(GLfloat)* v);
void glVertexAttrib4sNV (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svNV (GLuint index, const(GLshort)* v);
void glVertexAttrib4ubNV (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4ubvNV (GLuint index, const(GLubyte)* v);
void glVertexAttribs1dvNV (GLuint index, GLsizei count, const(GLdouble)* v);
void glVertexAttribs1fvNV (GLuint index, GLsizei count, const(GLfloat)* v);
void glVertexAttribs1svNV (GLuint index, GLsizei count, const(GLshort)* v);
void glVertexAttribs2dvNV (GLuint index, GLsizei count, const(GLdouble)* v);
void glVertexAttribs2fvNV (GLuint index, GLsizei count, const(GLfloat)* v);
void glVertexAttribs2svNV (GLuint index, GLsizei count, const(GLshort)* v);
void glVertexAttribs3dvNV (GLuint index, GLsizei count, const(GLdouble)* v);
void glVertexAttribs3fvNV (GLuint index, GLsizei count, const(GLfloat)* v);
void glVertexAttribs3svNV (GLuint index, GLsizei count, const(GLshort)* v);
void glVertexAttribs4dvNV (GLuint index, GLsizei count, const(GLdouble)* v);
void glVertexAttribs4fvNV (GLuint index, GLsizei count, const(GLfloat)* v);
void glVertexAttribs4svNV (GLuint index, GLsizei count, const(GLshort)* v);
void glVertexAttribs4ubvNV (GLuint index, GLsizei count, const(GLubyte)* v);

/* GL_NV_vertex_program */

enum GL_NV_vertex_program1_1 = 1;
/* GL_NV_vertex_program1_1 */

enum GL_NV_vertex_program2 = 1;
/* GL_NV_vertex_program2 */

enum GL_NV_vertex_program2_option = 1;
/* GL_NV_vertex_program2_option */

enum GL_NV_vertex_program3 = 1;
/* GL_NV_vertex_program3 */

enum GL_NV_vertex_program4 = 1;
enum GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV = 0x88FD;
alias PFNGLVERTEXATTRIBI1IEXTPROC = void function (GLuint index, GLint x);
alias PFNGLVERTEXATTRIBI2IEXTPROC = void function (GLuint index, GLint x, GLint y);
alias PFNGLVERTEXATTRIBI3IEXTPROC = void function (GLuint index, GLint x, GLint y, GLint z);
alias PFNGLVERTEXATTRIBI4IEXTPROC = void function (GLuint index, GLint x, GLint y, GLint z, GLint w);
alias PFNGLVERTEXATTRIBI1UIEXTPROC = void function (GLuint index, GLuint x);
alias PFNGLVERTEXATTRIBI2UIEXTPROC = void function (GLuint index, GLuint x, GLuint y);
alias PFNGLVERTEXATTRIBI3UIEXTPROC = void function (GLuint index, GLuint x, GLuint y, GLuint z);
alias PFNGLVERTEXATTRIBI4UIEXTPROC = void function (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
alias PFNGLVERTEXATTRIBI1IVEXTPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI2IVEXTPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI3IVEXTPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI4IVEXTPROC = void function (GLuint index, const(GLint)* v);
alias PFNGLVERTEXATTRIBI1UIVEXTPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI2UIVEXTPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI3UIVEXTPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI4UIVEXTPROC = void function (GLuint index, const(GLuint)* v);
alias PFNGLVERTEXATTRIBI4BVEXTPROC = void function (GLuint index, const(GLbyte)* v);
alias PFNGLVERTEXATTRIBI4SVEXTPROC = void function (GLuint index, const(GLshort)* v);
alias PFNGLVERTEXATTRIBI4UBVEXTPROC = void function (GLuint index, const(GLubyte)* v);
alias PFNGLVERTEXATTRIBI4USVEXTPROC = void function (GLuint index, const(GLushort)* v);
alias PFNGLVERTEXATTRIBIPOINTEREXTPROC = void function (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
alias PFNGLGETVERTEXATTRIBIIVEXTPROC = void function (GLuint index, GLenum pname, GLint* params);
alias PFNGLGETVERTEXATTRIBIUIVEXTPROC = void function (GLuint index, GLenum pname, GLuint* params);
void glVertexAttribI1iEXT (GLuint index, GLint x);
void glVertexAttribI2iEXT (GLuint index, GLint x, GLint y);
void glVertexAttribI3iEXT (GLuint index, GLint x, GLint y, GLint z);
void glVertexAttribI4iEXT (GLuint index, GLint x, GLint y, GLint z, GLint w);
void glVertexAttribI1uiEXT (GLuint index, GLuint x);
void glVertexAttribI2uiEXT (GLuint index, GLuint x, GLuint y);
void glVertexAttribI3uiEXT (GLuint index, GLuint x, GLuint y, GLuint z);
void glVertexAttribI4uiEXT (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glVertexAttribI1ivEXT (GLuint index, const(GLint)* v);
void glVertexAttribI2ivEXT (GLuint index, const(GLint)* v);
void glVertexAttribI3ivEXT (GLuint index, const(GLint)* v);
void glVertexAttribI4ivEXT (GLuint index, const(GLint)* v);
void glVertexAttribI1uivEXT (GLuint index, const(GLuint)* v);
void glVertexAttribI2uivEXT (GLuint index, const(GLuint)* v);
void glVertexAttribI3uivEXT (GLuint index, const(GLuint)* v);
void glVertexAttribI4uivEXT (GLuint index, const(GLuint)* v);
void glVertexAttribI4bvEXT (GLuint index, const(GLbyte)* v);
void glVertexAttribI4svEXT (GLuint index, const(GLshort)* v);
void glVertexAttribI4ubvEXT (GLuint index, const(GLubyte)* v);
void glVertexAttribI4usvEXT (GLuint index, const(GLushort)* v);
void glVertexAttribIPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer);
void glGetVertexAttribIivEXT (GLuint index, GLenum pname, GLint* params);
void glGetVertexAttribIuivEXT (GLuint index, GLenum pname, GLuint* params);

/* GL_NV_vertex_program4 */

enum GL_NV_video_capture = 1;
enum GL_VIDEO_BUFFER_NV = 0x9020;
enum GL_VIDEO_BUFFER_BINDING_NV = 0x9021;
enum GL_FIELD_UPPER_NV = 0x9022;
enum GL_FIELD_LOWER_NV = 0x9023;
enum GL_NUM_VIDEO_CAPTURE_STREAMS_NV = 0x9024;
enum GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV = 0x9025;
enum GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV = 0x9026;
enum GL_LAST_VIDEO_CAPTURE_STATUS_NV = 0x9027;
enum GL_VIDEO_BUFFER_PITCH_NV = 0x9028;
enum GL_VIDEO_COLOR_CONVERSION_MATRIX_NV = 0x9029;
enum GL_VIDEO_COLOR_CONVERSION_MAX_NV = 0x902A;
enum GL_VIDEO_COLOR_CONVERSION_MIN_NV = 0x902B;
enum GL_VIDEO_COLOR_CONVERSION_OFFSET_NV = 0x902C;
enum GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV = 0x902D;
enum GL_PARTIAL_SUCCESS_NV = 0x902E;
enum GL_SUCCESS_NV = 0x902F;
enum GL_FAILURE_NV = 0x9030;
enum GL_YCBYCR8_422_NV = 0x9031;
enum GL_YCBAYCR8A_4224_NV = 0x9032;
enum GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV = 0x9033;
enum GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV = 0x9034;
enum GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV = 0x9035;
enum GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV = 0x9036;
enum GL_Z4Y12Z4CB12Z4CR12_444_NV = 0x9037;
enum GL_VIDEO_CAPTURE_FRAME_WIDTH_NV = 0x9038;
enum GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV = 0x9039;
enum GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV = 0x903A;
enum GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV = 0x903B;
enum GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV = 0x903C;
alias PFNGLBEGINVIDEOCAPTURENVPROC = void function (GLuint video_capture_slot);
alias PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset);
alias PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture);
alias PFNGLENDVIDEOCAPTURENVPROC = void function (GLuint video_capture_slot);
alias PFNGLGETVIDEOCAPTUREIVNVPROC = void function (GLuint video_capture_slot, GLenum pname, GLint* params);
alias PFNGLGETVIDEOCAPTURESTREAMIVNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params);
alias PFNGLGETVIDEOCAPTURESTREAMFVNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params);
alias PFNGLGETVIDEOCAPTURESTREAMDVNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params);
alias PFNGLVIDEOCAPTURENVPROC = uint function (GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time);
alias PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLint)* params);
alias PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLfloat)* params);
alias PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC = void function (GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLdouble)* params);
void glBeginVideoCaptureNV (GLuint video_capture_slot);
void glBindVideoCaptureStreamBufferNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset);
void glBindVideoCaptureStreamTextureNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture);
void glEndVideoCaptureNV (GLuint video_capture_slot);
void glGetVideoCaptureivNV (GLuint video_capture_slot, GLenum pname, GLint* params);
void glGetVideoCaptureStreamivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params);
void glGetVideoCaptureStreamfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params);
void glGetVideoCaptureStreamdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params);
GLenum glVideoCaptureNV (GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time);
void glVideoCaptureStreamParameterivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLint)* params);
void glVideoCaptureStreamParameterfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLfloat)* params);
void glVideoCaptureStreamParameterdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLdouble)* params);

/* GL_NV_video_capture */

enum GL_OML_interlace = 1;
enum GL_INTERLACE_OML = 0x8980;
enum GL_INTERLACE_READ_OML = 0x8981;
/* GL_OML_interlace */

enum GL_OML_resample = 1;
enum GL_PACK_RESAMPLE_OML = 0x8984;
enum GL_UNPACK_RESAMPLE_OML = 0x8985;
enum GL_RESAMPLE_REPLICATE_OML = 0x8986;
enum GL_RESAMPLE_ZERO_FILL_OML = 0x8987;
enum GL_RESAMPLE_AVERAGE_OML = 0x8988;
enum GL_RESAMPLE_DECIMATE_OML = 0x8989;
/* GL_OML_resample */

enum GL_OML_subsample = 1;
enum GL_FORMAT_SUBSAMPLE_24_24_OML = 0x8982;
enum GL_FORMAT_SUBSAMPLE_244_244_OML = 0x8983;
/* GL_OML_subsample */

enum GL_PGI_misc_hints = 1;
enum GL_PREFER_DOUBLEBUFFER_HINT_PGI = 0x1A1F8;
enum GL_CONSERVE_MEMORY_HINT_PGI = 0x1A1FD;
enum GL_RECLAIM_MEMORY_HINT_PGI = 0x1A1FE;
enum GL_NATIVE_GRAPHICS_HANDLE_PGI = 0x1A202;
enum GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = 0x1A203;
enum GL_NATIVE_GRAPHICS_END_HINT_PGI = 0x1A204;
enum GL_ALWAYS_FAST_HINT_PGI = 0x1A20C;
enum GL_ALWAYS_SOFT_HINT_PGI = 0x1A20D;
enum GL_ALLOW_DRAW_OBJ_HINT_PGI = 0x1A20E;
enum GL_ALLOW_DRAW_WIN_HINT_PGI = 0x1A20F;
enum GL_ALLOW_DRAW_FRG_HINT_PGI = 0x1A210;
enum GL_ALLOW_DRAW_MEM_HINT_PGI = 0x1A211;
enum GL_STRICT_DEPTHFUNC_HINT_PGI = 0x1A216;
enum GL_STRICT_LIGHTING_HINT_PGI = 0x1A217;
enum GL_STRICT_SCISSOR_HINT_PGI = 0x1A218;
enum GL_FULL_STIPPLE_HINT_PGI = 0x1A219;
enum GL_CLIP_NEAR_HINT_PGI = 0x1A220;
enum GL_CLIP_FAR_HINT_PGI = 0x1A221;
enum GL_WIDE_LINE_HINT_PGI = 0x1A222;
enum GL_BACK_NORMALS_HINT_PGI = 0x1A223;
alias PFNGLHINTPGIPROC = void function (GLenum target, GLint mode);
void glHintPGI (GLenum target, GLint mode);

/* GL_PGI_misc_hints */

enum GL_PGI_vertex_hints = 1;
enum GL_VERTEX_DATA_HINT_PGI = 0x1A22A;
enum GL_VERTEX_CONSISTENT_HINT_PGI = 0x1A22B;
enum GL_MATERIAL_SIDE_HINT_PGI = 0x1A22C;
enum GL_MAX_VERTEX_HINT_PGI = 0x1A22D;
enum GL_COLOR3_BIT_PGI = 0x00010000;
enum GL_COLOR4_BIT_PGI = 0x00020000;
enum GL_EDGEFLAG_BIT_PGI = 0x00040000;
enum GL_INDEX_BIT_PGI = 0x00080000;
enum GL_MAT_AMBIENT_BIT_PGI = 0x00100000;
enum GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI = 0x00200000;
enum GL_MAT_DIFFUSE_BIT_PGI = 0x00400000;
enum GL_MAT_EMISSION_BIT_PGI = 0x00800000;
enum GL_MAT_COLOR_INDEXES_BIT_PGI = 0x01000000;
enum GL_MAT_SHININESS_BIT_PGI = 0x02000000;
enum GL_MAT_SPECULAR_BIT_PGI = 0x04000000;
enum GL_NORMAL_BIT_PGI = 0x08000000;
enum GL_TEXCOORD1_BIT_PGI = 0x10000000;
enum GL_TEXCOORD2_BIT_PGI = 0x20000000;
enum GL_TEXCOORD3_BIT_PGI = 0x40000000;
enum GL_TEXCOORD4_BIT_PGI = 0x80000000;
enum GL_VERTEX23_BIT_PGI = 0x00000004;
enum GL_VERTEX4_BIT_PGI = 0x00000008;
/* GL_PGI_vertex_hints */

enum GL_REND_screen_coordinates = 1;
enum GL_SCREEN_COORDINATES_REND = 0x8490;
enum GL_INVERTED_SCREEN_W_REND = 0x8491;
/* GL_REND_screen_coordinates */

enum GL_S3_s3tc = 1;
enum GL_RGB_S3TC = 0x83A0;
enum GL_RGB4_S3TC = 0x83A1;
enum GL_RGBA_S3TC = 0x83A2;
enum GL_RGBA4_S3TC = 0x83A3;
enum GL_RGBA_DXT5_S3TC = 0x83A4;
enum GL_RGBA4_DXT5_S3TC = 0x83A5;
/* GL_S3_s3tc */

enum GL_SGIS_detail_texture = 1;
enum GL_DETAIL_TEXTURE_2D_SGIS = 0x8095;
enum GL_DETAIL_TEXTURE_2D_BINDING_SGIS = 0x8096;
enum GL_LINEAR_DETAIL_SGIS = 0x8097;
enum GL_LINEAR_DETAIL_ALPHA_SGIS = 0x8098;
enum GL_LINEAR_DETAIL_COLOR_SGIS = 0x8099;
enum GL_DETAIL_TEXTURE_LEVEL_SGIS = 0x809A;
enum GL_DETAIL_TEXTURE_MODE_SGIS = 0x809B;
enum GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 0x809C;
alias PFNGLDETAILTEXFUNCSGISPROC = void function (GLenum target, GLsizei n, const(GLfloat)* points);
alias PFNGLGETDETAILTEXFUNCSGISPROC = void function (GLenum target, GLfloat* points);
void glDetailTexFuncSGIS (GLenum target, GLsizei n, const(GLfloat)* points);
void glGetDetailTexFuncSGIS (GLenum target, GLfloat* points);

/* GL_SGIS_detail_texture */

enum GL_SGIS_fog_function = 1;
enum GL_FOG_FUNC_SGIS = 0x812A;
enum GL_FOG_FUNC_POINTS_SGIS = 0x812B;
enum GL_MAX_FOG_FUNC_POINTS_SGIS = 0x812C;
alias PFNGLFOGFUNCSGISPROC = void function (GLsizei n, const(GLfloat)* points);
alias PFNGLGETFOGFUNCSGISPROC = void function (GLfloat* points);
void glFogFuncSGIS (GLsizei n, const(GLfloat)* points);
void glGetFogFuncSGIS (GLfloat* points);

/* GL_SGIS_fog_function */

enum GL_SGIS_generate_mipmap = 1;
enum GL_GENERATE_MIPMAP_SGIS = 0x8191;
enum GL_GENERATE_MIPMAP_HINT_SGIS = 0x8192;
/* GL_SGIS_generate_mipmap */

enum GL_SGIS_multisample = 1;
enum GL_MULTISAMPLE_SGIS = 0x809D;
enum GL_SAMPLE_ALPHA_TO_MASK_SGIS = 0x809E;
enum GL_SAMPLE_ALPHA_TO_ONE_SGIS = 0x809F;
enum GL_SAMPLE_MASK_SGIS = 0x80A0;
enum GL_1PASS_SGIS = 0x80A1;
enum GL_2PASS_0_SGIS = 0x80A2;
enum GL_2PASS_1_SGIS = 0x80A3;
enum GL_4PASS_0_SGIS = 0x80A4;
enum GL_4PASS_1_SGIS = 0x80A5;
enum GL_4PASS_2_SGIS = 0x80A6;
enum GL_4PASS_3_SGIS = 0x80A7;
enum GL_SAMPLE_BUFFERS_SGIS = 0x80A8;
enum GL_SAMPLES_SGIS = 0x80A9;
enum GL_SAMPLE_MASK_VALUE_SGIS = 0x80AA;
enum GL_SAMPLE_MASK_INVERT_SGIS = 0x80AB;
enum GL_SAMPLE_PATTERN_SGIS = 0x80AC;
alias PFNGLSAMPLEMASKSGISPROC = void function (GLclampf value, GLboolean invert);
alias PFNGLSAMPLEPATTERNSGISPROC = void function (GLenum pattern);
void glSampleMaskSGIS (GLclampf value, GLboolean invert);
void glSamplePatternSGIS (GLenum pattern);

/* GL_SGIS_multisample */

enum GL_SGIS_pixel_texture = 1;
enum GL_PIXEL_TEXTURE_SGIS = 0x8353;
enum GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS = 0x8354;
enum GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS = 0x8355;
enum GL_PIXEL_GROUP_COLOR_SGIS = 0x8356;
alias PFNGLPIXELTEXGENPARAMETERISGISPROC = void function (GLenum pname, GLint param);
alias PFNGLPIXELTEXGENPARAMETERIVSGISPROC = void function (GLenum pname, const(GLint)* params);
alias PFNGLPIXELTEXGENPARAMETERFSGISPROC = void function (GLenum pname, GLfloat param);
alias PFNGLPIXELTEXGENPARAMETERFVSGISPROC = void function (GLenum pname, const(GLfloat)* params);
alias PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC = void function (GLenum pname, GLint* params);
alias PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC = void function (GLenum pname, GLfloat* params);
void glPixelTexGenParameteriSGIS (GLenum pname, GLint param);
void glPixelTexGenParameterivSGIS (GLenum pname, const(GLint)* params);
void glPixelTexGenParameterfSGIS (GLenum pname, GLfloat param);
void glPixelTexGenParameterfvSGIS (GLenum pname, const(GLfloat)* params);
void glGetPixelTexGenParameterivSGIS (GLenum pname, GLint* params);
void glGetPixelTexGenParameterfvSGIS (GLenum pname, GLfloat* params);

/* GL_SGIS_pixel_texture */

enum GL_SGIS_point_line_texgen = 1;
enum GL_EYE_DISTANCE_TO_POINT_SGIS = 0x81F0;
enum GL_OBJECT_DISTANCE_TO_POINT_SGIS = 0x81F1;
enum GL_EYE_DISTANCE_TO_LINE_SGIS = 0x81F2;
enum GL_OBJECT_DISTANCE_TO_LINE_SGIS = 0x81F3;
enum GL_EYE_POINT_SGIS = 0x81F4;
enum GL_OBJECT_POINT_SGIS = 0x81F5;
enum GL_EYE_LINE_SGIS = 0x81F6;
enum GL_OBJECT_LINE_SGIS = 0x81F7;
/* GL_SGIS_point_line_texgen */

enum GL_SGIS_point_parameters = 1;
enum GL_POINT_SIZE_MIN_SGIS = 0x8126;
enum GL_POINT_SIZE_MAX_SGIS = 0x8127;
enum GL_POINT_FADE_THRESHOLD_SIZE_SGIS = 0x8128;
enum GL_DISTANCE_ATTENUATION_SGIS = 0x8129;
alias PFNGLPOINTPARAMETERFSGISPROC = void function (GLenum pname, GLfloat param);
alias PFNGLPOINTPARAMETERFVSGISPROC = void function (GLenum pname, const(GLfloat)* params);
void glPointParameterfSGIS (GLenum pname, GLfloat param);
void glPointParameterfvSGIS (GLenum pname, const(GLfloat)* params);

/* GL_SGIS_point_parameters */

enum GL_SGIS_sharpen_texture = 1;
enum GL_LINEAR_SHARPEN_SGIS = 0x80AD;
enum GL_LINEAR_SHARPEN_ALPHA_SGIS = 0x80AE;
enum GL_LINEAR_SHARPEN_COLOR_SGIS = 0x80AF;
enum GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 0x80B0;
alias PFNGLSHARPENTEXFUNCSGISPROC = void function (GLenum target, GLsizei n, const(GLfloat)* points);
alias PFNGLGETSHARPENTEXFUNCSGISPROC = void function (GLenum target, GLfloat* points);
void glSharpenTexFuncSGIS (GLenum target, GLsizei n, const(GLfloat)* points);
void glGetSharpenTexFuncSGIS (GLenum target, GLfloat* points);

/* GL_SGIS_sharpen_texture */

enum GL_SGIS_texture4D = 1;
enum GL_PACK_SKIP_VOLUMES_SGIS = 0x8130;
enum GL_PACK_IMAGE_DEPTH_SGIS = 0x8131;
enum GL_UNPACK_SKIP_VOLUMES_SGIS = 0x8132;
enum GL_UNPACK_IMAGE_DEPTH_SGIS = 0x8133;
enum GL_TEXTURE_4D_SGIS = 0x8134;
enum GL_PROXY_TEXTURE_4D_SGIS = 0x8135;
enum GL_TEXTURE_4DSIZE_SGIS = 0x8136;
enum GL_TEXTURE_WRAP_Q_SGIS = 0x8137;
enum GL_MAX_4D_TEXTURE_SIZE_SGIS = 0x8138;
enum GL_TEXTURE_4D_BINDING_SGIS = 0x814F;
alias PFNGLTEXIMAGE4DSGISPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const(void)* pixels);
alias PFNGLTEXSUBIMAGE4DSGISPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const(void)* pixels);
void glTexImage4DSGIS (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const(void)* pixels);
void glTexSubImage4DSGIS (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const(void)* pixels);

/* GL_SGIS_texture4D */

enum GL_SGIS_texture_border_clamp = 1;
enum GL_CLAMP_TO_BORDER_SGIS = 0x812D;
/* GL_SGIS_texture_border_clamp */

enum GL_SGIS_texture_color_mask = 1;
enum GL_TEXTURE_COLOR_WRITEMASK_SGIS = 0x81EF;
alias PFNGLTEXTURECOLORMASKSGISPROC = void function (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void glTextureColorMaskSGIS (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);

/* GL_SGIS_texture_color_mask */

enum GL_SGIS_texture_edge_clamp = 1;
enum GL_CLAMP_TO_EDGE_SGIS = 0x812F;
/* GL_SGIS_texture_edge_clamp */

enum GL_SGIS_texture_filter4 = 1;
enum GL_FILTER4_SGIS = 0x8146;
enum GL_TEXTURE_FILTER4_SIZE_SGIS = 0x8147;
alias PFNGLGETTEXFILTERFUNCSGISPROC = void function (GLenum target, GLenum filter, GLfloat* weights);
alias PFNGLTEXFILTERFUNCSGISPROC = void function (GLenum target, GLenum filter, GLsizei n, const(GLfloat)* weights);
void glGetTexFilterFuncSGIS (GLenum target, GLenum filter, GLfloat* weights);
void glTexFilterFuncSGIS (GLenum target, GLenum filter, GLsizei n, const(GLfloat)* weights);

/* GL_SGIS_texture_filter4 */

enum GL_SGIS_texture_lod = 1;
enum GL_TEXTURE_MIN_LOD_SGIS = 0x813A;
enum GL_TEXTURE_MAX_LOD_SGIS = 0x813B;
enum GL_TEXTURE_BASE_LEVEL_SGIS = 0x813C;
enum GL_TEXTURE_MAX_LEVEL_SGIS = 0x813D;
/* GL_SGIS_texture_lod */

enum GL_SGIS_texture_select = 1;
enum GL_DUAL_ALPHA4_SGIS = 0x8110;
enum GL_DUAL_ALPHA8_SGIS = 0x8111;
enum GL_DUAL_ALPHA12_SGIS = 0x8112;
enum GL_DUAL_ALPHA16_SGIS = 0x8113;
enum GL_DUAL_LUMINANCE4_SGIS = 0x8114;
enum GL_DUAL_LUMINANCE8_SGIS = 0x8115;
enum GL_DUAL_LUMINANCE12_SGIS = 0x8116;
enum GL_DUAL_LUMINANCE16_SGIS = 0x8117;
enum GL_DUAL_INTENSITY4_SGIS = 0x8118;
enum GL_DUAL_INTENSITY8_SGIS = 0x8119;
enum GL_DUAL_INTENSITY12_SGIS = 0x811A;
enum GL_DUAL_INTENSITY16_SGIS = 0x811B;
enum GL_DUAL_LUMINANCE_ALPHA4_SGIS = 0x811C;
enum GL_DUAL_LUMINANCE_ALPHA8_SGIS = 0x811D;
enum GL_QUAD_ALPHA4_SGIS = 0x811E;
enum GL_QUAD_ALPHA8_SGIS = 0x811F;
enum GL_QUAD_LUMINANCE4_SGIS = 0x8120;
enum GL_QUAD_LUMINANCE8_SGIS = 0x8121;
enum GL_QUAD_INTENSITY4_SGIS = 0x8122;
enum GL_QUAD_INTENSITY8_SGIS = 0x8123;
enum GL_DUAL_TEXTURE_SELECT_SGIS = 0x8124;
enum GL_QUAD_TEXTURE_SELECT_SGIS = 0x8125;
/* GL_SGIS_texture_select */

enum GL_SGIX_async = 1;
enum GL_ASYNC_MARKER_SGIX = 0x8329;
alias PFNGLASYNCMARKERSGIXPROC = void function (GLuint marker);
alias PFNGLFINISHASYNCSGIXPROC = int function (GLuint* markerp);
alias PFNGLPOLLASYNCSGIXPROC = int function (GLuint* markerp);
alias PFNGLGENASYNCMARKERSSGIXPROC = uint function (GLsizei range);
alias PFNGLDELETEASYNCMARKERSSGIXPROC = void function (GLuint marker, GLsizei range);
alias PFNGLISASYNCMARKERSGIXPROC = ubyte function (GLuint marker);
void glAsyncMarkerSGIX (GLuint marker);
GLint glFinishAsyncSGIX (GLuint* markerp);
GLint glPollAsyncSGIX (GLuint* markerp);
GLuint glGenAsyncMarkersSGIX (GLsizei range);
void glDeleteAsyncMarkersSGIX (GLuint marker, GLsizei range);
GLboolean glIsAsyncMarkerSGIX (GLuint marker);

/* GL_SGIX_async */

enum GL_SGIX_async_histogram = 1;
enum GL_ASYNC_HISTOGRAM_SGIX = 0x832C;
enum GL_MAX_ASYNC_HISTOGRAM_SGIX = 0x832D;
/* GL_SGIX_async_histogram */

enum GL_SGIX_async_pixel = 1;
enum GL_ASYNC_TEX_IMAGE_SGIX = 0x835C;
enum GL_ASYNC_DRAW_PIXELS_SGIX = 0x835D;
enum GL_ASYNC_READ_PIXELS_SGIX = 0x835E;
enum GL_MAX_ASYNC_TEX_IMAGE_SGIX = 0x835F;
enum GL_MAX_ASYNC_DRAW_PIXELS_SGIX = 0x8360;
enum GL_MAX_ASYNC_READ_PIXELS_SGIX = 0x8361;
/* GL_SGIX_async_pixel */

enum GL_SGIX_blend_alpha_minmax = 1;
enum GL_ALPHA_MIN_SGIX = 0x8320;
enum GL_ALPHA_MAX_SGIX = 0x8321;
/* GL_SGIX_blend_alpha_minmax */

enum GL_SGIX_calligraphic_fragment = 1;
enum GL_CALLIGRAPHIC_FRAGMENT_SGIX = 0x8183;
/* GL_SGIX_calligraphic_fragment */

enum GL_SGIX_clipmap = 1;
enum GL_LINEAR_CLIPMAP_LINEAR_SGIX = 0x8170;
enum GL_TEXTURE_CLIPMAP_CENTER_SGIX = 0x8171;
enum GL_TEXTURE_CLIPMAP_FRAME_SGIX = 0x8172;
enum GL_TEXTURE_CLIPMAP_OFFSET_SGIX = 0x8173;
enum GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8174;
enum GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = 0x8175;
enum GL_TEXTURE_CLIPMAP_DEPTH_SGIX = 0x8176;
enum GL_MAX_CLIPMAP_DEPTH_SGIX = 0x8177;
enum GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8178;
enum GL_NEAREST_CLIPMAP_NEAREST_SGIX = 0x844D;
enum GL_NEAREST_CLIPMAP_LINEAR_SGIX = 0x844E;
enum GL_LINEAR_CLIPMAP_NEAREST_SGIX = 0x844F;
/* GL_SGIX_clipmap */

enum GL_SGIX_convolution_accuracy = 1;
enum GL_CONVOLUTION_HINT_SGIX = 0x8316;
/* GL_SGIX_convolution_accuracy */

enum GL_SGIX_depth_pass_instrument = 1;
/* GL_SGIX_depth_pass_instrument */

enum GL_SGIX_depth_texture = 1;
enum GL_DEPTH_COMPONENT16_SGIX = 0x81A5;
enum GL_DEPTH_COMPONENT24_SGIX = 0x81A6;
enum GL_DEPTH_COMPONENT32_SGIX = 0x81A7;
/* GL_SGIX_depth_texture */

enum GL_SGIX_flush_raster = 1;
alias PFNGLFLUSHRASTERSGIXPROC = void function ();
void glFlushRasterSGIX ();

/* GL_SGIX_flush_raster */

enum GL_SGIX_fog_offset = 1;
enum GL_FOG_OFFSET_SGIX = 0x8198;
enum GL_FOG_OFFSET_VALUE_SGIX = 0x8199;
/* GL_SGIX_fog_offset */

enum GL_SGIX_fragment_lighting = 1;
enum GL_FRAGMENT_LIGHTING_SGIX = 0x8400;
enum GL_FRAGMENT_COLOR_MATERIAL_SGIX = 0x8401;
enum GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = 0x8402;
enum GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = 0x8403;
enum GL_MAX_FRAGMENT_LIGHTS_SGIX = 0x8404;
enum GL_MAX_ACTIVE_LIGHTS_SGIX = 0x8405;
enum GL_CURRENT_RASTER_NORMAL_SGIX = 0x8406;
enum GL_LIGHT_ENV_MODE_SGIX = 0x8407;
enum GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = 0x8408;
enum GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = 0x8409;
enum GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = 0x840A;
enum GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = 0x840B;
enum GL_FRAGMENT_LIGHT0_SGIX = 0x840C;
enum GL_FRAGMENT_LIGHT1_SGIX = 0x840D;
enum GL_FRAGMENT_LIGHT2_SGIX = 0x840E;
enum GL_FRAGMENT_LIGHT3_SGIX = 0x840F;
enum GL_FRAGMENT_LIGHT4_SGIX = 0x8410;
enum GL_FRAGMENT_LIGHT5_SGIX = 0x8411;
enum GL_FRAGMENT_LIGHT6_SGIX = 0x8412;
enum GL_FRAGMENT_LIGHT7_SGIX = 0x8413;
alias PFNGLFRAGMENTCOLORMATERIALSGIXPROC = void function (GLenum face, GLenum mode);
alias PFNGLFRAGMENTLIGHTFSGIXPROC = void function (GLenum light, GLenum pname, GLfloat param);
alias PFNGLFRAGMENTLIGHTFVSGIXPROC = void function (GLenum light, GLenum pname, const(GLfloat)* params);
alias PFNGLFRAGMENTLIGHTISGIXPROC = void function (GLenum light, GLenum pname, GLint param);
alias PFNGLFRAGMENTLIGHTIVSGIXPROC = void function (GLenum light, GLenum pname, const(GLint)* params);
alias PFNGLFRAGMENTLIGHTMODELFSGIXPROC = void function (GLenum pname, GLfloat param);
alias PFNGLFRAGMENTLIGHTMODELFVSGIXPROC = void function (GLenum pname, const(GLfloat)* params);
alias PFNGLFRAGMENTLIGHTMODELISGIXPROC = void function (GLenum pname, GLint param);
alias PFNGLFRAGMENTLIGHTMODELIVSGIXPROC = void function (GLenum pname, const(GLint)* params);
alias PFNGLFRAGMENTMATERIALFSGIXPROC = void function (GLenum face, GLenum pname, GLfloat param);
alias PFNGLFRAGMENTMATERIALFVSGIXPROC = void function (GLenum face, GLenum pname, const(GLfloat)* params);
alias PFNGLFRAGMENTMATERIALISGIXPROC = void function (GLenum face, GLenum pname, GLint param);
alias PFNGLFRAGMENTMATERIALIVSGIXPROC = void function (GLenum face, GLenum pname, const(GLint)* params);
alias PFNGLGETFRAGMENTLIGHTFVSGIXPROC = void function (GLenum light, GLenum pname, GLfloat* params);
alias PFNGLGETFRAGMENTLIGHTIVSGIXPROC = void function (GLenum light, GLenum pname, GLint* params);
alias PFNGLGETFRAGMENTMATERIALFVSGIXPROC = void function (GLenum face, GLenum pname, GLfloat* params);
alias PFNGLGETFRAGMENTMATERIALIVSGIXPROC = void function (GLenum face, GLenum pname, GLint* params);
alias PFNGLLIGHTENVISGIXPROC = void function (GLenum pname, GLint param);
void glFragmentColorMaterialSGIX (GLenum face, GLenum mode);
void glFragmentLightfSGIX (GLenum light, GLenum pname, GLfloat param);
void glFragmentLightfvSGIX (GLenum light, GLenum pname, const(GLfloat)* params);
void glFragmentLightiSGIX (GLenum light, GLenum pname, GLint param);
void glFragmentLightivSGIX (GLenum light, GLenum pname, const(GLint)* params);
void glFragmentLightModelfSGIX (GLenum pname, GLfloat param);
void glFragmentLightModelfvSGIX (GLenum pname, const(GLfloat)* params);
void glFragmentLightModeliSGIX (GLenum pname, GLint param);
void glFragmentLightModelivSGIX (GLenum pname, const(GLint)* params);
void glFragmentMaterialfSGIX (GLenum face, GLenum pname, GLfloat param);
void glFragmentMaterialfvSGIX (GLenum face, GLenum pname, const(GLfloat)* params);
void glFragmentMaterialiSGIX (GLenum face, GLenum pname, GLint param);
void glFragmentMaterialivSGIX (GLenum face, GLenum pname, const(GLint)* params);
void glGetFragmentLightfvSGIX (GLenum light, GLenum pname, GLfloat* params);
void glGetFragmentLightivSGIX (GLenum light, GLenum pname, GLint* params);
void glGetFragmentMaterialfvSGIX (GLenum face, GLenum pname, GLfloat* params);
void glGetFragmentMaterialivSGIX (GLenum face, GLenum pname, GLint* params);
void glLightEnviSGIX (GLenum pname, GLint param);

/* GL_SGIX_fragment_lighting */

enum GL_SGIX_framezoom = 1;
enum GL_FRAMEZOOM_SGIX = 0x818B;
enum GL_FRAMEZOOM_FACTOR_SGIX = 0x818C;
enum GL_MAX_FRAMEZOOM_FACTOR_SGIX = 0x818D;
alias PFNGLFRAMEZOOMSGIXPROC = void function (GLint factor);
void glFrameZoomSGIX (GLint factor);

/* GL_SGIX_framezoom */

enum GL_SGIX_igloo_interface = 1;
alias PFNGLIGLOOINTERFACESGIXPROC = void function (GLenum pname, const(void)* params);
void glIglooInterfaceSGIX (GLenum pname, const(void)* params);

/* GL_SGIX_igloo_interface */

enum GL_SGIX_instruments = 1;
enum GL_INSTRUMENT_BUFFER_POINTER_SGIX = 0x8180;
enum GL_INSTRUMENT_MEASUREMENTS_SGIX = 0x8181;
alias PFNGLGETINSTRUMENTSSGIXPROC = int function ();
alias PFNGLINSTRUMENTSBUFFERSGIXPROC = void function (GLsizei size, GLint* buffer);
alias PFNGLPOLLINSTRUMENTSSGIXPROC = int function (GLint* marker_p);
alias PFNGLREADINSTRUMENTSSGIXPROC = void function (GLint marker);
alias PFNGLSTARTINSTRUMENTSSGIXPROC = void function ();
alias PFNGLSTOPINSTRUMENTSSGIXPROC = void function (GLint marker);
GLint glGetInstrumentsSGIX ();
void glInstrumentsBufferSGIX (GLsizei size, GLint* buffer);
GLint glPollInstrumentsSGIX (GLint* marker_p);
void glReadInstrumentsSGIX (GLint marker);
void glStartInstrumentsSGIX ();
void glStopInstrumentsSGIX (GLint marker);

/* GL_SGIX_instruments */

enum GL_SGIX_interlace = 1;
enum GL_INTERLACE_SGIX = 0x8094;
/* GL_SGIX_interlace */

enum GL_SGIX_ir_instrument1 = 1;
enum GL_IR_INSTRUMENT1_SGIX = 0x817F;
/* GL_SGIX_ir_instrument1 */

enum GL_SGIX_list_priority = 1;
enum GL_LIST_PRIORITY_SGIX = 0x8182;
alias PFNGLGETLISTPARAMETERFVSGIXPROC = void function (GLuint list, GLenum pname, GLfloat* params);
alias PFNGLGETLISTPARAMETERIVSGIXPROC = void function (GLuint list, GLenum pname, GLint* params);
alias PFNGLLISTPARAMETERFSGIXPROC = void function (GLuint list, GLenum pname, GLfloat param);
alias PFNGLLISTPARAMETERFVSGIXPROC = void function (GLuint list, GLenum pname, const(GLfloat)* params);
alias PFNGLLISTPARAMETERISGIXPROC = void function (GLuint list, GLenum pname, GLint param);
alias PFNGLLISTPARAMETERIVSGIXPROC = void function (GLuint list, GLenum pname, const(GLint)* params);
void glGetListParameterfvSGIX (GLuint list, GLenum pname, GLfloat* params);
void glGetListParameterivSGIX (GLuint list, GLenum pname, GLint* params);
void glListParameterfSGIX (GLuint list, GLenum pname, GLfloat param);
void glListParameterfvSGIX (GLuint list, GLenum pname, const(GLfloat)* params);
void glListParameteriSGIX (GLuint list, GLenum pname, GLint param);
void glListParameterivSGIX (GLuint list, GLenum pname, const(GLint)* params);

/* GL_SGIX_list_priority */

enum GL_SGIX_pixel_texture = 1;
enum GL_PIXEL_TEX_GEN_SGIX = 0x8139;
enum GL_PIXEL_TEX_GEN_MODE_SGIX = 0x832B;
alias PFNGLPIXELTEXGENSGIXPROC = void function (GLenum mode);
void glPixelTexGenSGIX (GLenum mode);

/* GL_SGIX_pixel_texture */

enum GL_SGIX_pixel_tiles = 1;
enum GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = 0x813E;
enum GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = 0x813F;
enum GL_PIXEL_TILE_WIDTH_SGIX = 0x8140;
enum GL_PIXEL_TILE_HEIGHT_SGIX = 0x8141;
enum GL_PIXEL_TILE_GRID_WIDTH_SGIX = 0x8142;
enum GL_PIXEL_TILE_GRID_HEIGHT_SGIX = 0x8143;
enum GL_PIXEL_TILE_GRID_DEPTH_SGIX = 0x8144;
enum GL_PIXEL_TILE_CACHE_SIZE_SGIX = 0x8145;
/* GL_SGIX_pixel_tiles */

enum GL_SGIX_polynomial_ffd = 1;
enum GL_TEXTURE_DEFORMATION_BIT_SGIX = 0x00000001;
enum GL_GEOMETRY_DEFORMATION_BIT_SGIX = 0x00000002;
enum GL_GEOMETRY_DEFORMATION_SGIX = 0x8194;
enum GL_TEXTURE_DEFORMATION_SGIX = 0x8195;
enum GL_DEFORMATIONS_MASK_SGIX = 0x8196;
enum GL_MAX_DEFORMATION_ORDER_SGIX = 0x8197;
alias PFNGLDEFORMATIONMAP3DSGIXPROC = void function (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const(GLdouble)* points);
alias PFNGLDEFORMATIONMAP3FSGIXPROC = void function (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const(GLfloat)* points);
alias PFNGLDEFORMSGIXPROC = void function (GLbitfield mask);
alias PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC = void function (GLbitfield mask);
void glDeformationMap3dSGIX (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const(GLdouble)* points);
void glDeformationMap3fSGIX (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const(GLfloat)* points);
void glDeformSGIX (GLbitfield mask);
void glLoadIdentityDeformationMapSGIX (GLbitfield mask);

/* GL_SGIX_polynomial_ffd */

enum GL_SGIX_reference_plane = 1;
enum GL_REFERENCE_PLANE_SGIX = 0x817D;
enum GL_REFERENCE_PLANE_EQUATION_SGIX = 0x817E;
alias PFNGLREFERENCEPLANESGIXPROC = void function (const(GLdouble)* equation);
void glReferencePlaneSGIX (const(GLdouble)* equation);

/* GL_SGIX_reference_plane */

enum GL_SGIX_resample = 1;
enum GL_PACK_RESAMPLE_SGIX = 0x842C;
enum GL_UNPACK_RESAMPLE_SGIX = 0x842D;
enum GL_RESAMPLE_REPLICATE_SGIX = 0x842E;
enum GL_RESAMPLE_ZERO_FILL_SGIX = 0x842F;
enum GL_RESAMPLE_DECIMATE_SGIX = 0x8430;
/* GL_SGIX_resample */

enum GL_SGIX_scalebias_hint = 1;
enum GL_SCALEBIAS_HINT_SGIX = 0x8322;
/* GL_SGIX_scalebias_hint */

enum GL_SGIX_shadow = 1;
enum GL_TEXTURE_COMPARE_SGIX = 0x819A;
enum GL_TEXTURE_COMPARE_OPERATOR_SGIX = 0x819B;
enum GL_TEXTURE_LEQUAL_R_SGIX = 0x819C;
enum GL_TEXTURE_GEQUAL_R_SGIX = 0x819D;
/* GL_SGIX_shadow */

enum GL_SGIX_shadow_ambient = 1;
enum GL_SHADOW_AMBIENT_SGIX = 0x80BF;
/* GL_SGIX_shadow_ambient */

enum GL_SGIX_sprite = 1;
enum GL_SPRITE_SGIX = 0x8148;
enum GL_SPRITE_MODE_SGIX = 0x8149;
enum GL_SPRITE_AXIS_SGIX = 0x814A;
enum GL_SPRITE_TRANSLATION_SGIX = 0x814B;
enum GL_SPRITE_AXIAL_SGIX = 0x814C;
enum GL_SPRITE_OBJECT_ALIGNED_SGIX = 0x814D;
enum GL_SPRITE_EYE_ALIGNED_SGIX = 0x814E;
alias PFNGLSPRITEPARAMETERFSGIXPROC = void function (GLenum pname, GLfloat param);
alias PFNGLSPRITEPARAMETERFVSGIXPROC = void function (GLenum pname, const(GLfloat)* params);
alias PFNGLSPRITEPARAMETERISGIXPROC = void function (GLenum pname, GLint param);
alias PFNGLSPRITEPARAMETERIVSGIXPROC = void function (GLenum pname, const(GLint)* params);
void glSpriteParameterfSGIX (GLenum pname, GLfloat param);
void glSpriteParameterfvSGIX (GLenum pname, const(GLfloat)* params);
void glSpriteParameteriSGIX (GLenum pname, GLint param);
void glSpriteParameterivSGIX (GLenum pname, const(GLint)* params);

/* GL_SGIX_sprite */

enum GL_SGIX_subsample = 1;
enum GL_PACK_SUBSAMPLE_RATE_SGIX = 0x85A0;
enum GL_UNPACK_SUBSAMPLE_RATE_SGIX = 0x85A1;
enum GL_PIXEL_SUBSAMPLE_4444_SGIX = 0x85A2;
enum GL_PIXEL_SUBSAMPLE_2424_SGIX = 0x85A3;
enum GL_PIXEL_SUBSAMPLE_4242_SGIX = 0x85A4;
/* GL_SGIX_subsample */

enum GL_SGIX_tag_sample_buffer = 1;
alias PFNGLTAGSAMPLEBUFFERSGIXPROC = void function ();
void glTagSampleBufferSGIX ();

/* GL_SGIX_tag_sample_buffer */

enum GL_SGIX_texture_add_env = 1;
enum GL_TEXTURE_ENV_BIAS_SGIX = 0x80BE;
/* GL_SGIX_texture_add_env */

enum GL_SGIX_texture_coordinate_clamp = 1;
enum GL_TEXTURE_MAX_CLAMP_S_SGIX = 0x8369;
enum GL_TEXTURE_MAX_CLAMP_T_SGIX = 0x836A;
enum GL_TEXTURE_MAX_CLAMP_R_SGIX = 0x836B;
/* GL_SGIX_texture_coordinate_clamp */

enum GL_SGIX_texture_lod_bias = 1;
enum GL_TEXTURE_LOD_BIAS_S_SGIX = 0x818E;
enum GL_TEXTURE_LOD_BIAS_T_SGIX = 0x818F;
enum GL_TEXTURE_LOD_BIAS_R_SGIX = 0x8190;
/* GL_SGIX_texture_lod_bias */

enum GL_SGIX_texture_multi_buffer = 1;
enum GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = 0x812E;
/* GL_SGIX_texture_multi_buffer */

enum GL_SGIX_texture_scale_bias = 1;
enum GL_POST_TEXTURE_FILTER_BIAS_SGIX = 0x8179;
enum GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A;
enum GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B;
enum GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C;
/* GL_SGIX_texture_scale_bias */

enum GL_SGIX_vertex_preclip = 1;
enum GL_VERTEX_PRECLIP_SGIX = 0x83EE;
enum GL_VERTEX_PRECLIP_HINT_SGIX = 0x83EF;
/* GL_SGIX_vertex_preclip */

enum GL_SGIX_ycrcb = 1;
enum GL_YCRCB_422_SGIX = 0x81BB;
enum GL_YCRCB_444_SGIX = 0x81BC;
/* GL_SGIX_ycrcb */

enum GL_SGIX_ycrcb_subsample = 1;
/* GL_SGIX_ycrcb_subsample */

enum GL_SGIX_ycrcba = 1;
enum GL_YCRCB_SGIX = 0x8318;
enum GL_YCRCBA_SGIX = 0x8319;
/* GL_SGIX_ycrcba */

enum GL_SGI_color_matrix = 1;
enum GL_COLOR_MATRIX_SGI = 0x80B1;
enum GL_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B2;
enum GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B3;
enum GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80B4;
enum GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80B5;
enum GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80B6;
enum GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80B7;
enum GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80B8;
enum GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80B9;
enum GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80BA;
enum GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80BB;
/* GL_SGI_color_matrix */

enum GL_SGI_color_table = 1;
enum GL_COLOR_TABLE_SGI = 0x80D0;
enum GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1;
enum GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2;
enum GL_PROXY_COLOR_TABLE_SGI = 0x80D3;
enum GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4;
enum GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5;
enum GL_COLOR_TABLE_SCALE_SGI = 0x80D6;
enum GL_COLOR_TABLE_BIAS_SGI = 0x80D7;
enum GL_COLOR_TABLE_FORMAT_SGI = 0x80D8;
enum GL_COLOR_TABLE_WIDTH_SGI = 0x80D9;
enum GL_COLOR_TABLE_RED_SIZE_SGI = 0x80DA;
enum GL_COLOR_TABLE_GREEN_SIZE_SGI = 0x80DB;
enum GL_COLOR_TABLE_BLUE_SIZE_SGI = 0x80DC;
enum GL_COLOR_TABLE_ALPHA_SIZE_SGI = 0x80DD;
enum GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE;
enum GL_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF;
alias PFNGLCOLORTABLESGIPROC = void function (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* table);
alias PFNGLCOLORTABLEPARAMETERFVSGIPROC = void function (GLenum target, GLenum pname, const(GLfloat)* params);
alias PFNGLCOLORTABLEPARAMETERIVSGIPROC = void function (GLenum target, GLenum pname, const(GLint)* params);
alias PFNGLCOPYCOLORTABLESGIPROC = void function (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias PFNGLGETCOLORTABLESGIPROC = void function (GLenum target, GLenum format, GLenum type, void* table);
alias PFNGLGETCOLORTABLEPARAMETERFVSGIPROC = void function (GLenum target, GLenum pname, GLfloat* params);
alias PFNGLGETCOLORTABLEPARAMETERIVSGIPROC = void function (GLenum target, GLenum pname, GLint* params);
void glColorTableSGI (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(void)* table);
void glColorTableParameterfvSGI (GLenum target, GLenum pname, const(GLfloat)* params);
void glColorTableParameterivSGI (GLenum target, GLenum pname, const(GLint)* params);
void glCopyColorTableSGI (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTableSGI (GLenum target, GLenum format, GLenum type, void* table);
void glGetColorTableParameterfvSGI (GLenum target, GLenum pname, GLfloat* params);
void glGetColorTableParameterivSGI (GLenum target, GLenum pname, GLint* params);

/* GL_SGI_color_table */

enum GL_SGI_texture_color_table = 1;
enum GL_TEXTURE_COLOR_TABLE_SGI = 0x80BC;
enum GL_PROXY_TEXTURE_COLOR_TABLE_SGI = 0x80BD;
/* GL_SGI_texture_color_table */

enum GL_SUNX_constant_data = 1;
enum GL_UNPACK_CONSTANT_DATA_SUNX = 0x81D5;
enum GL_TEXTURE_CONSTANT_DATA_SUNX = 0x81D6;
alias PFNGLFINISHTEXTURESUNXPROC = void function ();
void glFinishTextureSUNX ();

/* GL_SUNX_constant_data */

enum GL_SUN_convolution_border_modes = 1;
enum GL_WRAP_BORDER_SUN = 0x81D4;
/* GL_SUN_convolution_border_modes */

enum GL_SUN_global_alpha = 1;
enum GL_GLOBAL_ALPHA_SUN = 0x81D9;
enum GL_GLOBAL_ALPHA_FACTOR_SUN = 0x81DA;
alias PFNGLGLOBALALPHAFACTORBSUNPROC = void function (GLbyte factor);
alias PFNGLGLOBALALPHAFACTORSSUNPROC = void function (GLshort factor);
alias PFNGLGLOBALALPHAFACTORISUNPROC = void function (GLint factor);
alias PFNGLGLOBALALPHAFACTORFSUNPROC = void function (GLfloat factor);
alias PFNGLGLOBALALPHAFACTORDSUNPROC = void function (GLdouble factor);
alias PFNGLGLOBALALPHAFACTORUBSUNPROC = void function (GLubyte factor);
alias PFNGLGLOBALALPHAFACTORUSSUNPROC = void function (GLushort factor);
alias PFNGLGLOBALALPHAFACTORUISUNPROC = void function (GLuint factor);
void glGlobalAlphaFactorbSUN (GLbyte factor);
void glGlobalAlphaFactorsSUN (GLshort factor);
void glGlobalAlphaFactoriSUN (GLint factor);
void glGlobalAlphaFactorfSUN (GLfloat factor);
void glGlobalAlphaFactordSUN (GLdouble factor);
void glGlobalAlphaFactorubSUN (GLubyte factor);
void glGlobalAlphaFactorusSUN (GLushort factor);
void glGlobalAlphaFactoruiSUN (GLuint factor);

/* GL_SUN_global_alpha */

enum GL_SUN_mesh_array = 1;
enum GL_QUAD_MESH_SUN = 0x8614;
enum GL_TRIANGLE_MESH_SUN = 0x8615;
alias PFNGLDRAWMESHARRAYSSUNPROC = void function (GLenum mode, GLint first, GLsizei count, GLsizei width);
void glDrawMeshArraysSUN (GLenum mode, GLint first, GLsizei count, GLsizei width);

/* GL_SUN_mesh_array */

enum GL_SUN_slice_accum = 1;
enum GL_SLICE_ACCUM_SUN = 0x85CC;
/* GL_SUN_slice_accum */

enum GL_SUN_triangle_list = 1;
enum GL_RESTART_SUN = 0x0001;
enum GL_REPLACE_MIDDLE_SUN = 0x0002;
enum GL_REPLACE_OLDEST_SUN = 0x0003;
enum GL_TRIANGLE_LIST_SUN = 0x81D7;
enum GL_REPLACEMENT_CODE_SUN = 0x81D8;
enum GL_REPLACEMENT_CODE_ARRAY_SUN = 0x85C0;
enum GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN = 0x85C1;
enum GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = 0x85C2;
enum GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN = 0x85C3;
enum GL_R1UI_V3F_SUN = 0x85C4;
enum GL_R1UI_C4UB_V3F_SUN = 0x85C5;
enum GL_R1UI_C3F_V3F_SUN = 0x85C6;
enum GL_R1UI_N3F_V3F_SUN = 0x85C7;
enum GL_R1UI_C4F_N3F_V3F_SUN = 0x85C8;
enum GL_R1UI_T2F_V3F_SUN = 0x85C9;
enum GL_R1UI_T2F_N3F_V3F_SUN = 0x85CA;
enum GL_R1UI_T2F_C4F_N3F_V3F_SUN = 0x85CB;
alias PFNGLREPLACEMENTCODEUISUNPROC = void function (GLuint code);
alias PFNGLREPLACEMENTCODEUSSUNPROC = void function (GLushort code);
alias PFNGLREPLACEMENTCODEUBSUNPROC = void function (GLubyte code);
alias PFNGLREPLACEMENTCODEUIVSUNPROC = void function (const(GLuint)* code);
alias PFNGLREPLACEMENTCODEUSVSUNPROC = void function (const(GLushort)* code);
alias PFNGLREPLACEMENTCODEUBVSUNPROC = void function (const(GLubyte)* code);
alias PFNGLREPLACEMENTCODEPOINTERSUNPROC = void function (GLenum type, GLsizei stride, const(void*)* pointer);
void glReplacementCodeuiSUN (GLuint code);
void glReplacementCodeusSUN (GLushort code);
void glReplacementCodeubSUN (GLubyte code);
void glReplacementCodeuivSUN (const(GLuint)* code);
void glReplacementCodeusvSUN (const(GLushort)* code);
void glReplacementCodeubvSUN (const(GLubyte)* code);
void glReplacementCodePointerSUN (GLenum type, GLsizei stride, const(void*)* pointer);

/* GL_SUN_triangle_list */

enum GL_SUN_vertex = 1;
alias PFNGLCOLOR4UBVERTEX2FSUNPROC = void function (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
alias PFNGLCOLOR4UBVERTEX2FVSUNPROC = void function (const(GLubyte)* c, const(GLfloat)* v);
alias PFNGLCOLOR4UBVERTEX3FSUNPROC = void function (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLCOLOR4UBVERTEX3FVSUNPROC = void function (const(GLubyte)* c, const(GLfloat)* v);
alias PFNGLCOLOR3FVERTEX3FSUNPROC = void function (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLCOLOR3FVERTEX3FVSUNPROC = void function (const(GLfloat)* c, const(GLfloat)* v);
alias PFNGLNORMAL3FVERTEX3FSUNPROC = void function (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLNORMAL3FVERTEX3FVSUNPROC = void function (const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC = void function (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC = void function (const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLTEXCOORD2FVERTEX3FSUNPROC = void function (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLTEXCOORD2FVERTEX3FVSUNPROC = void function (const(GLfloat)* tc, const(GLfloat)* v);
alias PFNGLTEXCOORD4FVERTEX4FSUNPROC = void function (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLTEXCOORD4FVERTEX4FVSUNPROC = void function (const(GLfloat)* tc, const(GLfloat)* v);
alias PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC = void function (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC = void function (const(GLfloat)* tc, const(GLubyte)* c, const(GLfloat)* v);
alias PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC = void function (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC = void function (const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* v);
alias PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC = void function (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC = void function (const(GLfloat)* tc, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC = void function (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC = void function (const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC = void function (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC = void function (const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC = void function (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC = void function (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLubyte)* c, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC = void function (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* c, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC = void function (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC = void function (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC = void function (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC = void function (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* n, const(GLfloat)* v);
alias PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC = void function (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC = void function (const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
void glColor4ubVertex2fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
void glColor4ubVertex2fvSUN (const(GLubyte)* c, const(GLfloat)* v);
void glColor4ubVertex3fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glColor4ubVertex3fvSUN (const(GLubyte)* c, const(GLfloat)* v);
void glColor3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glColor3fVertex3fvSUN (const(GLfloat)* c, const(GLfloat)* v);
void glNormal3fVertex3fSUN (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glNormal3fVertex3fvSUN (const(GLfloat)* n, const(GLfloat)* v);
void glColor4fNormal3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glColor4fNormal3fVertex3fvSUN (const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
void glTexCoord2fVertex3fSUN (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fVertex3fvSUN (const(GLfloat)* tc, const(GLfloat)* v);
void glTexCoord4fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glTexCoord4fVertex4fvSUN (const(GLfloat)* tc, const(GLfloat)* v);
void glTexCoord2fColor4ubVertex3fSUN (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor4ubVertex3fvSUN (const(GLfloat)* tc, const(GLubyte)* c, const(GLfloat)* v);
void glTexCoord2fColor3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor3fVertex3fvSUN (const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* v);
void glTexCoord2fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fNormal3fVertex3fvSUN (const(GLfloat)* tc, const(GLfloat)* n, const(GLfloat)* v);
void glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor4fNormal3fVertex3fvSUN (const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
void glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glTexCoord4fColor4fNormal3fVertex4fvSUN (const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
void glReplacementCodeuiVertex3fSUN (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* v);
void glReplacementCodeuiColor4ubVertex3fSUN (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor4ubVertex3fvSUN (const(GLuint)* rc, const(GLubyte)* c, const(GLfloat)* v);
void glReplacementCodeuiColor3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor3fVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* c, const(GLfloat)* v);
void glReplacementCodeuiNormal3fVertex3fSUN (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiNormal3fVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* n, const(GLfloat)* v);
void glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor4fNormal3fVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);
void glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* v);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* n, const(GLfloat)* v);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v);

/* GL_SUN_vertex */

enum GL_WIN_phong_shading = 1;
enum GL_PHONG_WIN = 0x80EA;
enum GL_PHONG_HINT_WIN = 0x80EB;
/* GL_WIN_phong_shading */

enum GL_WIN_specular_fog = 1;
enum GL_FOG_SPECULAR_TEXTURE_WIN = 0x80EC;
/* GL_WIN_specular_fog */

