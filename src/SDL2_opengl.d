/*
  Simple DirectMedia Layer
  Copyright (C) 1997-2019 Sam Lantinga <slouken@libsdl.org>

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

/**
 *  \file SDL_opengl.h
 *
 *  This is a simple file to encapsulate the OpenGL API headers.
 */

/**
 *  \def NO_SDL_GLEXT
 *
 *  Define this if you have your own version of glext.h and want to disable the
 *  version included in SDL_opengl.h.
 */

extern (C):

/* No OpenGL on iOS. */

/*
 * Mesa 3-D graphics library
 *
 * Copyright (C) 1999-2006  Brian Paul   All Rights Reserved.
 * Copyright (C) 2009  VMware, Inc.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

/**********************************************************************
 * Begin system-specific stuff.
 */

/* tag specify we're building mesa as a DLL */

/* tag specifying we're building for DLL runtime support */

/* for use with static link lib build of Win32 edition only */

/* _STATIC_MESA support */
/* The generated DLLs by MingW with STDCALL are not compatible with the ones done by Microsoft's compilers */

/* use native windows opengl32 */

/* native os/2 opengl */

/* WIN32 && !CYGWIN */

/*
 * WINDOWS: Include windows.h here to define APIENTRY.
 * It is also useful when applications include this file by
 * including only glut.h, since glut.h depends on windows.h.
 * Applications needing to include windows.h with parms other
 * than "WIN32_LEAN_AND_MEAN" may include windows.h before
 * glut.h or gl.h.
 */

/* don't define min() and max(). */

//enum APIENTRY = GLAPIENTRY;

/* "P" suffix to be used for a pointer to a function */

/*
 * End system-specific stuff.
 **********************************************************************/

enum GL_VERSION_1_1 = 1;
enum GL_VERSION_1_2 = 1;
enum GL_VERSION_1_3 = 1;
enum GL_ARB_imaging = 1;

/*
 * Datatypes
 */
alias GLenum = uint;
alias GLboolean = ubyte;
alias GLbitfield = uint;
alias GLvoid = void;
alias GLbyte = byte; /* 1-byte signed */
alias GLshort = short; /* 2-byte signed */
alias GLint = int; /* 4-byte signed */
alias GLubyte = ubyte; /* 1-byte unsigned */
alias GLushort = ushort; /* 2-byte unsigned */
alias GLuint = uint; /* 4-byte unsigned */
alias GLsizei = int; /* 4-byte signed */
alias GLfloat = float; /* single precision float */
alias GLclampf = float; /* single precision float in [0,1] */
alias GLdouble = double; /* double precision float */
alias GLclampd = double; /* double precision float in [0,1] */

/*
 * Constants
 */

/* Boolean values */
enum GL_FALSE = 0;
enum GL_TRUE = 1;

/* Data types */
enum GL_BYTE = 0x1400;
enum GL_UNSIGNED_BYTE = 0x1401;
enum GL_SHORT = 0x1402;
enum GL_UNSIGNED_SHORT = 0x1403;
enum GL_INT = 0x1404;
enum GL_UNSIGNED_INT = 0x1405;
enum GL_FLOAT = 0x1406;
enum GL_2_BYTES = 0x1407;
enum GL_3_BYTES = 0x1408;
enum GL_4_BYTES = 0x1409;
enum GL_DOUBLE = 0x140A;

/* Primitives */
enum GL_POINTS = 0x0000;
enum GL_LINES = 0x0001;
enum GL_LINE_LOOP = 0x0002;
enum GL_LINE_STRIP = 0x0003;
enum GL_TRIANGLES = 0x0004;
enum GL_TRIANGLE_STRIP = 0x0005;
enum GL_TRIANGLE_FAN = 0x0006;
enum GL_QUADS = 0x0007;
enum GL_QUAD_STRIP = 0x0008;
enum GL_POLYGON = 0x0009;

/* Vertex Arrays */
enum GL_VERTEX_ARRAY = 0x8074;
enum GL_NORMAL_ARRAY = 0x8075;
enum GL_COLOR_ARRAY = 0x8076;
enum GL_INDEX_ARRAY = 0x8077;
enum GL_TEXTURE_COORD_ARRAY = 0x8078;
enum GL_EDGE_FLAG_ARRAY = 0x8079;
enum GL_VERTEX_ARRAY_SIZE = 0x807A;
enum GL_VERTEX_ARRAY_TYPE = 0x807B;
enum GL_VERTEX_ARRAY_STRIDE = 0x807C;
enum GL_NORMAL_ARRAY_TYPE = 0x807E;
enum GL_NORMAL_ARRAY_STRIDE = 0x807F;
enum GL_COLOR_ARRAY_SIZE = 0x8081;
enum GL_COLOR_ARRAY_TYPE = 0x8082;
enum GL_COLOR_ARRAY_STRIDE = 0x8083;
enum GL_INDEX_ARRAY_TYPE = 0x8085;
enum GL_INDEX_ARRAY_STRIDE = 0x8086;
enum GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088;
enum GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089;
enum GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
enum GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C;
enum GL_VERTEX_ARRAY_POINTER = 0x808E;
enum GL_NORMAL_ARRAY_POINTER = 0x808F;
enum GL_COLOR_ARRAY_POINTER = 0x8090;
enum GL_INDEX_ARRAY_POINTER = 0x8091;
enum GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092;
enum GL_EDGE_FLAG_ARRAY_POINTER = 0x8093;
enum GL_V2F = 0x2A20;
enum GL_V3F = 0x2A21;
enum GL_C4UB_V2F = 0x2A22;
enum GL_C4UB_V3F = 0x2A23;
enum GL_C3F_V3F = 0x2A24;
enum GL_N3F_V3F = 0x2A25;
enum GL_C4F_N3F_V3F = 0x2A26;
enum GL_T2F_V3F = 0x2A27;
enum GL_T4F_V4F = 0x2A28;
enum GL_T2F_C4UB_V3F = 0x2A29;
enum GL_T2F_C3F_V3F = 0x2A2A;
enum GL_T2F_N3F_V3F = 0x2A2B;
enum GL_T2F_C4F_N3F_V3F = 0x2A2C;
enum GL_T4F_C4F_N3F_V4F = 0x2A2D;

/* Matrix Mode */
enum GL_MATRIX_MODE = 0x0BA0;
enum GL_MODELVIEW = 0x1700;
enum GL_PROJECTION = 0x1701;
enum GL_TEXTURE = 0x1702;

/* Points */
enum GL_POINT_SMOOTH = 0x0B10;
enum GL_POINT_SIZE = 0x0B11;
enum GL_POINT_SIZE_GRANULARITY = 0x0B13;
enum GL_POINT_SIZE_RANGE = 0x0B12;

/* Lines */
enum GL_LINE_SMOOTH = 0x0B20;
enum GL_LINE_STIPPLE = 0x0B24;
enum GL_LINE_STIPPLE_PATTERN = 0x0B25;
enum GL_LINE_STIPPLE_REPEAT = 0x0B26;
enum GL_LINE_WIDTH = 0x0B21;
enum GL_LINE_WIDTH_GRANULARITY = 0x0B23;
enum GL_LINE_WIDTH_RANGE = 0x0B22;

/* Polygons */
enum GL_POINT = 0x1B00;
enum GL_LINE = 0x1B01;
enum GL_FILL = 0x1B02;
enum GL_CW = 0x0900;
enum GL_CCW = 0x0901;
enum GL_FRONT = 0x0404;
enum GL_BACK = 0x0405;
enum GL_POLYGON_MODE = 0x0B40;
enum GL_POLYGON_SMOOTH = 0x0B41;
enum GL_POLYGON_STIPPLE = 0x0B42;
enum GL_EDGE_FLAG = 0x0B43;
enum GL_CULL_FACE = 0x0B44;
enum GL_CULL_FACE_MODE = 0x0B45;
enum GL_FRONT_FACE = 0x0B46;
enum GL_POLYGON_OFFSET_FACTOR = 0x8038;
enum GL_POLYGON_OFFSET_UNITS = 0x2A00;
enum GL_POLYGON_OFFSET_POINT = 0x2A01;
enum GL_POLYGON_OFFSET_LINE = 0x2A02;
enum GL_POLYGON_OFFSET_FILL = 0x8037;

/* Display Lists */
enum GL_COMPILE = 0x1300;
enum GL_COMPILE_AND_EXECUTE = 0x1301;
enum GL_LIST_BASE = 0x0B32;
enum GL_LIST_INDEX = 0x0B33;
enum GL_LIST_MODE = 0x0B30;

/* Depth buffer */
enum GL_NEVER = 0x0200;
enum GL_LESS = 0x0201;
enum GL_EQUAL = 0x0202;
enum GL_LEQUAL = 0x0203;
enum GL_GREATER = 0x0204;
enum GL_NOTEQUAL = 0x0205;
enum GL_GEQUAL = 0x0206;
enum GL_ALWAYS = 0x0207;
enum GL_DEPTH_TEST = 0x0B71;
enum GL_DEPTH_BITS = 0x0D56;
enum GL_DEPTH_CLEAR_VALUE = 0x0B73;
enum GL_DEPTH_FUNC = 0x0B74;
enum GL_DEPTH_RANGE = 0x0B70;
enum GL_DEPTH_WRITEMASK = 0x0B72;
enum GL_DEPTH_COMPONENT = 0x1902;

/* Lighting */
enum GL_LIGHTING = 0x0B50;
enum GL_LIGHT0 = 0x4000;
enum GL_LIGHT1 = 0x4001;
enum GL_LIGHT2 = 0x4002;
enum GL_LIGHT3 = 0x4003;
enum GL_LIGHT4 = 0x4004;
enum GL_LIGHT5 = 0x4005;
enum GL_LIGHT6 = 0x4006;
enum GL_LIGHT7 = 0x4007;
enum GL_SPOT_EXPONENT = 0x1205;
enum GL_SPOT_CUTOFF = 0x1206;
enum GL_CONSTANT_ATTENUATION = 0x1207;
enum GL_LINEAR_ATTENUATION = 0x1208;
enum GL_QUADRATIC_ATTENUATION = 0x1209;
enum GL_AMBIENT = 0x1200;
enum GL_DIFFUSE = 0x1201;
enum GL_SPECULAR = 0x1202;
enum GL_SHININESS = 0x1601;
enum GL_EMISSION = 0x1600;
enum GL_POSITION = 0x1203;
enum GL_SPOT_DIRECTION = 0x1204;
enum GL_AMBIENT_AND_DIFFUSE = 0x1602;
enum GL_COLOR_INDEXES = 0x1603;
enum GL_LIGHT_MODEL_TWO_SIDE = 0x0B52;
enum GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
enum GL_LIGHT_MODEL_AMBIENT = 0x0B53;
enum GL_FRONT_AND_BACK = 0x0408;
enum GL_SHADE_MODEL = 0x0B54;
enum GL_FLAT = 0x1D00;
enum GL_SMOOTH = 0x1D01;
enum GL_COLOR_MATERIAL = 0x0B57;
enum GL_COLOR_MATERIAL_FACE = 0x0B55;
enum GL_COLOR_MATERIAL_PARAMETER = 0x0B56;
enum GL_NORMALIZE = 0x0BA1;

/* User clipping planes */
enum GL_CLIP_PLANE0 = 0x3000;
enum GL_CLIP_PLANE1 = 0x3001;
enum GL_CLIP_PLANE2 = 0x3002;
enum GL_CLIP_PLANE3 = 0x3003;
enum GL_CLIP_PLANE4 = 0x3004;
enum GL_CLIP_PLANE5 = 0x3005;

/* Accumulation buffer */
enum GL_ACCUM_RED_BITS = 0x0D58;
enum GL_ACCUM_GREEN_BITS = 0x0D59;
enum GL_ACCUM_BLUE_BITS = 0x0D5A;
enum GL_ACCUM_ALPHA_BITS = 0x0D5B;
enum GL_ACCUM_CLEAR_VALUE = 0x0B80;
enum GL_ACCUM = 0x0100;
enum GL_ADD = 0x0104;
enum GL_LOAD = 0x0101;
enum GL_MULT = 0x0103;
enum GL_RETURN = 0x0102;

/* Alpha testing */
enum GL_ALPHA_TEST = 0x0BC0;
enum GL_ALPHA_TEST_REF = 0x0BC2;
enum GL_ALPHA_TEST_FUNC = 0x0BC1;

/* Blending */
enum GL_BLEND = 0x0BE2;
enum GL_BLEND_SRC = 0x0BE1;
enum GL_BLEND_DST = 0x0BE0;
enum GL_ZERO = 0;
enum GL_ONE = 1;
enum GL_SRC_COLOR = 0x0300;
enum GL_ONE_MINUS_SRC_COLOR = 0x0301;
enum GL_SRC_ALPHA = 0x0302;
enum GL_ONE_MINUS_SRC_ALPHA = 0x0303;
enum GL_DST_ALPHA = 0x0304;
enum GL_ONE_MINUS_DST_ALPHA = 0x0305;
enum GL_DST_COLOR = 0x0306;
enum GL_ONE_MINUS_DST_COLOR = 0x0307;
enum GL_SRC_ALPHA_SATURATE = 0x0308;

/* Render Mode */
enum GL_FEEDBACK = 0x1C01;
enum GL_RENDER = 0x1C00;
enum GL_SELECT = 0x1C02;

/* Feedback */
enum GL_2D = 0x0600;
enum GL_3D = 0x0601;
enum GL_3D_COLOR = 0x0602;
enum GL_3D_COLOR_TEXTURE = 0x0603;
enum GL_4D_COLOR_TEXTURE = 0x0604;
enum GL_POINT_TOKEN = 0x0701;
enum GL_LINE_TOKEN = 0x0702;
enum GL_LINE_RESET_TOKEN = 0x0707;
enum GL_POLYGON_TOKEN = 0x0703;
enum GL_BITMAP_TOKEN = 0x0704;
enum GL_DRAW_PIXEL_TOKEN = 0x0705;
enum GL_COPY_PIXEL_TOKEN = 0x0706;
enum GL_PASS_THROUGH_TOKEN = 0x0700;
enum GL_FEEDBACK_BUFFER_POINTER = 0x0DF0;
enum GL_FEEDBACK_BUFFER_SIZE = 0x0DF1;
enum GL_FEEDBACK_BUFFER_TYPE = 0x0DF2;

/* Selection */
enum GL_SELECTION_BUFFER_POINTER = 0x0DF3;
enum GL_SELECTION_BUFFER_SIZE = 0x0DF4;

/* Fog */
enum GL_FOG = 0x0B60;
enum GL_FOG_MODE = 0x0B65;
enum GL_FOG_DENSITY = 0x0B62;
enum GL_FOG_COLOR = 0x0B66;
enum GL_FOG_INDEX = 0x0B61;
enum GL_FOG_START = 0x0B63;
enum GL_FOG_END = 0x0B64;
enum GL_LINEAR = 0x2601;
enum GL_EXP = 0x0800;
enum GL_EXP2 = 0x0801;

/* Logic Ops */
enum GL_LOGIC_OP = 0x0BF1;
enum GL_INDEX_LOGIC_OP = 0x0BF1;
enum GL_COLOR_LOGIC_OP = 0x0BF2;
enum GL_LOGIC_OP_MODE = 0x0BF0;
enum GL_CLEAR = 0x1500;
enum GL_SET = 0x150F;
enum GL_COPY = 0x1503;
enum GL_COPY_INVERTED = 0x150C;
enum GL_NOOP = 0x1505;
enum GL_INVERT = 0x150A;
enum GL_AND = 0x1501;
enum GL_NAND = 0x150E;
enum GL_OR = 0x1507;
enum GL_NOR = 0x1508;
enum GL_XOR = 0x1506;
enum GL_EQUIV = 0x1509;
enum GL_AND_REVERSE = 0x1502;
enum GL_AND_INVERTED = 0x1504;
enum GL_OR_REVERSE = 0x150B;
enum GL_OR_INVERTED = 0x150D;

/* Stencil */
enum GL_STENCIL_BITS = 0x0D57;
enum GL_STENCIL_TEST = 0x0B90;
enum GL_STENCIL_CLEAR_VALUE = 0x0B91;
enum GL_STENCIL_FUNC = 0x0B92;
enum GL_STENCIL_VALUE_MASK = 0x0B93;
enum GL_STENCIL_FAIL = 0x0B94;
enum GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;
enum GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;
enum GL_STENCIL_REF = 0x0B97;
enum GL_STENCIL_WRITEMASK = 0x0B98;
enum GL_STENCIL_INDEX = 0x1901;
enum GL_KEEP = 0x1E00;
enum GL_REPLACE = 0x1E01;
enum GL_INCR = 0x1E02;
enum GL_DECR = 0x1E03;

/* Buffers, Pixel Drawing/Reading */
enum GL_NONE = 0;
enum GL_LEFT = 0x0406;
enum GL_RIGHT = 0x0407;
/*GL_FRONT					0x0404 */
/*GL_BACK					0x0405 */
/*GL_FRONT_AND_BACK				0x0408 */
enum GL_FRONT_LEFT = 0x0400;
enum GL_FRONT_RIGHT = 0x0401;
enum GL_BACK_LEFT = 0x0402;
enum GL_BACK_RIGHT = 0x0403;
enum GL_AUX0 = 0x0409;
enum GL_AUX1 = 0x040A;
enum GL_AUX2 = 0x040B;
enum GL_AUX3 = 0x040C;
enum GL_COLOR_INDEX = 0x1900;
enum GL_RED = 0x1903;
enum GL_GREEN = 0x1904;
enum GL_BLUE = 0x1905;
enum GL_ALPHA = 0x1906;
enum GL_LUMINANCE = 0x1909;
enum GL_LUMINANCE_ALPHA = 0x190A;
enum GL_ALPHA_BITS = 0x0D55;
enum GL_RED_BITS = 0x0D52;
enum GL_GREEN_BITS = 0x0D53;
enum GL_BLUE_BITS = 0x0D54;
enum GL_INDEX_BITS = 0x0D51;
enum GL_SUBPIXEL_BITS = 0x0D50;
enum GL_AUX_BUFFERS = 0x0C00;
enum GL_READ_BUFFER = 0x0C02;
enum GL_DRAW_BUFFER = 0x0C01;
enum GL_DOUBLEBUFFER = 0x0C32;
enum GL_STEREO = 0x0C33;
enum GL_BITMAP = 0x1A00;
enum GL_COLOR = 0x1800;
enum GL_DEPTH = 0x1801;
enum GL_STENCIL = 0x1802;
enum GL_DITHER = 0x0BD0;
enum GL_RGB = 0x1907;
enum GL_RGBA = 0x1908;

/* Implementation limits */
enum GL_MAX_LIST_NESTING = 0x0B31;
enum GL_MAX_EVAL_ORDER = 0x0D30;
enum GL_MAX_LIGHTS = 0x0D31;
enum GL_MAX_CLIP_PLANES = 0x0D32;
enum GL_MAX_TEXTURE_SIZE = 0x0D33;
enum GL_MAX_PIXEL_MAP_TABLE = 0x0D34;
enum GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35;
enum GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
enum GL_MAX_NAME_STACK_DEPTH = 0x0D37;
enum GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38;
enum GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39;
enum GL_MAX_VIEWPORT_DIMS = 0x0D3A;
enum GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;

/* Gets */
enum GL_ATTRIB_STACK_DEPTH = 0x0BB0;
enum GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
enum GL_COLOR_CLEAR_VALUE = 0x0C22;
enum GL_COLOR_WRITEMASK = 0x0C23;
enum GL_CURRENT_INDEX = 0x0B01;
enum GL_CURRENT_COLOR = 0x0B00;
enum GL_CURRENT_NORMAL = 0x0B02;
enum GL_CURRENT_RASTER_COLOR = 0x0B04;
enum GL_CURRENT_RASTER_DISTANCE = 0x0B09;
enum GL_CURRENT_RASTER_INDEX = 0x0B05;
enum GL_CURRENT_RASTER_POSITION = 0x0B07;
enum GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
enum GL_CURRENT_RASTER_POSITION_VALID = 0x0B08;
enum GL_CURRENT_TEXTURE_COORDS = 0x0B03;
enum GL_INDEX_CLEAR_VALUE = 0x0C20;
enum GL_INDEX_MODE = 0x0C30;
enum GL_INDEX_WRITEMASK = 0x0C21;
enum GL_MODELVIEW_MATRIX = 0x0BA6;
enum GL_MODELVIEW_STACK_DEPTH = 0x0BA3;
enum GL_NAME_STACK_DEPTH = 0x0D70;
enum GL_PROJECTION_MATRIX = 0x0BA7;
enum GL_PROJECTION_STACK_DEPTH = 0x0BA4;
enum GL_RENDER_MODE = 0x0C40;
enum GL_RGBA_MODE = 0x0C31;
enum GL_TEXTURE_MATRIX = 0x0BA8;
enum GL_TEXTURE_STACK_DEPTH = 0x0BA5;
enum GL_VIEWPORT = 0x0BA2;

/* Evaluators */
enum GL_AUTO_NORMAL = 0x0D80;
enum GL_MAP1_COLOR_4 = 0x0D90;
enum GL_MAP1_INDEX = 0x0D91;
enum GL_MAP1_NORMAL = 0x0D92;
enum GL_MAP1_TEXTURE_COORD_1 = 0x0D93;
enum GL_MAP1_TEXTURE_COORD_2 = 0x0D94;
enum GL_MAP1_TEXTURE_COORD_3 = 0x0D95;
enum GL_MAP1_TEXTURE_COORD_4 = 0x0D96;
enum GL_MAP1_VERTEX_3 = 0x0D97;
enum GL_MAP1_VERTEX_4 = 0x0D98;
enum GL_MAP2_COLOR_4 = 0x0DB0;
enum GL_MAP2_INDEX = 0x0DB1;
enum GL_MAP2_NORMAL = 0x0DB2;
enum GL_MAP2_TEXTURE_COORD_1 = 0x0DB3;
enum GL_MAP2_TEXTURE_COORD_2 = 0x0DB4;
enum GL_MAP2_TEXTURE_COORD_3 = 0x0DB5;
enum GL_MAP2_TEXTURE_COORD_4 = 0x0DB6;
enum GL_MAP2_VERTEX_3 = 0x0DB7;
enum GL_MAP2_VERTEX_4 = 0x0DB8;
enum GL_MAP1_GRID_DOMAIN = 0x0DD0;
enum GL_MAP1_GRID_SEGMENTS = 0x0DD1;
enum GL_MAP2_GRID_DOMAIN = 0x0DD2;
enum GL_MAP2_GRID_SEGMENTS = 0x0DD3;
enum GL_COEFF = 0x0A00;
enum GL_ORDER = 0x0A01;
enum GL_DOMAIN = 0x0A02;

/* Hints */
enum GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50;
enum GL_POINT_SMOOTH_HINT = 0x0C51;
enum GL_LINE_SMOOTH_HINT = 0x0C52;
enum GL_POLYGON_SMOOTH_HINT = 0x0C53;
enum GL_FOG_HINT = 0x0C54;
enum GL_DONT_CARE = 0x1100;
enum GL_FASTEST = 0x1101;
enum GL_NICEST = 0x1102;

/* Scissor box */
enum GL_SCISSOR_BOX = 0x0C10;
enum GL_SCISSOR_TEST = 0x0C11;

/* Pixel Mode / Transfer */
enum GL_MAP_COLOR = 0x0D10;
enum GL_MAP_STENCIL = 0x0D11;
enum GL_INDEX_SHIFT = 0x0D12;
enum GL_INDEX_OFFSET = 0x0D13;
enum GL_RED_SCALE = 0x0D14;
enum GL_RED_BIAS = 0x0D15;
enum GL_GREEN_SCALE = 0x0D18;
enum GL_GREEN_BIAS = 0x0D19;
enum GL_BLUE_SCALE = 0x0D1A;
enum GL_BLUE_BIAS = 0x0D1B;
enum GL_ALPHA_SCALE = 0x0D1C;
enum GL_ALPHA_BIAS = 0x0D1D;
enum GL_DEPTH_SCALE = 0x0D1E;
enum GL_DEPTH_BIAS = 0x0D1F;
enum GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
enum GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
enum GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
enum GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
enum GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
enum GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
enum GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
enum GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
enum GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
enum GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
enum GL_PIXEL_MAP_S_TO_S = 0x0C71;
enum GL_PIXEL_MAP_I_TO_I = 0x0C70;
enum GL_PIXEL_MAP_I_TO_R = 0x0C72;
enum GL_PIXEL_MAP_I_TO_G = 0x0C73;
enum GL_PIXEL_MAP_I_TO_B = 0x0C74;
enum GL_PIXEL_MAP_I_TO_A = 0x0C75;
enum GL_PIXEL_MAP_R_TO_R = 0x0C76;
enum GL_PIXEL_MAP_G_TO_G = 0x0C77;
enum GL_PIXEL_MAP_B_TO_B = 0x0C78;
enum GL_PIXEL_MAP_A_TO_A = 0x0C79;
enum GL_PACK_ALIGNMENT = 0x0D05;
enum GL_PACK_LSB_FIRST = 0x0D01;
enum GL_PACK_ROW_LENGTH = 0x0D02;
enum GL_PACK_SKIP_PIXELS = 0x0D04;
enum GL_PACK_SKIP_ROWS = 0x0D03;
enum GL_PACK_SWAP_BYTES = 0x0D00;
enum GL_UNPACK_ALIGNMENT = 0x0CF5;
enum GL_UNPACK_LSB_FIRST = 0x0CF1;
enum GL_UNPACK_ROW_LENGTH = 0x0CF2;
enum GL_UNPACK_SKIP_PIXELS = 0x0CF4;
enum GL_UNPACK_SKIP_ROWS = 0x0CF3;
enum GL_UNPACK_SWAP_BYTES = 0x0CF0;
enum GL_ZOOM_X = 0x0D16;
enum GL_ZOOM_Y = 0x0D17;

/* Texture mapping */
enum GL_TEXTURE_ENV = 0x2300;
enum GL_TEXTURE_ENV_MODE = 0x2200;
enum GL_TEXTURE_1D = 0x0DE0;
enum GL_TEXTURE_2D = 0x0DE1;
enum GL_TEXTURE_WRAP_S = 0x2802;
enum GL_TEXTURE_WRAP_T = 0x2803;
enum GL_TEXTURE_MAG_FILTER = 0x2800;
enum GL_TEXTURE_MIN_FILTER = 0x2801;
enum GL_TEXTURE_ENV_COLOR = 0x2201;
enum GL_TEXTURE_GEN_S = 0x0C60;
enum GL_TEXTURE_GEN_T = 0x0C61;
enum GL_TEXTURE_GEN_R = 0x0C62;
enum GL_TEXTURE_GEN_Q = 0x0C63;
enum GL_TEXTURE_GEN_MODE = 0x2500;
enum GL_TEXTURE_BORDER_COLOR = 0x1004;
enum GL_TEXTURE_WIDTH = 0x1000;
enum GL_TEXTURE_HEIGHT = 0x1001;
enum GL_TEXTURE_BORDER = 0x1005;
enum GL_TEXTURE_COMPONENTS = 0x1003;
enum GL_TEXTURE_RED_SIZE = 0x805C;
enum GL_TEXTURE_GREEN_SIZE = 0x805D;
enum GL_TEXTURE_BLUE_SIZE = 0x805E;
enum GL_TEXTURE_ALPHA_SIZE = 0x805F;
enum GL_TEXTURE_LUMINANCE_SIZE = 0x8060;
enum GL_TEXTURE_INTENSITY_SIZE = 0x8061;
enum GL_NEAREST_MIPMAP_NEAREST = 0x2700;
enum GL_NEAREST_MIPMAP_LINEAR = 0x2702;
enum GL_LINEAR_MIPMAP_NEAREST = 0x2701;
enum GL_LINEAR_MIPMAP_LINEAR = 0x2703;
enum GL_OBJECT_LINEAR = 0x2401;
enum GL_OBJECT_PLANE = 0x2501;
enum GL_EYE_LINEAR = 0x2400;
enum GL_EYE_PLANE = 0x2502;
enum GL_SPHERE_MAP = 0x2402;
enum GL_DECAL = 0x2101;
enum GL_MODULATE = 0x2100;
enum GL_NEAREST = 0x2600;
enum GL_REPEAT = 0x2901;
enum GL_CLAMP = 0x2900;
enum GL_S = 0x2000;
enum GL_T = 0x2001;
enum GL_R = 0x2002;
enum GL_Q = 0x2003;

/* Utility */
enum GL_VENDOR = 0x1F00;
enum GL_RENDERER = 0x1F01;
enum GL_VERSION = 0x1F02;
enum GL_EXTENSIONS = 0x1F03;

/* Errors */
enum GL_NO_ERROR = 0;
enum GL_INVALID_ENUM = 0x0500;
enum GL_INVALID_VALUE = 0x0501;
enum GL_INVALID_OPERATION = 0x0502;
enum GL_STACK_OVERFLOW = 0x0503;
enum GL_STACK_UNDERFLOW = 0x0504;
enum GL_OUT_OF_MEMORY = 0x0505;

/* glPush/PopAttrib bits */
enum GL_CURRENT_BIT = 0x00000001;
enum GL_POINT_BIT = 0x00000002;
enum GL_LINE_BIT = 0x00000004;
enum GL_POLYGON_BIT = 0x00000008;
enum GL_POLYGON_STIPPLE_BIT = 0x00000010;
enum GL_PIXEL_MODE_BIT = 0x00000020;
enum GL_LIGHTING_BIT = 0x00000040;
enum GL_FOG_BIT = 0x00000080;
enum GL_DEPTH_BUFFER_BIT = 0x00000100;
enum GL_ACCUM_BUFFER_BIT = 0x00000200;
enum GL_STENCIL_BUFFER_BIT = 0x00000400;
enum GL_VIEWPORT_BIT = 0x00000800;
enum GL_TRANSFORM_BIT = 0x00001000;
enum GL_ENABLE_BIT = 0x00002000;
enum GL_COLOR_BUFFER_BIT = 0x00004000;
enum GL_HINT_BIT = 0x00008000;
enum GL_EVAL_BIT = 0x00010000;
enum GL_LIST_BIT = 0x00020000;
enum GL_TEXTURE_BIT = 0x00040000;
enum GL_SCISSOR_BIT = 0x00080000;
enum GL_ALL_ATTRIB_BITS = 0x000FFFFF;

/* OpenGL 1.1 */
enum GL_PROXY_TEXTURE_1D = 0x8063;
enum GL_PROXY_TEXTURE_2D = 0x8064;
enum GL_TEXTURE_PRIORITY = 0x8066;
enum GL_TEXTURE_RESIDENT = 0x8067;
enum GL_TEXTURE_BINDING_1D = 0x8068;
enum GL_TEXTURE_BINDING_2D = 0x8069;
enum GL_TEXTURE_INTERNAL_FORMAT = 0x1003;
enum GL_ALPHA4 = 0x803B;
enum GL_ALPHA8 = 0x803C;
enum GL_ALPHA12 = 0x803D;
enum GL_ALPHA16 = 0x803E;
enum GL_LUMINANCE4 = 0x803F;
enum GL_LUMINANCE8 = 0x8040;
enum GL_LUMINANCE12 = 0x8041;
enum GL_LUMINANCE16 = 0x8042;
enum GL_LUMINANCE4_ALPHA4 = 0x8043;
enum GL_LUMINANCE6_ALPHA2 = 0x8044;
enum GL_LUMINANCE8_ALPHA8 = 0x8045;
enum GL_LUMINANCE12_ALPHA4 = 0x8046;
enum GL_LUMINANCE12_ALPHA12 = 0x8047;
enum GL_LUMINANCE16_ALPHA16 = 0x8048;
enum GL_INTENSITY = 0x8049;
enum GL_INTENSITY4 = 0x804A;
enum GL_INTENSITY8 = 0x804B;
enum GL_INTENSITY12 = 0x804C;
enum GL_INTENSITY16 = 0x804D;
enum GL_R3_G3_B2 = 0x2A10;
enum GL_RGB4 = 0x804F;
enum GL_RGB5 = 0x8050;
enum GL_RGB8 = 0x8051;
enum GL_RGB10 = 0x8052;
enum GL_RGB12 = 0x8053;
enum GL_RGB16 = 0x8054;
enum GL_RGBA2 = 0x8055;
enum GL_RGBA4 = 0x8056;
enum GL_RGB5_A1 = 0x8057;
enum GL_RGBA8 = 0x8058;
enum GL_RGB10_A2 = 0x8059;
enum GL_RGBA12 = 0x805A;
enum GL_RGBA16 = 0x805B;
enum GL_CLIENT_PIXEL_STORE_BIT = 0x00000001;
enum GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
enum GL_ALL_CLIENT_ATTRIB_BITS = 0xFFFFFFFF;
enum GL_CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF;

/*
 * Miscellaneous
 */

void glClearIndex (GLfloat c);

void glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);

void glClear (GLbitfield mask);

void glIndexMask (GLuint mask);

void glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);

void glAlphaFunc (GLenum func, GLclampf ref_);

void glBlendFunc (GLenum sfactor, GLenum dfactor);

void glLogicOp (GLenum opcode);

void glCullFace (GLenum mode);

void glFrontFace (GLenum mode);

void glPointSize (GLfloat size);

void glLineWidth (GLfloat width);

void glLineStipple (GLint factor, GLushort pattern);

void glPolygonMode (GLenum face, GLenum mode);

void glPolygonOffset (GLfloat factor, GLfloat units);

void glPolygonStipple (const(GLubyte)* mask);

void glGetPolygonStipple (GLubyte* mask);

void glEdgeFlag (GLboolean flag);

void glEdgeFlagv (const(GLboolean)* flag);

void glScissor (GLint x, GLint y, GLsizei width, GLsizei height);

void glClipPlane (GLenum plane, const(GLdouble)* equation);

void glGetClipPlane (GLenum plane, GLdouble* equation);

void glDrawBuffer (GLenum mode);

void glReadBuffer (GLenum mode);

void glEnable (GLenum cap);

void glDisable (GLenum cap);

GLboolean glIsEnabled (GLenum cap);

void glEnableClientState (GLenum cap); /* 1.1 */

void glDisableClientState (GLenum cap); /* 1.1 */

void glGetBooleanv (GLenum pname, GLboolean* params);

void glGetDoublev (GLenum pname, GLdouble* params);

void glGetFloatv (GLenum pname, GLfloat* params);

void glGetIntegerv (GLenum pname, GLint* params);

void glPushAttrib (GLbitfield mask);

void glPopAttrib ();

void glPushClientAttrib (GLbitfield mask); /* 1.1 */

void glPopClientAttrib (); /* 1.1 */

GLint glRenderMode (GLenum mode);

GLenum glGetError ();

const(GLubyte)* glGetString (GLenum name);

void glFinish ();

void glFlush ();

void glHint (GLenum target, GLenum mode);

/*
 * Depth Buffer
 */

void glClearDepth (GLclampd depth);

void glDepthFunc (GLenum func);

void glDepthMask (GLboolean flag);

void glDepthRange (GLclampd near_val, GLclampd far_val);

/*
 * Accumulation Buffer
 */

void glClearAccum (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);

void glAccum (GLenum op, GLfloat value);

/*
 * Transformation
 */

void glMatrixMode (GLenum mode);

void glOrtho (
    GLdouble left,
    GLdouble right,
    GLdouble bottom,
    GLdouble top,
    GLdouble near_val,
    GLdouble far_val);

void glFrustum (
    GLdouble left,
    GLdouble right,
    GLdouble bottom,
    GLdouble top,
    GLdouble near_val,
    GLdouble far_val);

void glViewport (GLint x, GLint y, GLsizei width, GLsizei height);

void glPushMatrix ();

void glPopMatrix ();

void glLoadIdentity ();

void glLoadMatrixd (const(GLdouble)* m);
void glLoadMatrixf (const(GLfloat)* m);

void glMultMatrixd (const(GLdouble)* m);
void glMultMatrixf (const(GLfloat)* m);

void glRotated (GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glRotatef (GLfloat angle, GLfloat x, GLfloat y, GLfloat z);

void glScaled (GLdouble x, GLdouble y, GLdouble z);
void glScalef (GLfloat x, GLfloat y, GLfloat z);

void glTranslated (GLdouble x, GLdouble y, GLdouble z);
void glTranslatef (GLfloat x, GLfloat y, GLfloat z);

/*
 * Display Lists
 */

GLboolean glIsList (GLuint list);

void glDeleteLists (GLuint list, GLsizei range);

GLuint glGenLists (GLsizei range);

void glNewList (GLuint list, GLenum mode);

void glEndList ();

void glCallList (GLuint list);

void glCallLists (GLsizei n, GLenum type, const(GLvoid)* lists);

void glListBase (GLuint base);

/*
 * Drawing Functions
 */

void glBegin (GLenum mode);

void glEnd ();

void glVertex2d (GLdouble x, GLdouble y);
void glVertex2f (GLfloat x, GLfloat y);
void glVertex2i (GLint x, GLint y);
void glVertex2s (GLshort x, GLshort y);

void glVertex3d (GLdouble x, GLdouble y, GLdouble z);
void glVertex3f (GLfloat x, GLfloat y, GLfloat z);
void glVertex3i (GLint x, GLint y, GLint z);
void glVertex3s (GLshort x, GLshort y, GLshort z);

void glVertex4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertex4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertex4i (GLint x, GLint y, GLint z, GLint w);
void glVertex4s (GLshort x, GLshort y, GLshort z, GLshort w);

void glVertex2dv (const(GLdouble)* v);
void glVertex2fv (const(GLfloat)* v);
void glVertex2iv (const(GLint)* v);
void glVertex2sv (const(GLshort)* v);

void glVertex3dv (const(GLdouble)* v);
void glVertex3fv (const(GLfloat)* v);
void glVertex3iv (const(GLint)* v);
void glVertex3sv (const(GLshort)* v);

void glVertex4dv (const(GLdouble)* v);
void glVertex4fv (const(GLfloat)* v);
void glVertex4iv (const(GLint)* v);
void glVertex4sv (const(GLshort)* v);

void glNormal3b (GLbyte nx, GLbyte ny, GLbyte nz);
void glNormal3d (GLdouble nx, GLdouble ny, GLdouble nz);
void glNormal3f (GLfloat nx, GLfloat ny, GLfloat nz);
void glNormal3i (GLint nx, GLint ny, GLint nz);
void glNormal3s (GLshort nx, GLshort ny, GLshort nz);

void glNormal3bv (const(GLbyte)* v);
void glNormal3dv (const(GLdouble)* v);
void glNormal3fv (const(GLfloat)* v);
void glNormal3iv (const(GLint)* v);
void glNormal3sv (const(GLshort)* v);

void glIndexd (GLdouble c);
void glIndexf (GLfloat c);
void glIndexi (GLint c);
void glIndexs (GLshort c);
void glIndexub (GLubyte c); /* 1.1 */

void glIndexdv (const(GLdouble)* c);
void glIndexfv (const(GLfloat)* c);
void glIndexiv (const(GLint)* c);
void glIndexsv (const(GLshort)* c);
void glIndexubv (const(GLubyte)* c); /* 1.1 */

void glColor3b (GLbyte red, GLbyte green, GLbyte blue);
void glColor3d (GLdouble red, GLdouble green, GLdouble blue);
void glColor3f (GLfloat red, GLfloat green, GLfloat blue);
void glColor3i (GLint red, GLint green, GLint blue);
void glColor3s (GLshort red, GLshort green, GLshort blue);
void glColor3ub (GLubyte red, GLubyte green, GLubyte blue);
void glColor3ui (GLuint red, GLuint green, GLuint blue);
void glColor3us (GLushort red, GLushort green, GLushort blue);

void glColor4b (GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void glColor4d (GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void glColor4f (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glColor4i (GLint red, GLint green, GLint blue, GLint alpha);
void glColor4s (GLshort red, GLshort green, GLshort blue, GLshort alpha);
void glColor4ub (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void glColor4ui (GLuint red, GLuint green, GLuint blue, GLuint alpha);
void glColor4us (GLushort red, GLushort green, GLushort blue, GLushort alpha);

void glColor3bv (const(GLbyte)* v);
void glColor3dv (const(GLdouble)* v);
void glColor3fv (const(GLfloat)* v);
void glColor3iv (const(GLint)* v);
void glColor3sv (const(GLshort)* v);
void glColor3ubv (const(GLubyte)* v);
void glColor3uiv (const(GLuint)* v);
void glColor3usv (const(GLushort)* v);

void glColor4bv (const(GLbyte)* v);
void glColor4dv (const(GLdouble)* v);
void glColor4fv (const(GLfloat)* v);
void glColor4iv (const(GLint)* v);
void glColor4sv (const(GLshort)* v);
void glColor4ubv (const(GLubyte)* v);
void glColor4uiv (const(GLuint)* v);
void glColor4usv (const(GLushort)* v);

void glTexCoord1d (GLdouble s);
void glTexCoord1f (GLfloat s);
void glTexCoord1i (GLint s);
void glTexCoord1s (GLshort s);

void glTexCoord2d (GLdouble s, GLdouble t);
void glTexCoord2f (GLfloat s, GLfloat t);
void glTexCoord2i (GLint s, GLint t);
void glTexCoord2s (GLshort s, GLshort t);

void glTexCoord3d (GLdouble s, GLdouble t, GLdouble r);
void glTexCoord3f (GLfloat s, GLfloat t, GLfloat r);
void glTexCoord3i (GLint s, GLint t, GLint r);
void glTexCoord3s (GLshort s, GLshort t, GLshort r);

void glTexCoord4d (GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glTexCoord4f (GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glTexCoord4i (GLint s, GLint t, GLint r, GLint q);
void glTexCoord4s (GLshort s, GLshort t, GLshort r, GLshort q);

void glTexCoord1dv (const(GLdouble)* v);
void glTexCoord1fv (const(GLfloat)* v);
void glTexCoord1iv (const(GLint)* v);
void glTexCoord1sv (const(GLshort)* v);

void glTexCoord2dv (const(GLdouble)* v);
void glTexCoord2fv (const(GLfloat)* v);
void glTexCoord2iv (const(GLint)* v);
void glTexCoord2sv (const(GLshort)* v);

void glTexCoord3dv (const(GLdouble)* v);
void glTexCoord3fv (const(GLfloat)* v);
void glTexCoord3iv (const(GLint)* v);
void glTexCoord3sv (const(GLshort)* v);

void glTexCoord4dv (const(GLdouble)* v);
void glTexCoord4fv (const(GLfloat)* v);
void glTexCoord4iv (const(GLint)* v);
void glTexCoord4sv (const(GLshort)* v);

void glRasterPos2d (GLdouble x, GLdouble y);
void glRasterPos2f (GLfloat x, GLfloat y);
void glRasterPos2i (GLint x, GLint y);
void glRasterPos2s (GLshort x, GLshort y);

void glRasterPos3d (GLdouble x, GLdouble y, GLdouble z);
void glRasterPos3f (GLfloat x, GLfloat y, GLfloat z);
void glRasterPos3i (GLint x, GLint y, GLint z);
void glRasterPos3s (GLshort x, GLshort y, GLshort z);

void glRasterPos4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glRasterPos4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glRasterPos4i (GLint x, GLint y, GLint z, GLint w);
void glRasterPos4s (GLshort x, GLshort y, GLshort z, GLshort w);

void glRasterPos2dv (const(GLdouble)* v);
void glRasterPos2fv (const(GLfloat)* v);
void glRasterPos2iv (const(GLint)* v);
void glRasterPos2sv (const(GLshort)* v);

void glRasterPos3dv (const(GLdouble)* v);
void glRasterPos3fv (const(GLfloat)* v);
void glRasterPos3iv (const(GLint)* v);
void glRasterPos3sv (const(GLshort)* v);

void glRasterPos4dv (const(GLdouble)* v);
void glRasterPos4fv (const(GLfloat)* v);
void glRasterPos4iv (const(GLint)* v);
void glRasterPos4sv (const(GLshort)* v);

void glRectd (GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void glRectf (GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void glRecti (GLint x1, GLint y1, GLint x2, GLint y2);
void glRects (GLshort x1, GLshort y1, GLshort x2, GLshort y2);

void glRectdv (const(GLdouble)* v1, const(GLdouble)* v2);
void glRectfv (const(GLfloat)* v1, const(GLfloat)* v2);
void glRectiv (const(GLint)* v1, const(GLint)* v2);
void glRectsv (const(GLshort)* v1, const(GLshort)* v2);

/*
 * Vertex Arrays  (1.1)
 */

void glVertexPointer (
    GLint size,
    GLenum type,
    GLsizei stride,
    const(GLvoid)* ptr);

void glNormalPointer (GLenum type, GLsizei stride, const(GLvoid)* ptr);

void glColorPointer (
    GLint size,
    GLenum type,
    GLsizei stride,
    const(GLvoid)* ptr);

void glIndexPointer (GLenum type, GLsizei stride, const(GLvoid)* ptr);

void glTexCoordPointer (
    GLint size,
    GLenum type,
    GLsizei stride,
    const(GLvoid)* ptr);

void glEdgeFlagPointer (GLsizei stride, const(GLvoid)* ptr);

void glGetPointerv (GLenum pname, GLvoid** params);

void glArrayElement (GLint i);

void glDrawArrays (GLenum mode, GLint first, GLsizei count);

void glDrawElements (
    GLenum mode,
    GLsizei count,
    GLenum type,
    const(GLvoid)* indices);

void glInterleavedArrays (
    GLenum format,
    GLsizei stride,
    const(GLvoid)* pointer);

/*
 * Lighting
 */

void glShadeModel (GLenum mode);

void glLightf (GLenum light, GLenum pname, GLfloat param);
void glLighti (GLenum light, GLenum pname, GLint param);
void glLightfv (GLenum light, GLenum pname, const(GLfloat)* params);
void glLightiv (GLenum light, GLenum pname, const(GLint)* params);

void glGetLightfv (GLenum light, GLenum pname, GLfloat* params);
void glGetLightiv (GLenum light, GLenum pname, GLint* params);

void glLightModelf (GLenum pname, GLfloat param);
void glLightModeli (GLenum pname, GLint param);
void glLightModelfv (GLenum pname, const(GLfloat)* params);
void glLightModeliv (GLenum pname, const(GLint)* params);

void glMaterialf (GLenum face, GLenum pname, GLfloat param);
void glMateriali (GLenum face, GLenum pname, GLint param);
void glMaterialfv (GLenum face, GLenum pname, const(GLfloat)* params);
void glMaterialiv (GLenum face, GLenum pname, const(GLint)* params);

void glGetMaterialfv (GLenum face, GLenum pname, GLfloat* params);
void glGetMaterialiv (GLenum face, GLenum pname, GLint* params);

void glColorMaterial (GLenum face, GLenum mode);

/*
 * Raster functions
 */

void glPixelZoom (GLfloat xfactor, GLfloat yfactor);

void glPixelStoref (GLenum pname, GLfloat param);
void glPixelStorei (GLenum pname, GLint param);

void glPixelTransferf (GLenum pname, GLfloat param);
void glPixelTransferi (GLenum pname, GLint param);

void glPixelMapfv (GLenum map, GLsizei mapsize, const(GLfloat)* values);
void glPixelMapuiv (GLenum map, GLsizei mapsize, const(GLuint)* values);
void glPixelMapusv (GLenum map, GLsizei mapsize, const(GLushort)* values);

void glGetPixelMapfv (GLenum map, GLfloat* values);
void glGetPixelMapuiv (GLenum map, GLuint* values);
void glGetPixelMapusv (GLenum map, GLushort* values);

void glBitmap (
    GLsizei width,
    GLsizei height,
    GLfloat xorig,
    GLfloat yorig,
    GLfloat xmove,
    GLfloat ymove,
    const(GLubyte)* bitmap);

void glReadPixels (
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    GLvoid* pixels);

void glDrawPixels (
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glCopyPixels (
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLenum type);

/*
 * Stenciling
 */

void glStencilFunc (GLenum func, GLint ref_, GLuint mask);

void glStencilMask (GLuint mask);

void glStencilOp (GLenum fail, GLenum zfail, GLenum zpass);

void glClearStencil (GLint s);

/*
 * Texture mapping
 */

void glTexGend (GLenum coord, GLenum pname, GLdouble param);
void glTexGenf (GLenum coord, GLenum pname, GLfloat param);
void glTexGeni (GLenum coord, GLenum pname, GLint param);

void glTexGendv (GLenum coord, GLenum pname, const(GLdouble)* params);
void glTexGenfv (GLenum coord, GLenum pname, const(GLfloat)* params);
void glTexGeniv (GLenum coord, GLenum pname, const(GLint)* params);

void glGetTexGendv (GLenum coord, GLenum pname, GLdouble* params);
void glGetTexGenfv (GLenum coord, GLenum pname, GLfloat* params);
void glGetTexGeniv (GLenum coord, GLenum pname, GLint* params);

void glTexEnvf (GLenum target, GLenum pname, GLfloat param);
void glTexEnvi (GLenum target, GLenum pname, GLint param);

void glTexEnvfv (GLenum target, GLenum pname, const(GLfloat)* params);
void glTexEnviv (GLenum target, GLenum pname, const(GLint)* params);

void glGetTexEnvfv (GLenum target, GLenum pname, GLfloat* params);
void glGetTexEnviv (GLenum target, GLenum pname, GLint* params);

void glTexParameterf (GLenum target, GLenum pname, GLfloat param);
void glTexParameteri (GLenum target, GLenum pname, GLint param);

void glTexParameterfv (GLenum target, GLenum pname, const(GLfloat)* params);
void glTexParameteriv (GLenum target, GLenum pname, const(GLint)* params);

void glGetTexParameterfv (GLenum target, GLenum pname, GLfloat* params);
void glGetTexParameteriv (GLenum target, GLenum pname, GLint* params);

void glGetTexLevelParameterfv (
    GLenum target,
    GLint level,
    GLenum pname,
    GLfloat* params);
void glGetTexLevelParameteriv (
    GLenum target,
    GLint level,
    GLenum pname,
    GLint* params);

void glTexImage1D (
    GLenum target,
    GLint level,
    GLint internalFormat,
    GLsizei width,
    GLint border,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glTexImage2D (
    GLenum target,
    GLint level,
    GLint internalFormat,
    GLsizei width,
    GLsizei height,
    GLint border,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glGetTexImage (
    GLenum target,
    GLint level,
    GLenum format,
    GLenum type,
    GLvoid* pixels);

/* 1.1 functions */

void glGenTextures (GLsizei n, GLuint* textures);

void glDeleteTextures (GLsizei n, const(GLuint)* textures);

void glBindTexture (GLenum target, GLuint texture);

void glPrioritizeTextures (
    GLsizei n,
    const(GLuint)* textures,
    const(GLclampf)* priorities);

GLboolean glAreTexturesResident (
    GLsizei n,
    const(GLuint)* textures,
    GLboolean* residences);

GLboolean glIsTexture (GLuint texture);

void glTexSubImage1D (
    GLenum target,
    GLint level,
    GLint xoffset,
    GLsizei width,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glTexSubImage2D (
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glCopyTexImage1D (
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width,
    GLint border);

void glCopyTexImage2D (
    GLenum target,
    GLint level,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height,
    GLint border);

void glCopyTexSubImage1D (
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint x,
    GLint y,
    GLsizei width);

void glCopyTexSubImage2D (
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height);

/*
 * Evaluators
 */

void glMap1d (
    GLenum target,
    GLdouble u1,
    GLdouble u2,
    GLint stride,
    GLint order,
    const(GLdouble)* points);
void glMap1f (
    GLenum target,
    GLfloat u1,
    GLfloat u2,
    GLint stride,
    GLint order,
    const(GLfloat)* points);

void glMap2d (
    GLenum target,
    GLdouble u1,
    GLdouble u2,
    GLint ustride,
    GLint uorder,
    GLdouble v1,
    GLdouble v2,
    GLint vstride,
    GLint vorder,
    const(GLdouble)* points);
void glMap2f (
    GLenum target,
    GLfloat u1,
    GLfloat u2,
    GLint ustride,
    GLint uorder,
    GLfloat v1,
    GLfloat v2,
    GLint vstride,
    GLint vorder,
    const(GLfloat)* points);

void glGetMapdv (GLenum target, GLenum query, GLdouble* v);
void glGetMapfv (GLenum target, GLenum query, GLfloat* v);
void glGetMapiv (GLenum target, GLenum query, GLint* v);

void glEvalCoord1d (GLdouble u);
void glEvalCoord1f (GLfloat u);

void glEvalCoord1dv (const(GLdouble)* u);
void glEvalCoord1fv (const(GLfloat)* u);

void glEvalCoord2d (GLdouble u, GLdouble v);
void glEvalCoord2f (GLfloat u, GLfloat v);

void glEvalCoord2dv (const(GLdouble)* u);
void glEvalCoord2fv (const(GLfloat)* u);

void glMapGrid1d (GLint un, GLdouble u1, GLdouble u2);
void glMapGrid1f (GLint un, GLfloat u1, GLfloat u2);

void glMapGrid2d (
    GLint un,
    GLdouble u1,
    GLdouble u2,
    GLint vn,
    GLdouble v1,
    GLdouble v2);
void glMapGrid2f (
    GLint un,
    GLfloat u1,
    GLfloat u2,
    GLint vn,
    GLfloat v1,
    GLfloat v2);

void glEvalPoint1 (GLint i);

void glEvalPoint2 (GLint i, GLint j);

void glEvalMesh1 (GLenum mode, GLint i1, GLint i2);

void glEvalMesh2 (GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);

/*
 * Fog
 */

void glFogf (GLenum pname, GLfloat param);

void glFogi (GLenum pname, GLint param);

void glFogfv (GLenum pname, const(GLfloat)* params);

void glFogiv (GLenum pname, const(GLint)* params);

/*
 * Selection and Feedback
 */

void glFeedbackBuffer (GLsizei size, GLenum type, GLfloat* buffer);

void glPassThrough (GLfloat token);

void glSelectBuffer (GLsizei size, GLuint* buffer);

void glInitNames ();

void glLoadName (GLuint name);

void glPushName (GLuint name);

void glPopName ();

/*
 * OpenGL 1.2
 */

enum GL_RESCALE_NORMAL = 0x803A;
enum GL_CLAMP_TO_EDGE = 0x812F;
enum GL_MAX_ELEMENTS_VERTICES = 0x80E8;
enum GL_MAX_ELEMENTS_INDICES = 0x80E9;
enum GL_BGR = 0x80E0;
enum GL_BGRA = 0x80E1;
enum GL_UNSIGNED_BYTE_3_3_2 = 0x8032;
enum GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;
enum GL_UNSIGNED_SHORT_5_6_5 = 0x8363;
enum GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;
enum GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;
enum GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
enum GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;
enum GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
enum GL_UNSIGNED_INT_8_8_8_8 = 0x8035;
enum GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;
enum GL_UNSIGNED_INT_10_10_10_2 = 0x8036;
enum GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;
enum GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
enum GL_SINGLE_COLOR = 0x81F9;
enum GL_SEPARATE_SPECULAR_COLOR = 0x81FA;
enum GL_TEXTURE_MIN_LOD = 0x813A;
enum GL_TEXTURE_MAX_LOD = 0x813B;
enum GL_TEXTURE_BASE_LEVEL = 0x813C;
enum GL_TEXTURE_MAX_LEVEL = 0x813D;
enum GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;
enum GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
enum GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
enum GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
enum GL_ALIASED_POINT_SIZE_RANGE = 0x846D;
enum GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;
enum GL_PACK_SKIP_IMAGES = 0x806B;
enum GL_PACK_IMAGE_HEIGHT = 0x806C;
enum GL_UNPACK_SKIP_IMAGES = 0x806D;
enum GL_UNPACK_IMAGE_HEIGHT = 0x806E;
enum GL_TEXTURE_3D = 0x806F;
enum GL_PROXY_TEXTURE_3D = 0x8070;
enum GL_TEXTURE_DEPTH = 0x8071;
enum GL_TEXTURE_WRAP_R = 0x8072;
enum GL_MAX_3D_TEXTURE_SIZE = 0x8073;
enum GL_TEXTURE_BINDING_3D = 0x806A;

void glDrawRangeElements (
    GLenum mode,
    GLuint start,
    GLuint end,
    GLsizei count,
    GLenum type,
    const(GLvoid)* indices);

void glTexImage3D (
    GLenum target,
    GLint level,
    GLint internalFormat,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLint border,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glTexSubImage3D (
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint zoffset,
    GLsizei width,
    GLsizei height,
    GLsizei depth,
    GLenum format,
    GLenum type,
    const(GLvoid)* pixels);

void glCopyTexSubImage3D (
    GLenum target,
    GLint level,
    GLint xoffset,
    GLint yoffset,
    GLint zoffset,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height);

alias PFNGLDRAWRANGEELEMENTSPROC = void function (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices);
alias PFNGLTEXIMAGE3DPROC = void function (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels);
alias PFNGLTEXSUBIMAGE3DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels);
alias PFNGLCOPYTEXSUBIMAGE3DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);

/*
 * GL_ARB_imaging
 */

enum GL_CONSTANT_COLOR = 0x8001;
enum GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
enum GL_CONSTANT_ALPHA = 0x8003;
enum GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;
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
enum GL_CONSTANT_BORDER = 0x8151;
enum GL_REPLICATE_BORDER = 0x8153;
enum GL_CONVOLUTION_BORDER_COLOR = 0x8154;
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
enum GL_BLEND_EQUATION = 0x8009;
enum GL_MIN = 0x8007;
enum GL_MAX = 0x8008;
enum GL_FUNC_ADD = 0x8006;
enum GL_FUNC_SUBTRACT = 0x800A;
enum GL_FUNC_REVERSE_SUBTRACT = 0x800B;
enum GL_BLEND_COLOR = 0x8005;

void glColorTable (
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLenum format,
    GLenum type,
    const(GLvoid)* table);

void glColorSubTable (
    GLenum target,
    GLsizei start,
    GLsizei count,
    GLenum format,
    GLenum type,
    const(GLvoid)* data);

void glColorTableParameteriv (
    GLenum target,
    GLenum pname,
    const(GLint)* params);

void glColorTableParameterfv (
    GLenum target,
    GLenum pname,
    const(GLfloat)* params);

void glCopyColorSubTable (
    GLenum target,
    GLsizei start,
    GLint x,
    GLint y,
    GLsizei width);

void glCopyColorTable (
    GLenum target,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width);

void glGetColorTable (GLenum target, GLenum format, GLenum type, GLvoid* table);

void glGetColorTableParameterfv (GLenum target, GLenum pname, GLfloat* params);

void glGetColorTableParameteriv (GLenum target, GLenum pname, GLint* params);

void glBlendEquation (GLenum mode);

void glBlendColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);

void glHistogram (
    GLenum target,
    GLsizei width,
    GLenum internalformat,
    GLboolean sink);

void glResetHistogram (GLenum target);

void glGetHistogram (
    GLenum target,
    GLboolean reset,
    GLenum format,
    GLenum type,
    GLvoid* values);

void glGetHistogramParameterfv (GLenum target, GLenum pname, GLfloat* params);

void glGetHistogramParameteriv (GLenum target, GLenum pname, GLint* params);

void glMinmax (GLenum target, GLenum internalformat, GLboolean sink);

void glResetMinmax (GLenum target);

void glGetMinmax (
    GLenum target,
    GLboolean reset,
    GLenum format,
    GLenum types,
    GLvoid* values);

void glGetMinmaxParameterfv (GLenum target, GLenum pname, GLfloat* params);

void glGetMinmaxParameteriv (GLenum target, GLenum pname, GLint* params);

void glConvolutionFilter1D (
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLenum format,
    GLenum type,
    const(GLvoid)* image);

void glConvolutionFilter2D (
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    const(GLvoid)* image);

void glConvolutionParameterf (GLenum target, GLenum pname, GLfloat params);

void glConvolutionParameterfv (
    GLenum target,
    GLenum pname,
    const(GLfloat)* params);

void glConvolutionParameteri (GLenum target, GLenum pname, GLint params);

void glConvolutionParameteriv (
    GLenum target,
    GLenum pname,
    const(GLint)* params);

void glCopyConvolutionFilter1D (
    GLenum target,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width);

void glCopyConvolutionFilter2D (
    GLenum target,
    GLenum internalformat,
    GLint x,
    GLint y,
    GLsizei width,
    GLsizei height);

void glGetConvolutionFilter (
    GLenum target,
    GLenum format,
    GLenum type,
    GLvoid* image);

void glGetConvolutionParameterfv (GLenum target, GLenum pname, GLfloat* params);

void glGetConvolutionParameteriv (GLenum target, GLenum pname, GLint* params);

void glSeparableFilter2D (
    GLenum target,
    GLenum internalformat,
    GLsizei width,
    GLsizei height,
    GLenum format,
    GLenum type,
    const(GLvoid)* row,
    const(GLvoid)* column);

void glGetSeparableFilter (
    GLenum target,
    GLenum format,
    GLenum type,
    GLvoid* row,
    GLvoid* column,
    GLvoid* span);

/*
 * OpenGL 1.3
 */

/* multitexture */
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
enum GL_CLIENT_ACTIVE_TEXTURE = 0x84E1;
enum GL_MAX_TEXTURE_UNITS = 0x84E2;
/* texture_cube_map */
enum GL_NORMAL_MAP = 0x8511;
enum GL_REFLECTION_MAP = 0x8512;
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
/* texture_compression */
enum GL_COMPRESSED_ALPHA = 0x84E9;
enum GL_COMPRESSED_LUMINANCE = 0x84EA;
enum GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
enum GL_COMPRESSED_INTENSITY = 0x84EC;
enum GL_COMPRESSED_RGB = 0x84ED;
enum GL_COMPRESSED_RGBA = 0x84EE;
enum GL_TEXTURE_COMPRESSION_HINT = 0x84EF;
enum GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
enum GL_TEXTURE_COMPRESSED = 0x86A1;
enum GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
enum GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3;
/* multisample */
enum GL_MULTISAMPLE = 0x809D;
enum GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
enum GL_SAMPLE_ALPHA_TO_ONE = 0x809F;
enum GL_SAMPLE_COVERAGE = 0x80A0;
enum GL_SAMPLE_BUFFERS = 0x80A8;
enum GL_SAMPLES = 0x80A9;
enum GL_SAMPLE_COVERAGE_VALUE = 0x80AA;
enum GL_SAMPLE_COVERAGE_INVERT = 0x80AB;
enum GL_MULTISAMPLE_BIT = 0x20000000;
/* transpose_matrix */
enum GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
enum GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
enum GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
enum GL_TRANSPOSE_COLOR_MATRIX = 0x84E6;
/* texture_env_combine */
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
/* texture_env_dot3 */
enum GL_DOT3_RGB = 0x86AE;
enum GL_DOT3_RGBA = 0x86AF;
/* texture_border_clamp */
enum GL_CLAMP_TO_BORDER = 0x812D;

void glActiveTexture (GLenum texture);

void glClientActiveTexture (GLenum texture);

void glCompressedTexImage1D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data);

void glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data);

void glCompressedTexImage3D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data);

void glCompressedTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data);

void glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data);

void glCompressedTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data);

void glGetCompressedTexImage (GLenum target, GLint lod, GLvoid* img);

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

void glLoadTransposeMatrixd (ref const(GLdouble)[16] m);

void glLoadTransposeMatrixf (ref const(GLfloat)[16] m);

void glMultTransposeMatrixd (ref const(GLdouble)[16] m);

void glMultTransposeMatrixf (ref const(GLfloat)[16] m);

void glSampleCoverage (GLclampf value, GLboolean invert);

alias PFNGLACTIVETEXTUREPROC = void function (GLenum texture);
alias PFNGLSAMPLECOVERAGEPROC = void function (GLclampf value, GLboolean invert);
alias PFNGLCOMPRESSEDTEXIMAGE3DPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data);
alias PFNGLCOMPRESSEDTEXIMAGE2DPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data);
alias PFNGLCOMPRESSEDTEXIMAGE1DPROC = void function (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC = void function (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data);
alias PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC = void function (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data);
alias PFNGLGETCOMPRESSEDTEXIMAGEPROC = void function (GLenum target, GLint level, GLvoid* img);

/*
 * GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
 */

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

/* GL_ARB_multitexture */

/*
 * Define this token if you want "old-style" header file behaviour (extensions
 * defined in gl.h).  Otherwise, extensions will be included from glext.h.
 */

/* GL_GLEXT_LEGACY */

/*
 * ???. GL_MESA_packed_depth_stencil
 * XXX obsolete
 */

enum GL_MESA_packed_depth_stencil = 1;

enum GL_DEPTH_STENCIL_MESA = 0x8750;
enum GL_UNSIGNED_INT_24_8_MESA = 0x8751;
enum GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752;
enum GL_UNSIGNED_SHORT_15_1_MESA = 0x8753;
enum GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754;

/* GL_MESA_packed_depth_stencil */

enum GL_ATI_blend_equation_separate = 1;

enum GL_ALPHA_BLEND_EQUATION_ATI = 0x883D;

void glBlendEquationSeparateATI (GLenum modeRGB, GLenum modeA);
alias PFNGLBLENDEQUATIONSEPARATEATIPROC = void function (GLenum modeRGB, GLenum modeA);

/* GL_ATI_blend_equation_separate */

/* GL_OES_EGL_image */

alias GLeglImageOES = void*;

enum GL_OES_EGL_image = 1;

alias PFNGLEGLIMAGETARGETTEXTURE2DOESPROC = void function (GLenum target, GLeglImageOES image);
alias PFNGLEGLIMAGETARGETRENDERBUFFERSTORAGEOESPROC = void function (GLenum target, GLeglImageOES image);

/**
 ** NOTE!!!!!  If you add new functions to this file, or update
 ** glext.h be sure to regenerate the gl_mangle.h file.  See comments
 ** in that file for details.
 **/

/**********************************************************************
 * Begin system-specific stuff
 */

/*
 * End system-specific stuff
 **********************************************************************/

/* __gl_h_ */

/* !__IPHONEOS__ */

/* SDL_opengl_h_ */

/* vi: set ts=4 sw=4 expandtab: */
