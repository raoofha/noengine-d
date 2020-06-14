/*
  Simple DirectMedia Layer
  Copyright (C) 1997-2018 Sam Lantinga <slouken@libsdl.org>

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

import core.stdc.config;
import core.stdc.inttypes;
import core.stdc.stddef;
import core.stdc.stdio;
import core.stdc.stdlib;

extern (C):

/**
 *  \file SDL.h
 *
 *  Main include header for the SDL library
 */

/*** Start of inlined file: SDL_main.h ***/

/*** Start of inlined file: SDL_stdinc.h ***/
/**
 *  \file SDL_stdinc.h
 *
 *  This is a general header that includes C language support.
 */

/*** Start of inlined file: SDL_config.h ***/
/*
  Simple DirectMedia Layer
  Copyright (C) 1997-2018 Sam Lantinga <slouken@libsdl.org>

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
 *  \file SDL_config.h.in
 *
 *  This is a set of defines to configure the SDL features
 */

/* General platform specific identifiers */

/*** Start of inlined file: SDL_platform.h ***/
/**
 *  \file SDL_platform.h
 *
 *  Try to get a standard set of platform defines.
 */

enum __LINUX__ = 1;

/* do we need to do this? */

/* lets us know what version of Mac OS X we're compiling on */

/* if compiling for iOS */

/* if not compiling for iOS */

/* MAC_OS_X_VERSION_MIN_REQUIRED < 1060 */
/* TARGET_OS_IPHONE */
/* defined(__APPLE__) */

/* Try to find out if we're compiling for WinRT or non-WinRT */

/* If _USING_V110_SDK71_ is defined it means we are using the Windows XP toolset. */
/* _MSC_VER == 1700 for Visual Studio 2012 */

/* HAVE_WINAPIFAMILY_H */

/* defined(WIN32) || defined(_WIN32) || defined(__CYGWIN__) */

/* The NACL compiler defines __native_client__ and __pnacl__
 * Ref: http://www.chromium.org/nativeclient/pnacl/stability-of-the-pnacl-bitcode-abi
 */

/* PNACL with newlib supports static linking only */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */ /* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

enum NULL = cast(void*) 0;

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief Gets the name of the platform.
 */
const(char)* SDL_GetPlatform ();

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_platform_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_platform.h ***/

/* Make sure that this isn't included by Visual C++ */

/* C language features */
/* #undef const */
/* #undef inline */
/* #undef volatile */

/* C datatypes */
enum SIZEOF_VOIDP = 8;

enum HAVE_GCC_ATOMICS = 1;
/* #undef HAVE_GCC_SYNC_LOCK_TEST_AND_SET */

/* Comment this if you want to build without any C library requirements */
enum HAVE_LIBC = 1;

/* Useful headers */
enum STDC_HEADERS = 1;
enum HAVE_ALLOCA_H = 1;
enum HAVE_CTYPE_H = 1;
enum HAVE_FLOAT_H = 1;
enum HAVE_ICONV_H = 1;
enum HAVE_INTTYPES_H = 1;
enum HAVE_LIMITS_H = 1;
enum HAVE_MALLOC_H = 1;
enum HAVE_MATH_H = 1;
enum HAVE_MEMORY_H = 1;
enum HAVE_SIGNAL_H = 1;
enum HAVE_STDARG_H = 1;
enum HAVE_STDINT_H = 1;
enum HAVE_STDIO_H = 1;
enum HAVE_STDLIB_H = 1;
enum HAVE_STRINGS_H = 1;
enum HAVE_STRING_H = 1;
enum HAVE_SYS_TYPES_H = 1;
enum HAVE_WCHAR_H = 1;
/* #undef HAVE_PTHREAD_NP_H */
/* #undef HAVE_LIBUNWIND_H */

/* C library functions */
enum HAVE_MALLOC = 1;
enum HAVE_CALLOC = 1;
enum HAVE_REALLOC = 1;
enum HAVE_FREE = 1;
enum HAVE_ALLOCA = 1;
/* Don't use C runtime versions of these on Windows */
enum HAVE_GETENV = 1;
enum HAVE_SETENV = 1;
enum HAVE_PUTENV = 1;
enum HAVE_UNSETENV = 1;

enum HAVE_QSORT = 1;
enum HAVE_ABS = 1;
enum HAVE_BCOPY = 1;
enum HAVE_MEMSET = 1;
enum HAVE_MEMCPY = 1;
enum HAVE_MEMMOVE = 1;
enum HAVE_MEMCMP = 1;
enum HAVE_WCSLEN = 1;
/* #undef HAVE_WCSLCPY */
/* #undef HAVE_WCSLCAT */
enum HAVE_WCSCMP = 1;
enum HAVE_STRLEN = 1;
/* #undef HAVE_STRLCPY */
/* #undef HAVE_STRLCAT */
/* #undef HAVE__STRREV */
/* #undef HAVE__STRUPR */
/* #undef HAVE__STRLWR */
/* #undef HAVE_INDEX */
/* #undef HAVE_RINDEX */
enum HAVE_STRCHR = 1;
enum HAVE_STRRCHR = 1;
enum HAVE_STRSTR = 1;
/* #undef HAVE_ITOA */
/* #undef HAVE__LTOA */
/* #undef HAVE__UITOA */
/* #undef HAVE__ULTOA */
enum HAVE_STRTOL = 1;
enum HAVE_STRTOUL = 1;
/* #undef HAVE__I64TOA */
/* #undef HAVE__UI64TOA */
enum HAVE_STRTOLL = 1;
enum HAVE_STRTOULL = 1;
enum HAVE_STRTOD = 1;
enum HAVE_ATOI = 1;
enum HAVE_ATOF = 1;
enum HAVE_STRCMP = 1;
enum HAVE_STRNCMP = 1;
/* #undef HAVE__STRICMP */
enum HAVE_STRCASECMP = 1;
/* #undef HAVE__STRNICMP */
enum HAVE_STRNCASECMP = 1;
/* #undef HAVE_SSCANF */
enum HAVE_VSSCANF = 1;
/* #undef HAVE_SNPRINTF */
enum HAVE_VSNPRINTF = 1; /**/
enum HAVE_ACOS = 1;
enum HAVE_ACOSF = 1;
enum HAVE_ASIN = 1;
enum HAVE_ASINF = 1;
enum HAVE_ATAN = 1;
enum HAVE_ATANF = 1;
enum HAVE_ATAN2 = 1;
enum HAVE_ATAN2F = 1;
enum HAVE_CEIL = 1;
enum HAVE_CEILF = 1;
enum HAVE_COPYSIGN = 1;
enum HAVE_COPYSIGNF = 1;
enum HAVE_COS = 1;
enum HAVE_COSF = 1;
enum HAVE_EXP = 1;
enum HAVE_EXPF = 1;
enum HAVE_FABS = 1;
enum HAVE_FABSF = 1;
enum HAVE_FLOOR = 1;
enum HAVE_FLOORF = 1;
enum HAVE_FMOD = 1;
enum HAVE_FMODF = 1;
enum HAVE_LOG = 1;
enum HAVE_LOGF = 1;
enum HAVE_LOG10 = 1;
enum HAVE_LOG10F = 1;
enum HAVE_POW = 1;
enum HAVE_POWF = 1;
enum HAVE_SCALBN = 1;
enum HAVE_SCALBNF = 1;
enum HAVE_SIN = 1;
enum HAVE_SINF = 1;
enum HAVE_SQRT = 1;
enum HAVE_SQRTF = 1;
enum HAVE_TAN = 1;
enum HAVE_TANF = 1;
enum HAVE_FOPEN64 = 1;
enum HAVE_FSEEKO = 1;
enum HAVE_FSEEKO64 = 1;
enum HAVE_SIGACTION = 1;
enum HAVE_SA_SIGACTION = 1;
enum HAVE_SETJMP = 1;
enum HAVE_NANOSLEEP = 1;
enum HAVE_SYSCONF = 1;
/* #undef HAVE_SYSCTLBYNAME */
enum HAVE_CLOCK_GETTIME = 1;
/* #undef HAVE_GETPAGESIZE */
enum HAVE_MPROTECT = 1;
enum HAVE_ICONV = 1;
enum HAVE_PTHREAD_SETNAME_NP = 1;
/* #undef HAVE_PTHREAD_SET_NAME_NP */
enum HAVE_SEM_TIMEDWAIT = 1;
enum HAVE_GETAUXVAL = 1;
enum HAVE_POLL = 1;

/* HAVE_LIBC */

/* #undef HAVE_ALTIVEC_H */
enum HAVE_DBUS_DBUS_H = 1;
enum HAVE_FCITX_FRONTEND_H = 1;
enum HAVE_IBUS_IBUS_H = 1;
enum HAVE_IMMINTRIN_H = 1;
enum HAVE_LIBSAMPLERATE_H = 1;
enum HAVE_LIBUDEV_H = 1;

/* #undef HAVE_DDRAW_H */
/* #undef HAVE_DINPUT_H */
/* #undef HAVE_DSOUND_H */
/* #undef HAVE_DXGI_H */
/* #undef HAVE_XINPUT_H */
/* #undef HAVE_ENDPOINTVOLUME_H */
/* #undef HAVE_MMDEVICEAPI_H */
/* #undef HAVE_AUDIOCLIENT_H */
/* #undef HAVE_XINPUT_GAMEPAD_EX */
/* #undef HAVE_XINPUT_STATE_EX */

/* SDL internal assertion support */
/* #undef SDL_DEFAULT_ASSERT_LEVEL */

/* Allow disabling of core subsystems */
/* #undef SDL_ATOMIC_DISABLED */
/* #undef SDL_AUDIO_DISABLED */
/* #undef SDL_CPUINFO_DISABLED */
/* #undef SDL_EVENTS_DISABLED */
/* #undef SDL_FILE_DISABLED */
/* #undef SDL_JOYSTICK_DISABLED */
/* #undef SDL_HAPTIC_DISABLED */
/* #undef SDL_SENSOR_DISABLED */
/* #undef SDL_LOADSO_DISABLED */
/* #undef SDL_RENDER_DISABLED */
/* #undef SDL_THREADS_DISABLED */
/* #undef SDL_TIMERS_DISABLED */
/* #undef SDL_VIDEO_DISABLED */
/* #undef SDL_POWER_DISABLED */
/* #undef SDL_FILESYSTEM_DISABLED */

/* Enable various audio drivers */
enum SDL_AUDIO_DRIVER_ALSA = 1;
/* #undef SDL_AUDIO_DRIVER_ALSA_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_ANDROID */
/* #undef SDL_AUDIO_DRIVER_ARTS */
/* #undef SDL_AUDIO_DRIVER_ARTS_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_COREAUDIO */
enum SDL_AUDIO_DRIVER_DISK = 1;
/* #undef SDL_AUDIO_DRIVER_DSOUND */
enum SDL_AUDIO_DRIVER_DUMMY = 1;
/* #undef SDL_AUDIO_DRIVER_EMSCRIPTEN */
/* #undef SDL_AUDIO_DRIVER_ESD */
/* #undef SDL_AUDIO_DRIVER_ESD_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_FUSIONSOUND */
/* #undef SDL_AUDIO_DRIVER_FUSIONSOUND_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_HAIKU */
/* #undef SDL_AUDIO_DRIVER_JACK */
/* #undef SDL_AUDIO_DRIVER_JACK_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_NACL */
/* #undef SDL_AUDIO_DRIVER_NAS */
/* #undef SDL_AUDIO_DRIVER_NAS_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_NETBSD */
enum SDL_AUDIO_DRIVER_OSS = 1;
/* #undef SDL_AUDIO_DRIVER_OSS_SOUNDCARD_H */
/* #undef SDL_AUDIO_DRIVER_PAUDIO */
enum SDL_AUDIO_DRIVER_PULSEAUDIO = 1;
/* #undef SDL_AUDIO_DRIVER_PULSEAUDIO_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_QSA */
enum SDL_AUDIO_DRIVER_SNDIO = 1;
/* #undef SDL_AUDIO_DRIVER_SNDIO_DYNAMIC */
/* #undef SDL_AUDIO_DRIVER_SUNAUDIO */
/* #undef SDL_AUDIO_DRIVER_WASAPI */
/* #undef SDL_AUDIO_DRIVER_WINMM */

/* Enable various input drivers */
enum SDL_INPUT_LINUXEV = 1;
enum SDL_INPUT_LINUXKD = 1;
/* #undef SDL_INPUT_TSLIB */
/* #undef SDL_JOYSTICK_HAIKU */
/* #undef SDL_JOYSTICK_DINPUT */
/* #undef SDL_JOYSTICK_XINPUT */
/* #undef SDL_JOYSTICK_DUMMY */
/* #undef SDL_JOYSTICK_IOKIT */
enum SDL_JOYSTICK_LINUX = 1;
/* #undef SDL_JOYSTICK_ANDROID */
/* #undef SDL_JOYSTICK_WINMM */
/* #undef SDL_JOYSTICK_USBHID */
/* #undef SDL_JOYSTICK_USBHID_MACHINE_JOYSTICK_H */
/* #undef SDL_JOYSTICK_HIDAPI */
/* #undef SDL_JOYSTICK_EMSCRIPTEN */
/* #undef SDL_HAPTIC_DUMMY */
/* #undef SDL_HAPTIC_ANDROID */
enum SDL_HAPTIC_LINUX = 1;
/* #undef SDL_HAPTIC_IOKIT */
/* #undef SDL_HAPTIC_DINPUT */
/* #undef SDL_HAPTIC_XINPUT */

/* Enable various sensor drivers */
/* #undef SDL_SENSOR_ANDROID */
enum SDL_SENSOR_DUMMY = 1;

/* Enable various shared object loading systems */
enum SDL_LOADSO_DLOPEN = 1;
/* #undef SDL_LOADSO_DUMMY */
/* #undef SDL_LOADSO_LDG */
/* #undef SDL_LOADSO_WINDOWS */

/* Enable various threading systems */
enum SDL_THREAD_PTHREAD = 1;
enum SDL_THREAD_PTHREAD_RECURSIVE_MUTEX = 1;
/* #undef SDL_THREAD_PTHREAD_RECURSIVE_MUTEX_NP */
/* #undef SDL_THREAD_WINDOWS */

/* Enable various timer systems */
/* #undef SDL_TIMER_HAIKU */
/* #undef SDL_TIMER_DUMMY */
enum SDL_TIMER_UNIX = 1;
/* #undef SDL_TIMER_WINDOWS */

/* Enable various video drivers */
/* #undef SDL_VIDEO_DRIVER_HAIKU */
/* #undef SDL_VIDEO_DRIVER_COCOA */
/* #undef SDL_VIDEO_DRIVER_DIRECTFB */
/* #undef SDL_VIDEO_DRIVER_DIRECTFB_DYNAMIC */
enum SDL_VIDEO_DRIVER_DUMMY = 1;
/* #undef SDL_VIDEO_DRIVER_WINDOWS */
enum SDL_VIDEO_DRIVER_WAYLAND = 1;
enum SDL_VIDEO_DRIVER_WAYLAND_QT_TOUCH = 1;
/* #undef SDL_VIDEO_DRIVER_WAYLAND_DYNAMIC */
/* #undef SDL_VIDEO_DRIVER_WAYLAND_DYNAMIC_EGL */
/* #undef SDL_VIDEO_DRIVER_WAYLAND_DYNAMIC_CURSOR */
/* #undef SDL_VIDEO_DRIVER_WAYLAND_DYNAMIC_XKBCOMMON */
/* #undef SDL_VIDEO_DRIVER_MIR */
/* #undef SDL_VIDEO_DRIVER_MIR_DYNAMIC */
/* #undef SDL_VIDEO_DRIVER_MIR_DYNAMIC_XKBCOMMON */
enum SDL_VIDEO_DRIVER_X11 = 1;
/* #undef SDL_VIDEO_DRIVER_RPI */
/* #undef SDL_VIDEO_DRIVER_KMSDRM */
/* #undef SDL_VIDEO_DRIVER_KMSDRM_DYNAMIC */
/* #undef SDL_VIDEO_DRIVER_KMSDRM_DYNAMIC_GBM */
/* #undef SDL_VIDEO_DRIVER_ANDROID */
/* #undef SDL_VIDEO_DRIVER_EMSCRIPTEN */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XEXT */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XCURSOR */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XINERAMA */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XINPUT2 */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XRANDR */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XSS */
/* #undef SDL_VIDEO_DRIVER_X11_DYNAMIC_XVIDMODE */
enum SDL_VIDEO_DRIVER_X11_XCURSOR = 1;
enum SDL_VIDEO_DRIVER_X11_XDBE = 1;
enum SDL_VIDEO_DRIVER_X11_XINERAMA = 1;
enum SDL_VIDEO_DRIVER_X11_XINPUT2 = 1;
enum SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH = 1;
enum SDL_VIDEO_DRIVER_X11_XRANDR = 1;
enum SDL_VIDEO_DRIVER_X11_XSCRNSAVER = 1;
enum SDL_VIDEO_DRIVER_X11_XSHAPE = 1;
enum SDL_VIDEO_DRIVER_X11_XVIDMODE = 1;
enum SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS = 1;
enum SDL_VIDEO_DRIVER_X11_CONST_PARAM_XEXTADDDISPLAY = 1;
enum SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM = 1;
/* #undef SDL_VIDEO_DRIVER_NACL */
/* #undef SDL_VIDEO_DRIVER_VIVANTE */
/* #undef SDL_VIDEO_DRIVER_VIVANTE_VDK */
/* #undef SDL_VIDEO_DRIVER_QNX */

/* #undef SDL_VIDEO_RENDER_D3D */
/* #undef SDL_VIDEO_RENDER_D3D11 */
enum SDL_VIDEO_RENDER_OGL = 1;
/* #undef SDL_VIDEO_RENDER_OGL_ES */
enum SDL_VIDEO_RENDER_OGL_ES2 = 1;
/* #undef SDL_VIDEO_RENDER_DIRECTFB */
/* #undef SDL_VIDEO_RENDER_METAL */

/* Enable OpenGL support */
enum SDL_VIDEO_OPENGL = 1;
/* #undef SDL_VIDEO_OPENGL_ES */
enum SDL_VIDEO_OPENGL_ES2 = 1;
/* #undef SDL_VIDEO_OPENGL_BGL */
/* #undef SDL_VIDEO_OPENGL_CGL */
enum SDL_VIDEO_OPENGL_EGL = 1;
enum SDL_VIDEO_OPENGL_GLX = 1;
/* #undef SDL_VIDEO_OPENGL_WGL */
/* #undef SDL_VIDEO_OPENGL_OSMESA */
/* #undef SDL_VIDEO_OPENGL_OSMESA_DYNAMIC */

/* Enable Vulkan support */
enum SDL_VIDEO_VULKAN = 1;

/* Enable system power support */
enum SDL_POWER_LINUX = 1;
/* #undef SDL_POWER_WINDOWS */
/* #undef SDL_POWER_MACOSX */
/* #undef SDL_POWER_HAIKU */
/* #undef SDL_POWER_ANDROID */
/* #undef SDL_POWER_EMSCRIPTEN */
/* #undef SDL_POWER_HARDWIRED */

/* Enable system filesystem support */
/* #undef SDL_FILESYSTEM_HAIKU */
/* #undef SDL_FILESYSTEM_COCOA */
/* #undef SDL_FILESYSTEM_DUMMY */
enum SDL_FILESYSTEM_UNIX = 1;
/* #undef SDL_FILESYSTEM_WINDOWS */
/* #undef SDL_FILESYSTEM_NACL */
/* #undef SDL_FILESYSTEM_ANDROID */
/* #undef SDL_FILESYSTEM_EMSCRIPTEN */

/* Enable assembly routines */
enum SDL_ASSEMBLY_ROUTINES = 1;
/* #undef SDL_ALTIVEC_BLITTERS */

/* Enable ime support */
enum SDL_USE_IME = 1;

/* Enable dynamic udev support */
enum SDL_UDEV_DYNAMIC = "libudev.so.1";

/* Enable dynamic libsamplerate support */
enum SDL_LIBSAMPLERATE_DYNAMIC = "libsamplerate.so.0";

/* SDL_config_h_ */

/*** End of inlined file: SDL_config.h ***/

/* Defining _USE_MATH_DEFINES is required to get M_PI to be defined on
   WinRT.  See http://msdn.microsoft.com/en-us/library/4hwaceh6.aspx
   for more information.
*/

/**
 *  The number of elements in an array.
 */

/**
 *  Macro useful for building other macros with strings in them
 *
 *  e.g. #define LOG_ERROR(X) OutputDebugString(SDL_STRINGIFY_ARG(__FUNCTION__) ": " X "\n")
 */

/**
 *  \name Cast operators
 *
 *  Use proper C++ casts when compiled as C++ to be compatible with the option
 *  -Wold-style-cast of GCC (and -Werror=old-style-cast in GCC 4.2 and above).
 */
/* @{ */

/* @} */ /* Cast operators */

/* Define a four character code as a Uint32 */

/**
 *  \name Basic data types
 */
/* @{ */

/* ARM's compiler throws warnings if we use an enum: like "SDL_bool x = a < b;" */

enum SDL_bool
{
    SDL_FALSE = 0,
    SDL_TRUE = 1
}

/**
 * \brief A signed 8-bit integer type.
 */
/* 127 */
/* -128 */
alias Sint8 = byte;
/**
 * \brief An unsigned 8-bit integer type.
 */
/* 255 */
/* 0 */
alias Uint8 = ubyte;
/**
 * \brief A signed 16-bit integer type.
 */
/* 32767 */
/* -32768 */
alias Sint16 = short;
/**
 * \brief An unsigned 16-bit integer type.
 */
/* 65535 */
/* 0 */
alias Uint16 = ushort;
/**
 * \brief A signed 32-bit integer type.
 */
/* 2147483647 */
/* -2147483648 */
alias Sint32 = int;
/**
 * \brief An unsigned 32-bit integer type.
 */
/* 4294967295 */
/* 0 */
alias Uint32 = uint;

/**
 * \brief A signed 64-bit integer type.
 */
/* 9223372036854775807 */
/* -9223372036854775808 */
alias Sint64 = c_long;
/**
 * \brief An unsigned 64-bit integer type.
 */
/* 18446744073709551615 */
/* 0 */
alias Uint64 = c_ulong;

/* @} */ /* Basic data types */

/* Make sure we have macros for printing 64 bit values.
 * <stdint.h> should define these but this is not true all platforms.
 * (for example win32) */

/* Annotations to help code analysis tools */

/* VS 2010 and above */

/* SDL_DISABLE_ANALYZE_MACROS */

/** \cond */

alias SDL_compile_time_assert_uint8 = int[1];
alias SDL_compile_time_assert_sint8 = int[1];
alias SDL_compile_time_assert_uint16 = int[1];
alias SDL_compile_time_assert_sint16 = int[1];
alias SDL_compile_time_assert_uint32 = int[1];
alias SDL_compile_time_assert_sint32 = int[1];
alias SDL_compile_time_assert_uint64 = int[1];
alias SDL_compile_time_assert_sint64 = int[1];
/* DOXYGEN_SHOULD_IGNORE_THIS */
/** \endcond */

/* Check to make sure enums are the size of ints, for structure packing.
   For both Watcom C/C++ and Borland C/C++ the compiler option that makes
   enums having the size of an int must be enabled.
   This is "-b" for Borland C/C++ and "-ei" for Watcom C/C++ (v11).
*/

/** \cond */

/* TODO: include/SDL_stdinc.h:174: error: size of array 'SDL_dummy_enum' is negative */
enum SDL_DUMMY_ENUM
{
    DUMMY_ENUM_VALUE = 0
}

alias SDL_compile_time_assert_enum = int[1];

/* DOXYGEN_SHOULD_IGNORE_THIS */
/** \endcond */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

void* SDL_malloc (size_t size);
void* SDL_calloc (size_t nmemb, size_t size);
void* SDL_realloc (void* mem, size_t size);
void SDL_free (void* mem);

alias SDL_malloc_func = void* function (size_t size);
alias SDL_calloc_func = void* function (size_t nmemb, size_t size);
alias SDL_realloc_func = void* function (void* mem, size_t size);
alias SDL_free_func = void function (void* mem);

/**
 *  \brief Get the current set of SDL memory functions
 */
void SDL_GetMemoryFunctions (
    SDL_malloc_func* malloc_func,
    SDL_calloc_func* calloc_func,
    SDL_realloc_func* realloc_func,
    SDL_free_func* free_func);

/**
 *  \brief Replace SDL's memory allocation functions with a custom set
 *
 *  \note If you are replacing SDL's memory functions, you should call
 *        SDL_GetNumAllocations() and be very careful if it returns non-zero.
 *        That means that your free function will be called with memory
 *        allocated by the previous memory allocation functions.
 */
int SDL_SetMemoryFunctions (
    SDL_malloc_func malloc_func,
    SDL_calloc_func calloc_func,
    SDL_realloc_func realloc_func,
    SDL_free_func free_func);

/**
 *  \brief Get the number of outstanding (unfreed) allocations
 */
int SDL_GetNumAllocations ();

char* SDL_getenv (const(char)* name);
int SDL_setenv (const(char)* name, const(char)* value, int overwrite);

void SDL_qsort (void* base, size_t nmemb, size_t size, int function (const(void)*, const(void)*) compare);

int SDL_abs (int x);

/* !!! FIXME: these have side effects. You probably shouldn't use them. */
/* !!! FIXME: Maybe we do forceinline functions of SDL_mini, SDL_minf, etc? */

int SDL_isdigit (int x);
int SDL_isspace (int x);
int SDL_toupper (int x);
int SDL_tolower (int x);

void* SDL_memset (void* dst, int c, size_t len);

/* Note that memset() is a byte assignment and this is a 32-bit assignment, so they're not directly equivalent. */

/* fallthrough */
/* fallthrough */
/* fallthrough */
/* fallthrough */
void SDL_memset4 (void* dst, Uint32 val, size_t dwords);

void* SDL_memcpy (void* dst, const(void)* src, size_t len);

void* SDL_memmove (void* dst, const(void)* src, size_t len);
int SDL_memcmp (const(void)* s1, const(void)* s2, size_t len);

wchar_t* SDL_wcsdup (const(wchar_t)* wstr);
size_t SDL_wcslen (const(wchar_t)* wstr);
size_t SDL_wcslcpy (wchar_t* dst, const(wchar_t)* src, size_t maxlen);
size_t SDL_wcslcat (wchar_t* dst, const(wchar_t)* src, size_t maxlen);
int SDL_wcscmp (const(wchar_t)* str1, const(wchar_t)* str2);

size_t SDL_strlen (const(char)* str);
size_t SDL_strlcpy (char* dst, const(char)* src, size_t maxlen);
size_t SDL_utf8strlcpy (char* dst, const(char)* src, size_t dst_bytes);
size_t SDL_strlcat (char* dst, const(char)* src, size_t maxlen);
char* SDL_strdup (const(char)* str);
char* SDL_strrev (char* str);
char* SDL_strupr (char* str);
char* SDL_strlwr (char* str);
char* SDL_strchr (const(char)* str, int c);
char* SDL_strrchr (const(char)* str, int c);
char* SDL_strstr (const(char)* haystack, const(char)* needle);
size_t SDL_utf8strlen (const(char)* str);

char* SDL_itoa (int value, char* str, int radix);
char* SDL_uitoa (uint value, char* str, int radix);
char* SDL_ltoa (c_long value, char* str, int radix);
char* SDL_ultoa (c_ulong value, char* str, int radix);
char* SDL_lltoa (Sint64 value, char* str, int radix);
char* SDL_ulltoa (Uint64 value, char* str, int radix);

int SDL_atoi (const(char)* str);
double SDL_atof (const(char)* str);
c_long SDL_strtol (const(char)* str, char** endp, int base);
c_ulong SDL_strtoul (const(char)* str, char** endp, int base);
Sint64 SDL_strtoll (const(char)* str, char** endp, int base);
Uint64 SDL_strtoull (const(char)* str, char** endp, int base);
double SDL_strtod (const(char)* str, char** endp);

int SDL_strcmp (const(char)* str1, const(char)* str2);
int SDL_strncmp (const(char)* str1, const(char)* str2, size_t maxlen);
int SDL_strcasecmp (const(char)* str1, const(char)* str2);
int SDL_strncasecmp (const(char)* str1, const(char)* str2, size_t len);

int SDL_sscanf (const(char)* text, const(char)* fmt, ...);
//int SDL_vsscanf (const(char)* text, const(char)* fmt, va_list ap);
int SDL_snprintf (char* text, size_t maxlen, const(char)* fmt, ...);
//int SDL_vsnprintf (char* text, size_t maxlen, const(char)* fmt, va_list ap);

/**< pi */

double SDL_acos (double x);
float SDL_acosf (float x);
double SDL_asin (double x);
float SDL_asinf (float x);
double SDL_atan (double x);
float SDL_atanf (float x);
double SDL_atan2 (double x, double y);
float SDL_atan2f (float x, float y);
double SDL_ceil (double x);
float SDL_ceilf (float x);
double SDL_copysign (double x, double y);
float SDL_copysignf (float x, float y);
double SDL_cos (double x);
float SDL_cosf (float x);
double SDL_exp (double x);
float SDL_expf (float x);
double SDL_fabs (double x);
float SDL_fabsf (float x);
double SDL_floor (double x);
float SDL_floorf (float x);
double SDL_fmod (double x, double y);
float SDL_fmodf (float x, float y);
double SDL_log (double x);
float SDL_logf (float x);
double SDL_log10 (double x);
float SDL_log10f (float x);
double SDL_pow (double x, double y);
float SDL_powf (float x, float y);
double SDL_scalbn (double x, int n);
float SDL_scalbnf (float x, int n);
double SDL_sin (double x);
float SDL_sinf (float x);
double SDL_sqrt (double x);
float SDL_sqrtf (float x);
double SDL_tan (double x);
float SDL_tanf (float x);

/* The SDL implementation of iconv() returns these error codes */

/* SDL_iconv_* are now always real symbols/types, not macros or inlined. */
struct _SDL_iconv_t;
alias SDL_iconv_t = _SDL_iconv_t*;
SDL_iconv_t SDL_iconv_open (const(char)* tocode, const(char)* fromcode);
int SDL_iconv_close (SDL_iconv_t cd);
size_t SDL_iconv (
    SDL_iconv_t cd,
    const(char*)* inbuf,
    size_t* inbytesleft,
    char** outbuf,
    size_t* outbytesleft);
/**
 *  This function converts a string between encodings in one pass, returning a
 *  string that must be freed with SDL_free() or NULL on error.
 */
char* SDL_iconv_string (
    const(char)* tocode,
    const(char)* fromcode,
    const(char)* inbuf,
    size_t inbytesleft);

/* force builds using Clang's static analysis tools to use literal C runtime
   here, since there are possibly tests that are ineffective otherwise. */

void* SDL_memcpy4 (void* dst, const(void)* src, size_t dwords);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_stdinc_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_stdinc.h ***/

/**
 *  \file SDL_main.h
 *
 *  Redefine main() on some platforms so that it is called by SDL.
 */

/* On Windows SDL provides WinMain(), which parses the command line and passes
   the arguments to your main function.

   If you provide your own WinMain(), you may define SDL_MAIN_HANDLED
 */

/* On WinRT, SDL provides a main function that initializes CoreApplication,
   creating an instance of IFrameworkView in the process.

   Please note that #include'ing SDL_main.h is not enough to get a main()
   function working.  In non-XAML apps, the file,
   src/main/winrt/SDL_WinRT_main_NonXAML.cpp, or a copy of it, must be compiled
   into the app itself.  In XAML apps, the function, SDL_WinRTRunApp must be
   called, with a pointer to the Direct3D-hosted XAML control passed in.
*/

/* On iOS SDL provides a main function that creates an application delegate
   and starts the iOS application run loop.

   See src/video/uikit/SDL_uikitappdelegate.m for more details.
 */

/* On Android SDL provides a Java class in SDLActivity.java that is the
   main activity entry point.

   See docs/README-android.md for more details on extending that class.
 */

/* We need to export SDL_main so it can be launched from Java */

/* On NACL we use ppapi_simple to set up the application helper code,
   then wait for the first PSE_INSTANCE_DIDCHANGEVIEW event before
   starting the user main function.
   All user code is run in a separate thread by ppapi_simple, thus
   allowing for blocking io to take place via nacl_io
*/

/* SDL_MAIN_HANDLED */

/* __cplusplus */

/**
 *  \file SDL_main.h
 *
 *  The application's main() function must be called with C linkage,
 *  and should be declared like this:
 *  \code
 *  #ifdef __cplusplus
 *  extern "C"
 *  #endif
 *  int main(int argc, char *argv[])
 *  {
 *  }
 *  \endcode
 */

/**
 *  The prototype for the application's main() function
 */
int SDL_main (int argc, char** argv);

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/**
 *  This is called by the real SDL main function to let the rest of the
 *  library know that initialization was done properly.
 *
 *  Calling this yourself without knowing what you're doing can cause
 *  crashes and hard to diagnose problems with your application.
 */
void SDL_SetMainReady ();

/**
 *  This can be called to set the application class at startup
 */

/* __WIN32__ */

/**
 *  \brief Initializes and launches an SDL/WinRT application.
 *
 *  \param mainFunction The SDL app's C-style main().
 *  \param reserved Reserved for future use; should be NULL
 *  \return 0 on success, -1 on failure.  On failure, use SDL_GetError to retrieve more
 *      information on the failure.
 */

/* __WINRT__ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_main_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_main.h ***/

/*** Start of inlined file: SDL_assert.h ***/
/*
  Simple DirectMedia Layer
  Copyright (C) 1997-2018 Sam Lantinga <slouken@libsdl.org>

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

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* SDL_ASSERT_LEVEL */

/*
These are macros and not first class functions so that the debugger breaks
on the assertion line and not in some random guts of SDL, and so each
assert can have unique static variables associated with it.
*/

/* Don't include intrin.h here because it contains C++ code */

/* How do we trigger breakpoints on this platform? */

/* C99 supports __func__ as a standard. */

/*
sizeof (x) makes the compiler still parse the expression even without
assertions enabled, so the code is always checked at compile time, but
doesn't actually generate code for it, so there are no side effects or
expensive checks at run time, just the constant size of what x WOULD be,
which presumably gets optimized out as unused.
This also solves the problem of...

	int somevalue = blah();
	SDL_assert(somevalue == 1);

...which would cause compiles to complain that somevalue is unused if we
disable assertions.
*/

/* "while (0,0)" fools Microsoft's compiler's /W4 warning level into thinking
	this condition isn't constant. And looks like an owl's face! */
/* stupid /W4 warnings. */

enum SDL_AssertState
{
    SDL_ASSERTION_RETRY = 0, /**< Retry the assert immediately. */
    SDL_ASSERTION_BREAK = 1, /**< Make the debugger trigger a breakpoint. */
    SDL_ASSERTION_ABORT = 2, /**< Terminate the program. */
    SDL_ASSERTION_IGNORE = 3, /**< Ignore the assert. */
    SDL_ASSERTION_ALWAYS_IGNORE = 4 /**< Ignore the assert from now on. */
}

struct SDL_AssertData
{
    int always_ignore;
    uint trigger_count;
    const(char)* condition;
    const(char)* filename;
    int linenum;
    const(char)* function_;
    const(SDL_AssertData)* next;
}

/* Never call this directly. Use the SDL_assert* macros. */

/* this tells Clang's static analysis that we're a custom assert function,
   and that the analyzer should assume the condition was always true past this
   SDL_assert test. */
SDL_AssertState SDL_ReportAssertion (
    SDL_AssertData*,
    const(char)*,
    const(char)*,
    int);

/* the do {} while(0) avoids dangling else problems:
	if (x) SDL_assert(y); else blah();
	   ... without the do/while, the "else" could attach to this macro's "if".
   We try to handle just the minimum we need here in a macro...the loop,
   the static vars, and break points. The heavy lifting is handled in
   SDL_ReportAssertion(), in SDL_assert.c.
*/

/* go again. */

/* not retrying. */

/* enabled assertions support code */

/* Enable various levels of assertions. */
/* assertions disabled */

/* release settings. */

/* normal settings. */

/* paranoid settings. */

/* this assertion is never disabled at any level. */

alias SDL_AssertionHandler = SDL_AssertState function (
    const(SDL_AssertData)* data,
    void* userdata);

/**
 *  \brief Set an application-defined assertion handler.
 *
 *  This allows an app to show its own assertion UI and/or force the
 *  response to an assertion failure. If the app doesn't provide this, SDL
 *  will try to do the right thing, popping up a system-specific GUI dialog,
 *  and probably minimizing any fullscreen windows.
 *
 *  This callback may fire from any thread, but it runs wrapped in a mutex, so
 *  it will only fire from one thread at a time.
 *
 *  Setting the callback to NULL restores SDL's original internal handler.
 *
 *  This callback is NOT reset to SDL's internal handler upon SDL_Quit()!
 *
 *  Return SDL_AssertState value of how to handle the assertion failure.
 *
 *  \param handler Callback function, called when an assertion fails.
 *  \param userdata A pointer passed to the callback as-is.
 */
void SDL_SetAssertionHandler (SDL_AssertionHandler handler, void* userdata);

/**
 *  \brief Get the default assertion handler.
 *
 *  This returns the function pointer that is called by default when an
 *   assertion is triggered. This is an internal function provided by SDL,
 *   that is used for assertions when SDL_SetAssertionHandler() hasn't been
 *   used to provide a different function.
 *
 *  \return The default SDL_AssertionHandler that is called when an assert triggers.
 */
SDL_AssertionHandler SDL_GetDefaultAssertionHandler ();

/**
 *  \brief Get the current assertion handler.
 *
 *  This returns the function pointer that is called when an assertion is
 *   triggered. This is either the value last passed to
 *   SDL_SetAssertionHandler(), or if no application-specified function is
 *   set, is equivalent to calling SDL_GetDefaultAssertionHandler().
 *
 *   \param puserdata Pointer to a void*, which will store the "userdata"
 *                    pointer that was passed to SDL_SetAssertionHandler().
 *                    This value will always be NULL for the default handler.
 *                    If you don't care about this data, it is safe to pass
 *                    a NULL pointer to this function to ignore it.
 *  \return The SDL_AssertionHandler that is called when an assert triggers.
 */
SDL_AssertionHandler SDL_GetAssertionHandler (void** puserdata);

/**
 *  \brief Get a list of all assertion failures.
 *
 *  Get all assertions triggered since last call to SDL_ResetAssertionReport(),
 *  or the start of the program.
 *
 *  The proper way to examine this data looks something like this:
 *
 *  <code>
 *  const SDL_AssertData *item = SDL_GetAssertionReport();
 *  while (item) {
 *      printf("'%s', %s (%s:%d), triggered %u times, always ignore: %s.\\n",
 *             item->condition, item->function, item->filename,
 *             item->linenum, item->trigger_count,
 *             item->always_ignore ? "yes" : "no");
 *      item = item->next;
 *  }
 *  </code>
 *
 *  \return List of all assertions.
 *  \sa SDL_ResetAssertionReport
 */
const(SDL_AssertData)* SDL_GetAssertionReport ();

/**
 *  \brief Reset the list of all assertion failures.
 *
 *  Reset list of all assertions triggered.
 *
 *  \sa SDL_GetAssertionReport
 */
void SDL_ResetAssertionReport ();

/* these had wrong naming conventions until 2.0.4. Please update your app! */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_assert_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_assert.h ***/

/*** Start of inlined file: SDL_atomic.h ***/
/**
 * \file SDL_atomic.h
 *
 * Atomic operations.
 *
 * IMPORTANT:
 * If you are not an expert in concurrent lockless programming, you should
 * only be using the atomic lock and reference counting functions in this
 * file.  In all other cases you should be protecting your data structures
 * with full mutexes.
 *
 * The list of "safe" functions to use are:
 *  SDL_AtomicLock()
 *  SDL_AtomicUnlock()
 *  SDL_AtomicIncRef()
 *  SDL_AtomicDecRef()
 *
 * Seriously, here be dragons!
 * ^^^^^^^^^^^^^^^^^^^^^^^^^^^
 *
 * You can find out a little more about lockless programming and the
 * subtle issues that can arise here:
 * http://msdn.microsoft.com/en-us/library/ee418650%28v=vs.85%29.aspx
 *
 * There's also lots of good information here:
 * http://www.1024cores.net/home/lock-free-algorithms
 * http://preshing.com/
 *
 * These operations may or may not actually be implemented using
 * processor specific atomic operations. When possible they are
 * implemented as true processor specific atomic operations. When that
 * is not possible the are implemented using locks that *do* use the
 * available atomic operations.
 *
 * All of the atomic operations that modify memory are full memory barriers.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 * \name SDL AtomicLock
 *
 * The atomic locks are efficient spinlocks using CPU instructions,
 * but are vulnerable to starvation and can spin forever if a thread
 * holding a lock has been terminated.  For this reason you should
 * minimize the code executed inside an atomic lock and never do
 * expensive things like API or system calls while holding them.
 *
 * The atomic locks are not safe to lock recursively.
 *
 * Porting Note:
 * The spin lock functions and type are required and can not be
 * emulated because they are used in the atomic emulation code.
 */
/* @{ */

alias SDL_SpinLock = int;

/**
 * \brief Try to lock a spin lock by setting it to a non-zero value.
 *
 * \param lock Points to the lock.
 *
 * \return SDL_TRUE if the lock succeeded, SDL_FALSE if the lock is already held.
 */
SDL_bool SDL_AtomicTryLock (SDL_SpinLock* lock);

/**
 * \brief Lock a spin lock by setting it to a non-zero value.
 *
 * \param lock Points to the lock.
 */
void SDL_AtomicLock (SDL_SpinLock* lock);

/**
 * \brief Unlock a spin lock by setting it to 0. Always returns immediately
 *
 * \param lock Points to the lock.
 */
void SDL_AtomicUnlock (SDL_SpinLock* lock);

/* @} */ /* SDL AtomicLock */

/**
 * The compiler barrier prevents the compiler from reordering
 * reads and writes to globally visible variables across the call.
 */

/* This is correct for all CPUs when using GCC or Solaris Studio 12.1+. */

/**
 * Memory barriers are designed to prevent reads and writes from being
 * reordered by the compiler and being seen out of order on multi-core CPUs.
 *
 * A typical pattern would be for thread A to write some data and a flag,
 * and for thread B to read the flag and get the data. In this case you
 * would insert a release barrier between writing the data and the flag,
 * guaranteeing that the data write completes no later than the flag is
 * written, and you would insert an acquire barrier between reading the
 * flag and reading the data, to ensure that all the reads associated
 * with the flag have completed.
 *
 * In this pattern you should always see a release barrier paired with
 * an acquire barrier and you should gate the data reads/writes with a
 * single flag variable.
 *
 * For more information on these semantics, take a look at the blog post:
 * http://preshing.com/20120913/acquire-and-release-semantics
 */
void SDL_MemoryBarrierReleaseFunction ();
void SDL_MemoryBarrierAcquireFunction ();

/* The mcr instruction isn't available in thumb mode, use real functions */

/* __thumb__ */

/* __GNUC__ && __arm__ */

/* This is correct for all CPUs on Solaris when using Solaris Studio 12.1+. */

/* This is correct for the x86 and x64 CPUs, and we'll expand this over time. */

/**
 * \brief A type representing an atomic integer value.  It is a struct
 *        so people don't accidentally use numeric operations on it.
 */
struct SDL_atomic_t
{
    int value;
}

/**
 * \brief Set an atomic variable to a new value if it is currently an old value.
 *
 * \return SDL_TRUE if the atomic variable was set, SDL_FALSE otherwise.
 *
 * \note If you don't know what this function is for, you shouldn't use it!
*/
SDL_bool SDL_AtomicCAS (SDL_atomic_t* a, int oldval, int newval);

/**
 * \brief Set an atomic variable to a value.
 *
 * \return The previous value of the atomic variable.
 */
int SDL_AtomicSet (SDL_atomic_t* a, int v);

/**
 * \brief Get the value of an atomic variable
 */
int SDL_AtomicGet (SDL_atomic_t* a);

/**
 * \brief Add to an atomic variable.
 *
 * \return The previous value of the atomic variable.
 *
 * \note This same style can be used for any number operation
 */
int SDL_AtomicAdd (SDL_atomic_t* a, int v);

/**
 * \brief Increment an atomic variable used as a reference count.
 */

/**
 * \brief Decrement an atomic variable used as a reference count.
 *
 * \return SDL_TRUE if the variable reached zero after decrementing,
 *         SDL_FALSE otherwise
 */

/**
 * \brief Set a pointer to a new value if it is currently an old value.
 *
 * \return SDL_TRUE if the pointer was set, SDL_FALSE otherwise.
 *
 * \note If you don't know what this function is for, you shouldn't use it!
*/
SDL_bool SDL_AtomicCASPtr (void** a, void* oldval, void* newval);

/**
 * \brief Set a pointer to a value atomically.
 *
 * \return The previous value of the pointer.
 */
void* SDL_AtomicSetPtr (void** a, void* v);

/**
 * \brief Get the value of a pointer atomically.
 */
void* SDL_AtomicGetPtr (void** a);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_atomic_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_atomic.h ***/

/*** Start of inlined file: SDL_audio.h ***/
/**
 *  \file SDL_audio.h
 *
 *  Access to the raw audio mixing buffer for the SDL library.
 */

/*** Start of inlined file: SDL_error.h ***/
/**
 *  \file SDL_error.h
 *
 *  Simple error message routines for SDL.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* Public functions */
/* SDL_SetError() unconditionally returns -1. */
int SDL_SetError (const(char)* fmt, ...);
const(char)* SDL_GetError ();
void SDL_ClearError ();

/**
 *  \name Internal error functions
 *
 *  \internal
 *  Private error reporting function - used internally.
 */
/* @{ */

enum SDL_errorcode
{
    SDL_ENOMEM = 0,
    SDL_EFREAD = 1,
    SDL_EFWRITE = 2,
    SDL_EFSEEK = 3,
    SDL_UNSUPPORTED = 4,
    SDL_LASTERROR = 5
}

/* SDL_Error() unconditionally returns -1. */
int SDL_Error (SDL_errorcode code);
/* @} */ /* Internal error functions */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_error_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_error.h ***/

/*** Start of inlined file: SDL_endian.h ***/
/**
 *  \file SDL_endian.h
 *
 *  Functions for reading and writing endian-specific values
 */

/**
 *  \name The two types of endianness
 */
/* @{ */

/* @} */

/* Not defined in SDL_config.h? */

/* __linux__ */

/* __linux__ */
/* !SDL_BYTEORDER */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \file SDL_endian.h
 */

/* broken gcc version */

Uint16 SDL_Swap16 (Uint16 x);

Uint32 SDL_Swap32 (Uint32 x);

/* 486+ */

/* 386-only */

Uint64 SDL_Swap64 (Uint64 x);

/* Separate into high and low 32-bit values and swap them */

float SDL_SwapFloat (float x);

/**
 *  \name Swap to native
 *  Byteswap item from the specified endianness to the native endianness.
 */
/* @{ */

/* @} */ /* Swap to native */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_endian_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_endian.h ***/

/*** Start of inlined file: SDL_mutex.h ***/

/**
 *  \file SDL_mutex.h
 *
 *  Functions to provide thread synchronization primitives.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  Synchronization functions which can time out return this value
 *  if they time out.
 */

/**
 *  This is the timeout value which corresponds to never time out.
 */

/**
 *  \name Mutex functions
 */
/* @{ */

/* The SDL mutex structure, defined in SDL_sysmutex.c */
struct SDL_mutex;

/**
 *  Create a mutex, initialized unlocked.
 */
SDL_mutex* SDL_CreateMutex ();

/**
 *  Lock the mutex.
 *
 *  \return 0, or -1 on error.
 */

int SDL_LockMutex (SDL_mutex* mutex);

/**
 *  Try to lock the mutex
 *
 *  \return 0, SDL_MUTEX_TIMEDOUT, or -1 on error
 */
int SDL_TryLockMutex (SDL_mutex* mutex);

/**
 *  Unlock the mutex.
 *
 *  \return 0, or -1 on error.
 *
 *  \warning It is an error to unlock a mutex that has not been locked by
 *           the current thread, and doing so results in undefined behavior.
 */

int SDL_UnlockMutex (SDL_mutex* mutex);

/**
 *  Destroy a mutex.
 */
void SDL_DestroyMutex (SDL_mutex* mutex);

/* @} */ /* Mutex functions */

/**
 *  \name Semaphore functions
 */
/* @{ */

/* The SDL semaphore structure, defined in SDL_syssem.c */
struct SDL_semaphore;
alias SDL_sem = SDL_semaphore;

/**
 *  Create a semaphore, initialized with value, returns NULL on failure.
 */
SDL_sem* SDL_CreateSemaphore (Uint32 initial_value);

/**
 *  Destroy a semaphore.
 */
void SDL_DestroySemaphore (SDL_sem* sem);

/**
 *  This function suspends the calling thread until the semaphore pointed
 *  to by \c sem has a positive count. It then atomically decreases the
 *  semaphore count.
 */
int SDL_SemWait (SDL_sem* sem);

/**
 *  Non-blocking variant of SDL_SemWait().
 *
 *  \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait would
 *          block, and -1 on error.
 */
int SDL_SemTryWait (SDL_sem* sem);

/**
 *  Variant of SDL_SemWait() with a timeout in milliseconds.
 *
 *  \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait does not
 *          succeed in the allotted time, and -1 on error.
 *
 *  \warning On some platforms this function is implemented by looping with a
 *           delay of 1 ms, and so should be avoided if possible.
 */
int SDL_SemWaitTimeout (SDL_sem* sem, Uint32 ms);

/**
 *  Atomically increases the semaphore's count (not blocking).
 *
 *  \return 0, or -1 on error.
 */
int SDL_SemPost (SDL_sem* sem);

/**
 *  Returns the current count of the semaphore.
 */
Uint32 SDL_SemValue (SDL_sem* sem);

/* @} */ /* Semaphore functions */

/**
 *  \name Condition variable functions
 */
/* @{ */

/* The SDL condition variable structure, defined in SDL_syscond.c */
struct SDL_cond;

/**
 *  Create a condition variable.
 *
 *  Typical use of condition variables:
 *
 *  Thread A:
 *    SDL_LockMutex(lock);
 *    while ( ! condition ) {
 *        SDL_CondWait(cond, lock);
 *    }
 *    SDL_UnlockMutex(lock);
 *
 *  Thread B:
 *    SDL_LockMutex(lock);
 *    ...
 *    condition = true;
 *    ...
 *    SDL_CondSignal(cond);
 *    SDL_UnlockMutex(lock);
 *
 *  There is some discussion whether to signal the condition variable
 *  with the mutex locked or not.  There is some potential performance
 *  benefit to unlocking first on some platforms, but there are some
 *  potential race conditions depending on how your code is structured.
 *
 *  In general it's safer to signal the condition variable while the
 *  mutex is locked.
 */
SDL_cond* SDL_CreateCond ();

/**
 *  Destroy a condition variable.
 */
void SDL_DestroyCond (SDL_cond* cond);

/**
 *  Restart one of the threads that are waiting on the condition variable.
 *
 *  \return 0 or -1 on error.
 */
int SDL_CondSignal (SDL_cond* cond);

/**
 *  Restart all threads that are waiting on the condition variable.
 *
 *  \return 0 or -1 on error.
 */
int SDL_CondBroadcast (SDL_cond* cond);

/**
 *  Wait on the condition variable, unlocking the provided mutex.
 *
 *  \warning The mutex must be locked before entering this function!
 *
 *  The mutex is re-locked once the condition variable is signaled.
 *
 *  \return 0 when it is signaled, or -1 on error.
 */
int SDL_CondWait (SDL_cond* cond, SDL_mutex* mutex);

/**
 *  Waits for at most \c ms milliseconds, and returns 0 if the condition
 *  variable is signaled, ::SDL_MUTEX_TIMEDOUT if the condition is not
 *  signaled in the allotted time, and -1 on error.
 *
 *  \warning On some platforms this function is implemented by looping with a
 *           delay of 1 ms, and so should be avoided if possible.
 */
int SDL_CondWaitTimeout (SDL_cond* cond, SDL_mutex* mutex, Uint32 ms);

/* @} */ /* Condition variable functions */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_mutex_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_mutex.h ***/

/*** Start of inlined file: SDL_thread.h ***/

/**
 *  \file SDL_thread.h
 *
 *  Header for the SDL thread management routines.
 */

/* Thread synchronization primitives */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* The SDL thread structure, defined in SDL_thread.c */
struct SDL_Thread;

/* The SDL thread ID */
alias SDL_threadID = c_ulong;

/* Thread local storage ID, 0 is the invalid ID */
alias SDL_TLSID = uint;

/**
 *  The SDL thread priority.
 *
 *  \note On many systems you require special privileges to set high or time critical priority.
 */
enum SDL_ThreadPriority
{
    SDL_THREAD_PRIORITY_LOW = 0,
    SDL_THREAD_PRIORITY_NORMAL = 1,
    SDL_THREAD_PRIORITY_HIGH = 2,
    SDL_THREAD_PRIORITY_TIME_CRITICAL = 3
}

/**
 *  The function passed to SDL_CreateThread().
 *  It is passed a void* user context parameter and returns an int.
 */
alias SDL_ThreadFunction = int function (void* data);

/**
 *  \file SDL_thread.h
 *
 *  We compile SDL into a DLL. This means, that it's the DLL which
 *  creates a new thread for the calling process with the SDL_CreateThread()
 *  API. There is a problem with this, that only the RTL of the SDL2.DLL will
 *  be initialized for those threads, and not the RTL of the calling
 *  application!
 *
 *  To solve this, we make a little hack here.
 *
 *  We'll always use the caller's _beginthread() and _endthread() APIs to
 *  start a new thread. This way, if it's the SDL2.DLL which uses this API,
 *  then the RTL of SDL2.DLL will be used to create the new thread, and if it's
 *  the application, then the RTL of the application will be used.
 *
 *  So, in short:
 *  Always use the _beginthread() and _endthread() of the calling runtime
 *  library!
 */

/* _beginthreadex() and _endthreadex() */

/*arg*/ /* threadID */

/**
 *  Create a thread.
 */

/**
 *  Create a thread.
 */

/*
 * just like the windows case above:  We compile SDL2
 * into a dll with Watcom's runtime statically linked.
 */

/*arg*/

/**
 *  Create a thread with a default stack size.
 *
 *  This is equivalent to calling:
 *  SDL_CreateThreadWithStackSize(fn, name, 0, data);
 */
SDL_Thread* SDL_CreateThread (
    SDL_ThreadFunction fn,
    const(char)* name,
    void* data);

/**
 *  Create a thread.
 *
 *   Thread naming is a little complicated: Most systems have very small
 *    limits for the string length (Haiku has 32 bytes, Linux currently has 16,
 *    Visual C++ 6.0 has nine!), and possibly other arbitrary rules. You'll
 *    have to see what happens with your system's debugger. The name should be
 *    UTF-8 (but using the naming limits of C identifiers is a better bet).
 *   There are no requirements for thread naming conventions, so long as the
 *    string is null-terminated UTF-8, but these guidelines are helpful in
 *    choosing a name:
 *
 *    http://stackoverflow.com/questions/149932/naming-conventions-for-threads
 *
 *   If a system imposes requirements, SDL will try to munge the string for
 *    it (truncate, etc), but the original string contents will be available
 *    from SDL_GetThreadName().
 *
 *   The size (in bytes) of the new stack can be specified. Zero means "use
 *    the system default" which might be wildly different between platforms
 *    (x86 Linux generally defaults to eight megabytes, an embedded device
 *    might be a few kilobytes instead).
 *
 *   In SDL 2.1, stacksize will be folded into the original SDL_CreateThread
 *    function.
 */
SDL_Thread* SDL_CreateThreadWithStackSize (
    SDL_ThreadFunction fn,
    const(char)* name,
    const size_t stacksize,
    void* data);

/**
 * Get the thread name, as it was specified in SDL_CreateThread().
 *  This function returns a pointer to a UTF-8 string that names the
 *  specified thread, or NULL if it doesn't have a name. This is internal
 *  memory, not to be free()'d by the caller, and remains valid until the
 *  specified thread is cleaned up by SDL_WaitThread().
 */
const(char)* SDL_GetThreadName (SDL_Thread* thread);

/**
 *  Get the thread identifier for the current thread.
 */
SDL_threadID SDL_ThreadID ();

/**
 *  Get the thread identifier for the specified thread.
 *
 *  Equivalent to SDL_ThreadID() if the specified thread is NULL.
 */
SDL_threadID SDL_GetThreadID (SDL_Thread* thread);

/**
 *  Set the priority for the current thread
 */
int SDL_SetThreadPriority (SDL_ThreadPriority priority);

/**
 *  Wait for a thread to finish. Threads that haven't been detached will
 *  remain (as a "zombie") until this function cleans them up. Not doing so
 *  is a resource leak.
 *
 *  Once a thread has been cleaned up through this function, the SDL_Thread
 *  that references it becomes invalid and should not be referenced again.
 *  As such, only one thread may call SDL_WaitThread() on another.
 *
 *  The return code for the thread function is placed in the area
 *  pointed to by \c status, if \c status is not NULL.
 *
 *  You may not wait on a thread that has been used in a call to
 *  SDL_DetachThread(). Use either that function or this one, but not
 *  both, or behavior is undefined.
 *
 *  It is safe to pass NULL to this function; it is a no-op.
 */
void SDL_WaitThread (SDL_Thread* thread, int* status);

/**
 *  A thread may be "detached" to signify that it should not remain until
 *  another thread has called SDL_WaitThread() on it. Detaching a thread
 *  is useful for long-running threads that nothing needs to synchronize
 *  with or further manage. When a detached thread is done, it simply
 *  goes away.
 *
 *  There is no way to recover the return code of a detached thread. If you
 *  need this, don't detach the thread and instead use SDL_WaitThread().
 *
 *  Once a thread is detached, you should usually assume the SDL_Thread isn't
 *  safe to reference again, as it will become invalid immediately upon
 *  the detached thread's exit, instead of remaining until someone has called
 *  SDL_WaitThread() to finally clean it up. As such, don't detach the same
 *  thread more than once.
 *
 *  If a thread has already exited when passed to SDL_DetachThread(), it will
 *  stop waiting for a call to SDL_WaitThread() and clean up immediately.
 *  It is not safe to detach a thread that might be used with SDL_WaitThread().
 *
 *  You may not call SDL_WaitThread() on a thread that has been detached.
 *  Use either that function or this one, but not both, or behavior is
 *  undefined.
 *
 *  It is safe to pass NULL to this function; it is a no-op.
 */
void SDL_DetachThread (SDL_Thread* thread);

/**
 *  \brief Create an identifier that is globally visible to all threads but refers to data that is thread-specific.
 *
 *  \return The newly created thread local storage identifier, or 0 on error
 *
 *  \code
 *  static SDL_SpinLock tls_lock;
 *  static SDL_TLSID thread_local_storage;
 *
 *  void SetMyThreadData(void *value)
 *  {
 *      if (!thread_local_storage) {
 *          SDL_AtomicLock(&tls_lock);
 *          if (!thread_local_storage) {
 *              thread_local_storage = SDL_TLSCreate();
 *          }
 *          SDL_AtomicUnlock(&tls_lock);
 *      }
 *      SDL_TLSSet(thread_local_storage, value, 0);
 *  }
 *
 *  void *GetMyThreadData(void)
 *  {
 *      return SDL_TLSGet(thread_local_storage);
 *  }
 *  \endcode
 *
 *  \sa SDL_TLSGet()
 *  \sa SDL_TLSSet()
 */
SDL_TLSID SDL_TLSCreate ();

/**
 *  \brief Get the value associated with a thread local storage ID for the current thread.
 *
 *  \param id The thread local storage ID
 *
 *  \return The value associated with the ID for the current thread, or NULL if no value has been set.
 *
 *  \sa SDL_TLSCreate()
 *  \sa SDL_TLSSet()
 */
void* SDL_TLSGet (SDL_TLSID id);

/**
 *  \brief Set the value associated with a thread local storage ID for the current thread.
 *
 *  \param id The thread local storage ID
 *  \param value The value to associate with the ID for the current thread
 *  \param destructor A function called when the thread exits, to free the value.
 *
 *  \return 0 on success, -1 on error
 *
 *  \sa SDL_TLSCreate()
 *  \sa SDL_TLSGet()
 */
int SDL_TLSSet (SDL_TLSID id, const(void)* value, void function (void*) destructor);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_thread_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_thread.h ***/

/*** Start of inlined file: SDL_rwops.h ***/
/**
 *  \file SDL_rwops.h
 *
 *  This file provides a general interface for SDL to read and write
 *  data streams.  It can easily be extended to files, memory, etc.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* RWops Types */
/**< Unknown stream type */
/**< Win32 file */
/**< Stdio file */
/**< Android asset */
/**< Memory stream */
/**< Read-Only memory stream */

/**
 * This is the read/write operation structure -- very basic.
 */
struct SDL_RWops
{
    /**
    	 *  Return the size of the file in this rwops, or -1 if unknown
    	 */
    Sint64 function (SDL_RWops* context) size;

    /**
    	 *  Seek to \c offset relative to \c whence, one of stdio's whence values:
    	 *  RW_SEEK_SET, RW_SEEK_CUR, RW_SEEK_END
    	 *
    	 *  \return the final offset in the data stream, or -1 on error.
    	 */
    Sint64 function (SDL_RWops* context, Sint64 offset, int whence) seek;

    /**
    	 *  Read up to \c maxnum objects each of size \c size from the data
    	 *  stream to the area pointed at by \c ptr.
    	 *
    	 *  \return the number of objects read, or 0 at error or end of file.
    	 */
    size_t function (
        SDL_RWops* context,
        void* ptr,
        size_t size,
        size_t maxnum) read;

    /**
    	 *  Write exactly \c num objects each of size \c size from the area
    	 *  pointed at by \c ptr to data stream.
    	 *
    	 *  \return the number of objects written, or 0 at error or end of file.
    	 */
    size_t function (
        SDL_RWops* context,
        const(void)* ptr,
        size_t size,
        size_t num) write;

    /**
    	 *  Close and free an allocated SDL_RWops structure.
    	 *
    	 *  \return 0 if successful or -1 on write error when flushing data.
    	 */
    int function (SDL_RWops* context) close;

    Uint32 type;

    union _Anonymous_0
    {
        struct _Anonymous_1
        {
            SDL_bool autoclose;
            FILE* fp;
        }

        _Anonymous_1 stdio;

        struct _Anonymous_2
        {
            Uint8* base;
            Uint8* here;
            Uint8* stop;
        }

        _Anonymous_2 mem;

        struct _Anonymous_3
        {
            void* data1;
            void* data2;
        }

        _Anonymous_3 unknown;
    }

    _Anonymous_0 hidden;
}

/**
 *  \name RWFrom functions
 *
 *  Functions to create SDL_RWops structures from various data streams.
 */
/* @{ */

SDL_RWops* SDL_RWFromFile (const(char)* file, const(char)* mode);

SDL_RWops* SDL_RWFromFP (FILE* fp, SDL_bool autoclose);

SDL_RWops* SDL_RWFromMem (void* mem, int size);
SDL_RWops* SDL_RWFromConstMem (const(void)* mem, int size);

/* @} */ /* RWFrom functions */

SDL_RWops* SDL_AllocRW ();
void SDL_FreeRW (SDL_RWops* area);

/**< Seek from the beginning of data */
/**< Seek relative to current read point */
/**< Seek relative to the end of data */

/**
 *  \name Read/write macros
 *
 *  Macros to easily read and write from an SDL_RWops structure.
 */
/* @{ */

/* @} */ /* Read/write macros */

/**
 *  Load all the data from an SDL data stream.
 *
 *  The data is allocated with a zero byte at the end (null terminated)
 *
 *  If \c datasize is not NULL, it is filled with the size of the data read.
 *
 *  If \c freesrc is non-zero, the stream will be closed after being read.
 *
 *  The data should be freed with SDL_free().
 *
 *  \return the data, or NULL if there was an error.
 */
void* SDL_LoadFile_RW (SDL_RWops* src, size_t* datasize, int freesrc);

/**
 *  Load an entire file.
 *
 *  Convenience macro.
 */

/**
 *  \name Read endian functions
 *
 *  Read an item of the specified endianness and return in native format.
 */
/* @{ */
Uint8 SDL_ReadU8 (SDL_RWops* src);
Uint16 SDL_ReadLE16 (SDL_RWops* src);
Uint16 SDL_ReadBE16 (SDL_RWops* src);
Uint32 SDL_ReadLE32 (SDL_RWops* src);
Uint32 SDL_ReadBE32 (SDL_RWops* src);
Uint64 SDL_ReadLE64 (SDL_RWops* src);
Uint64 SDL_ReadBE64 (SDL_RWops* src);
/* @} */ /* Read endian functions */

/**
 *  \name Write endian functions
 *
 *  Write an item of native format to the specified endianness.
 */
/* @{ */
size_t SDL_WriteU8 (SDL_RWops* dst, Uint8 value);
size_t SDL_WriteLE16 (SDL_RWops* dst, Uint16 value);
size_t SDL_WriteBE16 (SDL_RWops* dst, Uint16 value);
size_t SDL_WriteLE32 (SDL_RWops* dst, Uint32 value);
size_t SDL_WriteBE32 (SDL_RWops* dst, Uint32 value);
size_t SDL_WriteLE64 (SDL_RWops* dst, Uint64 value);
size_t SDL_WriteBE64 (SDL_RWops* dst, Uint64 value);
/* @} */ /* Write endian functions */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_rwops_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_rwops.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief Audio format flags.
 *
 *  These are what the 16 bits in SDL_AudioFormat currently mean...
 *  (Unspecified bits are always zero).
 *
 *  \verbatim
	++-----------------------sample is signed if set
	||
	||       ++-----------sample is bigendian if set
	||       ||
	||       ||          ++---sample is float if set
	||       ||          ||
	||       ||          || +---sample bit size---+
	||       ||          || |                     |
	15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00
	\endverbatim
 *
 *  There are macros in SDL 2.0 and later to query these bits.
 */
alias SDL_AudioFormat = ushort;

/**
 *  \name Audio flags
 */
/* @{ */

/**
 *  \name Audio format flags
 *
 *  Defaults to LSB byte order.
 */
/* @{ */
/**< Unsigned 8-bit samples */
/**< Signed 8-bit samples */
/**< Unsigned 16-bit samples */
/**< Signed 16-bit samples */
/**< As above, but big-endian byte order */
/**< As above, but big-endian byte order */

/* @} */

/**
 *  \name int32 support
 */
/* @{ */
/**< 32-bit integer samples */
/**< As above, but big-endian byte order */

/* @} */

/**
 *  \name float32 support
 */
/* @{ */
/**< 32-bit floating point samples */
/**< As above, but big-endian byte order */

/* @} */

/**
 *  \name Native audio byte ordering
 */
/* @{ */

/* @} */

/**
 *  \name Allow change flags
 *
 *  Which audio format changes are allowed when opening a device.
 */
/* @{ */

/* @} */

/* @} */ /* Audio flags */

/**
 *  This function is called when the audio device needs more data.
 *
 *  \param userdata An application-specific parameter saved in
 *                  the SDL_AudioSpec structure
 *  \param stream A pointer to the audio data buffer.
 *  \param len    The length of that buffer in bytes.
 *
 *  Once the callback returns, the buffer will no longer be valid.
 *  Stereo samples are stored in a LRLRLR ordering.
 *
 *  You can choose to avoid callbacks and use SDL_QueueAudio() instead, if
 *  you like. Just open your audio device with a NULL callback.
 */
alias SDL_AudioCallback = void function (
    void* userdata,
    Uint8* stream,
    int len);

/**
 *  The calculated values in this structure are calculated by SDL_OpenAudio().
 *
 *  For multi-channel audio, the default SDL channel mapping is:
 *  2:  FL FR                       (stereo)
 *  3:  FL FR LFE                   (2.1 surround)
 *  4:  FL FR BL BR                 (quad)
 *  5:  FL FR FC BL BR              (quad + center)
 *  6:  FL FR FC LFE SL SR          (5.1 surround - last two can also be BL BR)
 *  7:  FL FR FC LFE BC SL SR       (6.1 surround)
 *  8:  FL FR FC LFE BL BR SL SR    (7.1 surround)
 */
struct SDL_AudioSpec
{
    int freq; /**< DSP frequency -- samples per second */
    SDL_AudioFormat format; /**< Audio data format */
    Uint8 channels; /**< Number of channels: 1 mono, 2 stereo */
    Uint8 silence; /**< Audio buffer silence value (calculated) */
    Uint16 samples; /**< Audio buffer size in sample FRAMES (total samples divided by channel count) */
    Uint16 padding; /**< Necessary for some compile environments */
    Uint32 size; /**< Audio buffer size in bytes (calculated) */
    SDL_AudioCallback callback; /**< Callback that feeds the audio device (NULL to use SDL_QueueAudio()). */
    void* userdata; /**< Userdata passed to callback (ignored for NULL callbacks). */
}

alias SDL_AudioFilter = void function (
    SDL_AudioCVT* cvt,
    SDL_AudioFormat format);

/**
 *  \brief Upper limit of filters in SDL_AudioCVT
 *
 *  The maximum number of SDL_AudioFilter functions in SDL_AudioCVT is
 *  currently limited to 9. The SDL_AudioCVT.filters array has 10 pointers,
 *  one of which is the terminating NULL pointer.
 */

/**
 *  \struct SDL_AudioCVT
 *  \brief A structure to hold a set of audio conversion filters and buffers.
 *
 *  Note that various parts of the conversion pipeline can take advantage
 *  of SIMD operations (like SSE2, for example). SDL_AudioCVT doesn't require
 *  you to pass it aligned data, but can possibly run much faster if you
 *  set both its (buf) field to a pointer that is aligned to 16 bytes, and its
 *  (len) field to something that's a multiple of 16, if possible.
 */

/* This structure is 84 bytes on 32-bit architectures, make sure GCC doesn't
   pad it out to 88 bytes to guarantee ABI compatibility between compilers.
   vvv
   The next time we rev the ABI, make sure to size the ints and add padding.
*/

/* */
struct SDL_AudioCVT
{
    align (1):

    int needed; /**< Set to 1 if conversion possible */
    SDL_AudioFormat src_format; /**< Source audio format */
    SDL_AudioFormat dst_format; /**< Target audio format */
    double rate_incr; /**< Rate conversion increment */
    Uint8* buf; /**< Buffer to hold entire audio data */
    int len; /**< Length of original audio buffer */
    int len_cvt; /**< Length of converted audio buffer */
    int len_mult; /**< buffer must be len*len_mult big */
    double len_ratio; /**< Given len, final size is len*len_ratio */
    SDL_AudioFilter[10] filters; /**< NULL-terminated list of filter functions */
    int filter_index; /**< Current audio conversion function */
}

/* Function prototypes */

/**
 *  \name Driver discovery functions
 *
 *  These functions return the list of built in audio drivers, in the
 *  order that they are normally initialized by default.
 */
/* @{ */
int SDL_GetNumAudioDrivers ();
const(char)* SDL_GetAudioDriver (int index);
/* @} */

/**
 *  \name Initialization and cleanup
 *
 *  \internal These functions are used internally, and should not be used unless
 *            you have a specific need to specify the audio driver you want to
 *            use.  You should normally use SDL_Init() or SDL_InitSubSystem().
 */
/* @{ */
int SDL_AudioInit (const(char)* driver_name);
void SDL_AudioQuit ();
/* @} */

/**
 *  This function returns the name of the current audio driver, or NULL
 *  if no driver has been initialized.
 */
const(char)* SDL_GetCurrentAudioDriver ();

/**
 *  This function opens the audio device with the desired parameters, and
 *  returns 0 if successful, placing the actual hardware parameters in the
 *  structure pointed to by \c obtained.  If \c obtained is NULL, the audio
 *  data passed to the callback function will be guaranteed to be in the
 *  requested format, and will be automatically converted to the hardware
 *  audio format if necessary.  This function returns -1 if it failed
 *  to open the audio device, or couldn't set up the audio thread.
 *
 *  When filling in the desired audio spec structure,
 *    - \c desired->freq should be the desired audio frequency in samples-per-
 *      second.
 *    - \c desired->format should be the desired audio format.
 *    - \c desired->samples is the desired size of the audio buffer, in
 *      samples.  This number should be a power of two, and may be adjusted by
 *      the audio driver to a value more suitable for the hardware.  Good values
 *      seem to range between 512 and 8096 inclusive, depending on the
 *      application and CPU speed.  Smaller values yield faster response time,
 *      but can lead to underflow if the application is doing heavy processing
 *      and cannot fill the audio buffer in time.  A stereo sample consists of
 *      both right and left channels in LR ordering.
 *      Note that the number of samples is directly related to time by the
 *      following formula:  \code ms = (samples*1000)/freq \endcode
 *    - \c desired->size is the size in bytes of the audio buffer, and is
 *      calculated by SDL_OpenAudio().
 *    - \c desired->silence is the value used to set the buffer to silence,
 *      and is calculated by SDL_OpenAudio().
 *    - \c desired->callback should be set to a function that will be called
 *      when the audio device is ready for more data.  It is passed a pointer
 *      to the audio buffer, and the length in bytes of the audio buffer.
 *      This function usually runs in a separate thread, and so you should
 *      protect data structures that it accesses by calling SDL_LockAudio()
 *      and SDL_UnlockAudio() in your code. Alternately, you may pass a NULL
 *      pointer here, and call SDL_QueueAudio() with some frequency, to queue
 *      more audio samples to be played (or for capture devices, call
 *      SDL_DequeueAudio() with some frequency, to obtain audio samples).
 *    - \c desired->userdata is passed as the first parameter to your callback
 *      function. If you passed a NULL callback, this value is ignored.
 *
 *  The audio device starts out playing silence when it's opened, and should
 *  be enabled for playing by calling \c SDL_PauseAudio(0) when you are ready
 *  for your audio callback function to be called.  Since the audio driver
 *  may modify the requested size of the audio buffer, you should allocate
 *  any local mixing buffers after you open the audio device.
 */
int SDL_OpenAudio (SDL_AudioSpec* desired, SDL_AudioSpec* obtained);

/**
 *  SDL Audio Device IDs.
 *
 *  A successful call to SDL_OpenAudio() is always device id 1, and legacy
 *  SDL audio APIs assume you want this device ID. SDL_OpenAudioDevice() calls
 *  always returns devices >= 2 on success. The legacy calls are good both
 *  for backwards compatibility and when you don't care about multiple,
 *  specific, or capture devices.
 */
alias SDL_AudioDeviceID = uint;

/**
 *  Get the number of available devices exposed by the current driver.
 *  Only valid after a successfully initializing the audio subsystem.
 *  Returns -1 if an explicit list of devices can't be determined; this is
 *  not an error. For example, if SDL is set up to talk to a remote audio
 *  server, it can't list every one available on the Internet, but it will
 *  still allow a specific host to be specified to SDL_OpenAudioDevice().
 *
 *  In many common cases, when this function returns a value <= 0, it can still
 *  successfully open the default device (NULL for first argument of
 *  SDL_OpenAudioDevice()).
 */
int SDL_GetNumAudioDevices (int iscapture);

/**
 *  Get the human-readable name of a specific audio device.
 *  Must be a value between 0 and (number of audio devices-1).
 *  Only valid after a successfully initializing the audio subsystem.
 *  The values returned by this function reflect the latest call to
 *  SDL_GetNumAudioDevices(); recall that function to redetect available
 *  hardware.
 *
 *  The string returned by this function is UTF-8 encoded, read-only, and
 *  managed internally. You are not to free it. If you need to keep the
 *  string for any length of time, you should make your own copy of it, as it
 *  will be invalid next time any of several other SDL functions is called.
 */
const(char)* SDL_GetAudioDeviceName (int index, int iscapture);

/**
 *  Open a specific audio device. Passing in a device name of NULL requests
 *  the most reasonable default (and is equivalent to calling SDL_OpenAudio()).
 *
 *  The device name is a UTF-8 string reported by SDL_GetAudioDeviceName(), but
 *  some drivers allow arbitrary and driver-specific strings, such as a
 *  hostname/IP address for a remote audio server, or a filename in the
 *  diskaudio driver.
 *
 *  \return 0 on error, a valid device ID that is >= 2 on success.
 *
 *  SDL_OpenAudio(), unlike this function, always acts on device ID 1.
 */
SDL_AudioDeviceID SDL_OpenAudioDevice (
    const(char)* device,
    int iscapture,
    const(SDL_AudioSpec)* desired,
    SDL_AudioSpec* obtained,
    int allowed_changes);

/**
 *  \name Audio state
 *
 *  Get the current audio state.
 */
/* @{ */
enum SDL_AudioStatus
{
    SDL_AUDIO_STOPPED = 0,
    SDL_AUDIO_PLAYING = 1,
    SDL_AUDIO_PAUSED = 2
}

SDL_AudioStatus SDL_GetAudioStatus ();

SDL_AudioStatus SDL_GetAudioDeviceStatus (SDL_AudioDeviceID dev);
/* @} */ /* Audio State */

/**
 *  \name Pause audio functions
 *
 *  These functions pause and unpause the audio callback processing.
 *  They should be called with a parameter of 0 after opening the audio
 *  device to start playing sound.  This is so you can safely initialize
 *  data for your callback function after opening the audio device.
 *  Silence will be written to the audio device during the pause.
 */
/* @{ */
void SDL_PauseAudio (int pause_on);
void SDL_PauseAudioDevice (SDL_AudioDeviceID dev, int pause_on);
/* @} */ /* Pause audio functions */

/**
 *  This function loads a WAVE from the data source, automatically freeing
 *  that source if \c freesrc is non-zero.  For example, to load a WAVE file,
 *  you could do:
 *  \code
 *      SDL_LoadWAV_RW(SDL_RWFromFile("sample.wav", "rb"), 1, ...);
 *  \endcode
 *
 *  If this function succeeds, it returns the given SDL_AudioSpec,
 *  filled with the audio data format of the wave data, and sets
 *  \c *audio_buf to a malloc()'d buffer containing the audio data,
 *  and sets \c *audio_len to the length of that audio buffer, in bytes.
 *  You need to free the audio buffer with SDL_FreeWAV() when you are
 *  done with it.
 *
 *  This function returns NULL and sets the SDL error message if the
 *  wave file cannot be opened, uses an unknown data format, or is
 *  corrupt.  Currently raw and MS-ADPCM WAVE files are supported.
 */
SDL_AudioSpec* SDL_LoadWAV_RW (
    SDL_RWops* src,
    int freesrc,
    SDL_AudioSpec* spec,
    Uint8** audio_buf,
    Uint32* audio_len);

/**
 *  Loads a WAV from a file.
 *  Compatibility convenience function.
 */

/**
 *  This function frees data previously allocated with SDL_LoadWAV_RW()
 */
void SDL_FreeWAV (Uint8* audio_buf);

/**
 *  This function takes a source format and rate and a destination format
 *  and rate, and initializes the \c cvt structure with information needed
 *  by SDL_ConvertAudio() to convert a buffer of audio data from one format
 *  to the other. An unsupported format causes an error and -1 will be returned.
 *
 *  \return 0 if no conversion is needed, 1 if the audio filter is set up,
 *  or -1 on error.
 */
int SDL_BuildAudioCVT (
    SDL_AudioCVT* cvt,
    SDL_AudioFormat src_format,
    Uint8 src_channels,
    int src_rate,
    SDL_AudioFormat dst_format,
    Uint8 dst_channels,
    int dst_rate);

/**
 *  Once you have initialized the \c cvt structure using SDL_BuildAudioCVT(),
 *  created an audio buffer \c cvt->buf, and filled it with \c cvt->len bytes of
 *  audio data in the source format, this function will convert it in-place
 *  to the desired format.
 *
 *  The data conversion may expand the size of the audio data, so the buffer
 *  \c cvt->buf should be allocated after the \c cvt structure is initialized by
 *  SDL_BuildAudioCVT(), and should be \c cvt->len*cvt->len_mult bytes long.
 *
 *  \return 0 on success or -1 if \c cvt->buf is NULL.
 */
int SDL_ConvertAudio (SDL_AudioCVT* cvt);

/* SDL_AudioStream is a new audio conversion interface.
   The benefits vs SDL_AudioCVT:
	- it can handle resampling data in chunks without generating
	  artifacts, when it doesn't have the complete buffer available.
	- it can handle incoming data in any variable size.
	- You push data as you have it, and pull it when you need it
 */
/* this is opaque to the outside world. */
struct _SDL_AudioStream;
alias SDL_AudioStream = _SDL_AudioStream;

/**
 *  Create a new audio stream
 *
 *  \param src_format The format of the source audio
 *  \param src_channels The number of channels of the source audio
 *  \param src_rate The sampling rate of the source audio
 *  \param dst_format The format of the desired audio output
 *  \param dst_channels The number of channels of the desired audio output
 *  \param dst_rate The sampling rate of the desired audio output
 *  \return 0 on success, or -1 on error.
 *
 *  \sa SDL_AudioStreamPut
 *  \sa SDL_AudioStreamGet
 *  \sa SDL_AudioStreamAvailable
 *  \sa SDL_AudioStreamFlush
 *  \sa SDL_AudioStreamClear
 *  \sa SDL_FreeAudioStream
 */
SDL_AudioStream* SDL_NewAudioStream (
    const SDL_AudioFormat src_format,
    const Uint8 src_channels,
    const int src_rate,
    const SDL_AudioFormat dst_format,
    const Uint8 dst_channels,
    const int dst_rate);

/**
 *  Add data to be converted/resampled to the stream
 *
 *  \param stream The stream the audio data is being added to
 *  \param buf A pointer to the audio data to add
 *  \param len The number of bytes to write to the stream
 *  \return 0 on success, or -1 on error.
 *
 *  \sa SDL_NewAudioStream
 *  \sa SDL_AudioStreamGet
 *  \sa SDL_AudioStreamAvailable
 *  \sa SDL_AudioStreamFlush
 *  \sa SDL_AudioStreamClear
 *  \sa SDL_FreeAudioStream
 */
int SDL_AudioStreamPut (SDL_AudioStream* stream, const(void)* buf, int len);

/**
 *  Get converted/resampled data from the stream
 *
 *  \param stream The stream the audio is being requested from
 *  \param buf A buffer to fill with audio data
 *  \param len The maximum number of bytes to fill
 *  \return The number of bytes read from the stream, or -1 on error
 *
 *  \sa SDL_NewAudioStream
 *  \sa SDL_AudioStreamPut
 *  \sa SDL_AudioStreamAvailable
 *  \sa SDL_AudioStreamFlush
 *  \sa SDL_AudioStreamClear
 *  \sa SDL_FreeAudioStream
 */
int SDL_AudioStreamGet (SDL_AudioStream* stream, void* buf, int len);

/**
 * Get the number of converted/resampled bytes available. The stream may be
 *  buffering data behind the scenes until it has enough to resample
 *  correctly, so this number might be lower than what you expect, or even
 *  be zero. Add more data or flush the stream if you need the data now.
 *
 *  \sa SDL_NewAudioStream
 *  \sa SDL_AudioStreamPut
 *  \sa SDL_AudioStreamGet
 *  \sa SDL_AudioStreamFlush
 *  \sa SDL_AudioStreamClear
 *  \sa SDL_FreeAudioStream
 */
int SDL_AudioStreamAvailable (SDL_AudioStream* stream);

/**
 * Tell the stream that you're done sending data, and anything being buffered
 *  should be converted/resampled and made available immediately.
 *
 * It is legal to add more data to a stream after flushing, but there will
 *  be audio gaps in the output. Generally this is intended to signal the
 *  end of input, so the complete output becomes available.
 *
 *  \sa SDL_NewAudioStream
 *  \sa SDL_AudioStreamPut
 *  \sa SDL_AudioStreamGet
 *  \sa SDL_AudioStreamAvailable
 *  \sa SDL_AudioStreamClear
 *  \sa SDL_FreeAudioStream
 */
int SDL_AudioStreamFlush (SDL_AudioStream* stream);

/**
 *  Clear any pending data in the stream without converting it
 *
 *  \sa SDL_NewAudioStream
 *  \sa SDL_AudioStreamPut
 *  \sa SDL_AudioStreamGet
 *  \sa SDL_AudioStreamAvailable
 *  \sa SDL_AudioStreamFlush
 *  \sa SDL_FreeAudioStream
 */
void SDL_AudioStreamClear (SDL_AudioStream* stream);

/**
 * Free an audio stream
 *
 *  \sa SDL_NewAudioStream
 *  \sa SDL_AudioStreamPut
 *  \sa SDL_AudioStreamGet
 *  \sa SDL_AudioStreamAvailable
 *  \sa SDL_AudioStreamFlush
 *  \sa SDL_AudioStreamClear
 */
void SDL_FreeAudioStream (SDL_AudioStream* stream);

/**
 *  This takes two audio buffers of the playing audio format and mixes
 *  them, performing addition, volume adjustment, and overflow clipping.
 *  The volume ranges from 0 - 128, and should be set to ::SDL_MIX_MAXVOLUME
 *  for full audio volume.  Note this does not change hardware volume.
 *  This is provided for convenience -- you can mix your own audio data.
 */
void SDL_MixAudio (Uint8* dst, const(Uint8)* src, Uint32 len, int volume);

/**
 *  This works like SDL_MixAudio(), but you specify the audio format instead of
 *  using the format of audio device 1. Thus it can be used when no audio
 *  device is open at all.
 */
void SDL_MixAudioFormat (
    Uint8* dst,
    const(Uint8)* src,
    SDL_AudioFormat format,
    Uint32 len,
    int volume);

/**
 *  Queue more audio on non-callback devices.
 *
 *  (If you are looking to retrieve queued audio from a non-callback capture
 *  device, you want SDL_DequeueAudio() instead. This will return -1 to
 *  signify an error if you use it with capture devices.)
 *
 *  SDL offers two ways to feed audio to the device: you can either supply a
 *  callback that SDL triggers with some frequency to obtain more audio
 *  (pull method), or you can supply no callback, and then SDL will expect
 *  you to supply data at regular intervals (push method) with this function.
 *
 *  There are no limits on the amount of data you can queue, short of
 *  exhaustion of address space. Queued data will drain to the device as
 *  necessary without further intervention from you. If the device needs
 *  audio but there is not enough queued, it will play silence to make up
 *  the difference. This means you will have skips in your audio playback
 *  if you aren't routinely queueing sufficient data.
 *
 *  This function copies the supplied data, so you are safe to free it when
 *  the function returns. This function is thread-safe, but queueing to the
 *  same device from two threads at once does not promise which buffer will
 *  be queued first.
 *
 *  You may not queue audio on a device that is using an application-supplied
 *  callback; doing so returns an error. You have to use the audio callback
 *  or queue audio with this function, but not both.
 *
 *  You should not call SDL_LockAudio() on the device before queueing; SDL
 *  handles locking internally for this function.
 *
 *  \param dev The device ID to which we will queue audio.
 *  \param data The data to queue to the device for later playback.
 *  \param len The number of bytes (not samples!) to which (data) points.
 *  \return 0 on success, or -1 on error.
 *
 *  \sa SDL_GetQueuedAudioSize
 *  \sa SDL_ClearQueuedAudio
 */
int SDL_QueueAudio (SDL_AudioDeviceID dev, const(void)* data, Uint32 len);

/**
 *  Dequeue more audio on non-callback devices.
 *
 *  (If you are looking to queue audio for output on a non-callback playback
 *  device, you want SDL_QueueAudio() instead. This will always return 0
 *  if you use it with playback devices.)
 *
 *  SDL offers two ways to retrieve audio from a capture device: you can
 *  either supply a callback that SDL triggers with some frequency as the
 *  device records more audio data, (push method), or you can supply no
 *  callback, and then SDL will expect you to retrieve data at regular
 *  intervals (pull method) with this function.
 *
 *  There are no limits on the amount of data you can queue, short of
 *  exhaustion of address space. Data from the device will keep queuing as
 *  necessary without further intervention from you. This means you will
 *  eventually run out of memory if you aren't routinely dequeueing data.
 *
 *  Capture devices will not queue data when paused; if you are expecting
 *  to not need captured audio for some length of time, use
 *  SDL_PauseAudioDevice() to stop the capture device from queueing more
 *  data. This can be useful during, say, level loading times. When
 *  unpaused, capture devices will start queueing data from that point,
 *  having flushed any capturable data available while paused.
 *
 *  This function is thread-safe, but dequeueing from the same device from
 *  two threads at once does not promise which thread will dequeued data
 *  first.
 *
 *  You may not dequeue audio from a device that is using an
 *  application-supplied callback; doing so returns an error. You have to use
 *  the audio callback, or dequeue audio with this function, but not both.
 *
 *  You should not call SDL_LockAudio() on the device before queueing; SDL
 *  handles locking internally for this function.
 *
 *  \param dev The device ID from which we will dequeue audio.
 *  \param data A pointer into where audio data should be copied.
 *  \param len The number of bytes (not samples!) to which (data) points.
 *  \return number of bytes dequeued, which could be less than requested.
 *
 *  \sa SDL_GetQueuedAudioSize
 *  \sa SDL_ClearQueuedAudio
 */
Uint32 SDL_DequeueAudio (SDL_AudioDeviceID dev, void* data, Uint32 len);

/**
 *  Get the number of bytes of still-queued audio.
 *
 *  For playback device:
 *
 *    This is the number of bytes that have been queued for playback with
 *    SDL_QueueAudio(), but have not yet been sent to the hardware. This
 *    number may shrink at any time, so this only informs of pending data.
 *
 *    Once we've sent it to the hardware, this function can not decide the
 *    exact byte boundary of what has been played. It's possible that we just
 *    gave the hardware several kilobytes right before you called this
 *    function, but it hasn't played any of it yet, or maybe half of it, etc.
 *
 *  For capture devices:
 *
 *    This is the number of bytes that have been captured by the device and
 *    are waiting for you to dequeue. This number may grow at any time, so
 *    this only informs of the lower-bound of available data.
 *
 *  You may not queue audio on a device that is using an application-supplied
 *  callback; calling this function on such a device always returns 0.
 *  You have to queue audio with SDL_QueueAudio()/SDL_DequeueAudio(), or use
 *  the audio callback, but not both.
 *
 *  You should not call SDL_LockAudio() on the device before querying; SDL
 *  handles locking internally for this function.
 *
 *  \param dev The device ID of which we will query queued audio size.
 *  \return Number of bytes (not samples!) of queued audio.
 *
 *  \sa SDL_QueueAudio
 *  \sa SDL_ClearQueuedAudio
 */
Uint32 SDL_GetQueuedAudioSize (SDL_AudioDeviceID dev);

/**
 *  Drop any queued audio data. For playback devices, this is any queued data
 *  still waiting to be submitted to the hardware. For capture devices, this
 *  is any data that was queued by the device that hasn't yet been dequeued by
 *  the application.
 *
 *  Immediately after this call, SDL_GetQueuedAudioSize() will return 0. For
 *  playback devices, the hardware will start playing silence if more audio
 *  isn't queued. Unpaused capture devices will start filling the queue again
 *  as soon as they have more data available (which, depending on the state
 *  of the hardware and the thread, could be before this function call
 *  returns!).
 *
 *  This will not prevent playback of queued audio that's already been sent
 *  to the hardware, as we can not undo that, so expect there to be some
 *  fraction of a second of audio that might still be heard. This can be
 *  useful if you want to, say, drop any pending music during a level change
 *  in your game.
 *
 *  You may not queue audio on a device that is using an application-supplied
 *  callback; calling this function on such a device is always a no-op.
 *  You have to queue audio with SDL_QueueAudio()/SDL_DequeueAudio(), or use
 *  the audio callback, but not both.
 *
 *  You should not call SDL_LockAudio() on the device before clearing the
 *  queue; SDL handles locking internally for this function.
 *
 *  This function always succeeds and thus returns void.
 *
 *  \param dev The device ID of which to clear the audio queue.
 *
 *  \sa SDL_QueueAudio
 *  \sa SDL_GetQueuedAudioSize
 */
void SDL_ClearQueuedAudio (SDL_AudioDeviceID dev);

/**
 *  \name Audio lock functions
 *
 *  The lock manipulated by these functions protects the callback function.
 *  During a SDL_LockAudio()/SDL_UnlockAudio() pair, you can be guaranteed that
 *  the callback function is not running.  Do not call these from the callback
 *  function or you will cause deadlock.
 */
/* @{ */
void SDL_LockAudio ();
void SDL_LockAudioDevice (SDL_AudioDeviceID dev);
void SDL_UnlockAudio ();
void SDL_UnlockAudioDevice (SDL_AudioDeviceID dev);
/* @} */ /* Audio lock functions */

/**
 *  This function shuts down audio processing and closes the audio device.
 */
void SDL_CloseAudio ();
void SDL_CloseAudioDevice (SDL_AudioDeviceID dev);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_audio_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_audio.h ***/

/*** Start of inlined file: SDL_clipboard.h ***/
/**
 * \file SDL_clipboard.h
 *
 * Include file for SDL clipboard handling
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* Function prototypes */

/**
 * \brief Put UTF-8 text into the clipboard
 *
 * \sa SDL_GetClipboardText()
 */
int SDL_SetClipboardText (const(char)* text);

/**
 * \brief Get UTF-8 text from the clipboard, which must be freed with SDL_free()
 *
 * \sa SDL_SetClipboardText()
 */
char* SDL_GetClipboardText ();

/**
 * \brief Returns a flag indicating whether the clipboard exists and contains a text string that is non-empty
 *
 * \sa SDL_GetClipboardText()
 */
SDL_bool SDL_HasClipboardText ();

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_clipboard_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_clipboard.h ***/

/*** Start of inlined file: SDL_cpuinfo.h ***/
/**
 *  \file SDL_cpuinfo.h
 *
 *  CPU feature detection for SDL.
 */

/* Need to do this here because intrin.h has C++ code in it */
/* Visual Studio 2005 has a bug where intrin.h conflicts with winnt.h */

/* Many of the intrinsics SDL uses are not implemented by clang with Visual Studio */

/* __clang__ */

/* HAVE_IMMINTRIN_H */
/* compiler version */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* This is a guess for the cacheline size used for padding.
 * Most x86 processors have a 64 byte cache line.
 * The 64-bit PowerPC processors have a 128 byte cache line.
 * We'll use the larger value to be generally safe.
 */

/**
 *  This function returns the number of CPU cores available.
 */
int SDL_GetCPUCount ();

/**
 *  This function returns the L1 cache line size of the CPU
 *
 *  This is useful for determining multi-threaded structure padding
 *  or SIMD prefetch sizes.
 */
int SDL_GetCPUCacheLineSize ();

/**
 *  This function returns true if the CPU has the RDTSC instruction.
 */
SDL_bool SDL_HasRDTSC ();

/**
 *  This function returns true if the CPU has AltiVec features.
 */
SDL_bool SDL_HasAltiVec ();

/**
 *  This function returns true if the CPU has MMX features.
 */
SDL_bool SDL_HasMMX ();

/**
 *  This function returns true if the CPU has 3DNow! features.
 */
SDL_bool SDL_Has3DNow ();

/**
 *  This function returns true if the CPU has SSE features.
 */
SDL_bool SDL_HasSSE ();

/**
 *  This function returns true if the CPU has SSE2 features.
 */
SDL_bool SDL_HasSSE2 ();

/**
 *  This function returns true if the CPU has SSE3 features.
 */
SDL_bool SDL_HasSSE3 ();

/**
 *  This function returns true if the CPU has SSE4.1 features.
 */
SDL_bool SDL_HasSSE41 ();

/**
 *  This function returns true if the CPU has SSE4.2 features.
 */
SDL_bool SDL_HasSSE42 ();

/**
 *  This function returns true if the CPU has AVX features.
 */
SDL_bool SDL_HasAVX ();

/**
 *  This function returns true if the CPU has AVX2 features.
 */
SDL_bool SDL_HasAVX2 ();

/**
 *  This function returns true if the CPU has AVX-512F (foundation) features.
 */
SDL_bool SDL_HasAVX512F ();

/**
 *  This function returns true if the CPU has NEON (ARM SIMD) features.
 */
SDL_bool SDL_HasNEON ();

/**
 *  This function returns the amount of RAM configured in the system, in MB.
 */
int SDL_GetSystemRAM ();

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_cpuinfo_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_cpuinfo.h ***/

/*** Start of inlined file: SDL_events.h ***/
/**
 *  \file SDL_events.h
 *
 *  Include file for SDL event handling.
 */

/*** Start of inlined file: SDL_video.h ***/
/**
 *  \file SDL_video.h
 *
 *  Header file for SDL video functions.
 */

/*** Start of inlined file: SDL_pixels.h ***/
/**
 *  \file SDL_pixels.h
 *
 *  Header for the enumerated pixel format definitions.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \name Transparency definitions
 *
 *  These define alpha as the opacity of a surface.
 */
/* @{ */

/* @} */

/** Pixel type. */
enum
{
    SDL_PIXELTYPE_UNKNOWN = 0,
    SDL_PIXELTYPE_INDEX1 = 1,
    SDL_PIXELTYPE_INDEX4 = 2,
    SDL_PIXELTYPE_INDEX8 = 3,
    SDL_PIXELTYPE_PACKED8 = 4,
    SDL_PIXELTYPE_PACKED16 = 5,
    SDL_PIXELTYPE_PACKED32 = 6,
    SDL_PIXELTYPE_ARRAYU8 = 7,
    SDL_PIXELTYPE_ARRAYU16 = 8,
    SDL_PIXELTYPE_ARRAYU32 = 9,
    SDL_PIXELTYPE_ARRAYF16 = 10,
    SDL_PIXELTYPE_ARRAYF32 = 11
}

/** Bitmap pixel order, high bit -> low bit. */
enum
{
    SDL_BITMAPORDER_NONE = 0,
    SDL_BITMAPORDER_4321 = 1,
    SDL_BITMAPORDER_1234 = 2
}

/** Packed component order, high bit -> low bit. */
enum
{
    SDL_PACKEDORDER_NONE = 0,
    SDL_PACKEDORDER_XRGB = 1,
    SDL_PACKEDORDER_RGBX = 2,
    SDL_PACKEDORDER_ARGB = 3,
    SDL_PACKEDORDER_RGBA = 4,
    SDL_PACKEDORDER_XBGR = 5,
    SDL_PACKEDORDER_BGRX = 6,
    SDL_PACKEDORDER_ABGR = 7,
    SDL_PACKEDORDER_BGRA = 8
}

/** Array component order, low byte -> high byte. */
/* !!! FIXME: in 2.1, make these not overlap differently with
   !!! FIXME:  SDL_PACKEDORDER_*, so we can simplify SDL_ISPIXELFORMAT_ALPHA */
enum
{
    SDL_ARRAYORDER_NONE = 0,
    SDL_ARRAYORDER_RGB = 1,
    SDL_ARRAYORDER_RGBA = 2,
    SDL_ARRAYORDER_ARGB = 3,
    SDL_ARRAYORDER_BGR = 4,
    SDL_ARRAYORDER_BGRA = 5,
    SDL_ARRAYORDER_ABGR = 6
}

/** Packed component layout. */
enum
{
    SDL_PACKEDLAYOUT_NONE = 0,
    SDL_PACKEDLAYOUT_332 = 1,
    SDL_PACKEDLAYOUT_4444 = 2,
    SDL_PACKEDLAYOUT_1555 = 3,
    SDL_PACKEDLAYOUT_5551 = 4,
    SDL_PACKEDLAYOUT_565 = 5,
    SDL_PACKEDLAYOUT_8888 = 6,
    SDL_PACKEDLAYOUT_2101010 = 7,
    SDL_PACKEDLAYOUT_1010102 = 8
}

/* The flag is set to 1 because 0x1? is not in the printable ASCII range */

/* Note: If you modify this list, update SDL_GetPixelFormatName() */
enum
{
    SDL_PIXELFORMAT_UNKNOWN = 0,
    SDL_PIXELFORMAT_INDEX1LSB = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_INDEX1, .SDL_BITMAPORDER_4321, 0, 1, 0),
    SDL_PIXELFORMAT_INDEX1MSB = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_INDEX1, .SDL_BITMAPORDER_1234, 0, 1, 0),
    SDL_PIXELFORMAT_INDEX4LSB = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_INDEX4, .SDL_BITMAPORDER_4321, 0, 4, 0),
    SDL_PIXELFORMAT_INDEX4MSB = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_INDEX4, .SDL_BITMAPORDER_1234, 0, 4, 0),
    SDL_PIXELFORMAT_INDEX8 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_INDEX8, 0, 0, 8, 1),
    SDL_PIXELFORMAT_RGB332 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED8, .SDL_PACKEDORDER_XRGB, .SDL_PACKEDLAYOUT_332, 8, 1),
    SDL_PIXELFORMAT_RGB444 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_XRGB, .SDL_PACKEDLAYOUT_4444, 12, 2),
    SDL_PIXELFORMAT_RGB555 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_XRGB, .SDL_PACKEDLAYOUT_1555, 15, 2),
    SDL_PIXELFORMAT_BGR555 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_XBGR, .SDL_PACKEDLAYOUT_1555, 15, 2),
    SDL_PIXELFORMAT_ARGB4444 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_ARGB, .SDL_PACKEDLAYOUT_4444, 16, 2),
    SDL_PIXELFORMAT_RGBA4444 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_RGBA, .SDL_PACKEDLAYOUT_4444, 16, 2),
    SDL_PIXELFORMAT_ABGR4444 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_ABGR, .SDL_PACKEDLAYOUT_4444, 16, 2),
    SDL_PIXELFORMAT_BGRA4444 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_BGRA, .SDL_PACKEDLAYOUT_4444, 16, 2),
    SDL_PIXELFORMAT_ARGB1555 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_ARGB, .SDL_PACKEDLAYOUT_1555, 16, 2),
    SDL_PIXELFORMAT_RGBA5551 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_RGBA, .SDL_PACKEDLAYOUT_5551, 16, 2),
    SDL_PIXELFORMAT_ABGR1555 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_ABGR, .SDL_PACKEDLAYOUT_1555, 16, 2),
    SDL_PIXELFORMAT_BGRA5551 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_BGRA, .SDL_PACKEDLAYOUT_5551, 16, 2),
    SDL_PIXELFORMAT_RGB565 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_XRGB, .SDL_PACKEDLAYOUT_565, 16, 2),
    SDL_PIXELFORMAT_BGR565 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED16, .SDL_PACKEDORDER_XBGR, .SDL_PACKEDLAYOUT_565, 16, 2),
    SDL_PIXELFORMAT_RGB24 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_ARRAYU8, .SDL_ARRAYORDER_RGB, 0, 24, 3),
    SDL_PIXELFORMAT_BGR24 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_ARRAYU8, .SDL_ARRAYORDER_BGR, 0, 24, 3),
    SDL_PIXELFORMAT_RGB888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_XRGB, .SDL_PACKEDLAYOUT_8888, 24, 4),
    SDL_PIXELFORMAT_RGBX8888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_RGBX, .SDL_PACKEDLAYOUT_8888, 24, 4),
    SDL_PIXELFORMAT_BGR888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_XBGR, .SDL_PACKEDLAYOUT_8888, 24, 4),
    SDL_PIXELFORMAT_BGRX8888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_BGRX, .SDL_PACKEDLAYOUT_8888, 24, 4),
    SDL_PIXELFORMAT_ARGB8888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_ARGB, .SDL_PACKEDLAYOUT_8888, 32, 4),
    SDL_PIXELFORMAT_RGBA8888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_RGBA, .SDL_PACKEDLAYOUT_8888, 32, 4),
    SDL_PIXELFORMAT_ABGR8888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_ABGR, .SDL_PACKEDLAYOUT_8888, 32, 4),
    SDL_PIXELFORMAT_BGRA8888 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_BGRA, .SDL_PACKEDLAYOUT_8888, 32, 4),
    SDL_PIXELFORMAT_ARGB2101010 = SDL_DEFINE_PIXELFORMAT(.SDL_PIXELTYPE_PACKED32, .SDL_PACKEDORDER_ARGB, .SDL_PACKEDLAYOUT_2101010, 32, 4),

    /* Aliases for RGBA byte arrays of color data, for the current platform */

    SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888,
    SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888,
    SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888,
    SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888,

    /**< Planar mode: Y + V + U  (3 planes) */
    SDL_PIXELFORMAT_YV12 = 842094169,
    /**< Planar mode: Y + U + V  (3 planes) */
    SDL_PIXELFORMAT_IYUV = 1448433993,
    /**< Packed mode: Y0+U0+Y1+V0 (1 plane) */
    SDL_PIXELFORMAT_YUY2 = 844715353,
    /**< Packed mode: U0+Y0+V0+Y1 (1 plane) */
    SDL_PIXELFORMAT_UYVY = 1498831189,
    /**< Packed mode: Y0+V0+Y1+U0 (1 plane) */
    SDL_PIXELFORMAT_YVYU = 1431918169,
    /**< Planar mode: Y + U/V interleaved  (2 planes) */
    SDL_PIXELFORMAT_NV12 = 842094158,
    /**< Planar mode: Y + V/U interleaved  (2 planes) */
    SDL_PIXELFORMAT_NV21 = 825382478,
    /**< Android video texture format */
    SDL_PIXELFORMAT_EXTERNAL_OES = 542328143
}

struct SDL_Color
{
    Uint8 r;
    Uint8 g;
    Uint8 b;
    Uint8 a;
}

struct SDL_Palette
{
    int ncolors;
    SDL_Color* colors;
    Uint32 version_;
    int refcount;
}

/**
 *  \note Everything in the pixel format structure is read-only.
 */
struct SDL_PixelFormat
{
    Uint32 format;
    SDL_Palette* palette;
    Uint8 BitsPerPixel;
    Uint8 BytesPerPixel;
    Uint8[2] padding;
    Uint32 Rmask;
    Uint32 Gmask;
    Uint32 Bmask;
    Uint32 Amask;
    Uint8 Rloss;
    Uint8 Gloss;
    Uint8 Bloss;
    Uint8 Aloss;
    Uint8 Rshift;
    Uint8 Gshift;
    Uint8 Bshift;
    Uint8 Ashift;
    int refcount;
    SDL_PixelFormat* next;
}

/**
 * \brief Get the human readable name of a pixel format
 */
const(char)* SDL_GetPixelFormatName (Uint32 format);

/**
 *  \brief Convert one of the enumerated pixel formats to a bpp and RGBA masks.
 *
 *  \return SDL_TRUE, or SDL_FALSE if the conversion wasn't possible.
 *
 *  \sa SDL_MasksToPixelFormatEnum()
 */
SDL_bool SDL_PixelFormatEnumToMasks (
    Uint32 format,
    int* bpp,
    Uint32* Rmask,
    Uint32* Gmask,
    Uint32* Bmask,
    Uint32* Amask);

/**
 *  \brief Convert a bpp and RGBA masks to an enumerated pixel format.
 *
 *  \return The pixel format, or ::SDL_PIXELFORMAT_UNKNOWN if the conversion
 *          wasn't possible.
 *
 *  \sa SDL_PixelFormatEnumToMasks()
 */
Uint32 SDL_MasksToPixelFormatEnum (
    int bpp,
    Uint32 Rmask,
    Uint32 Gmask,
    Uint32 Bmask,
    Uint32 Amask);

/**
 *  \brief Create an SDL_PixelFormat structure from a pixel format enum.
 */
SDL_PixelFormat* SDL_AllocFormat (Uint32 pixel_format);

/**
 *  \brief Free an SDL_PixelFormat structure.
 */
void SDL_FreeFormat (SDL_PixelFormat* format);

/**
 *  \brief Create a palette structure with the specified number of color
 *         entries.
 *
 *  \return A new palette, or NULL if there wasn't enough memory.
 *
 *  \note The palette entries are initialized to white.
 *
 *  \sa SDL_FreePalette()
 */
SDL_Palette* SDL_AllocPalette (int ncolors);

/**
 *  \brief Set the palette for a pixel format structure.
 */
int SDL_SetPixelFormatPalette (SDL_PixelFormat* format, SDL_Palette* palette);

/**
 *  \brief Set a range of colors in a palette.
 *
 *  \param palette    The palette to modify.
 *  \param colors     An array of colors to copy into the palette.
 *  \param firstcolor The index of the first palette entry to modify.
 *  \param ncolors    The number of entries to modify.
 *
 *  \return 0 on success, or -1 if not all of the colors could be set.
 */
int SDL_SetPaletteColors (
    SDL_Palette* palette,
    const(SDL_Color)* colors,
    int firstcolor,
    int ncolors);

/**
 *  \brief Free a palette created with SDL_AllocPalette().
 *
 *  \sa SDL_AllocPalette()
 */
void SDL_FreePalette (SDL_Palette* palette);

/**
 *  \brief Maps an RGB triple to an opaque pixel value for a given pixel format.
 *
 *  \sa SDL_MapRGBA
 */
Uint32 SDL_MapRGB (const(SDL_PixelFormat)* format, Uint8 r, Uint8 g, Uint8 b);

/**
 *  \brief Maps an RGBA quadruple to a pixel value for a given pixel format.
 *
 *  \sa SDL_MapRGB
 */
Uint32 SDL_MapRGBA (
    const(SDL_PixelFormat)* format,
    Uint8 r,
    Uint8 g,
    Uint8 b,
    Uint8 a);

/**
 *  \brief Get the RGB components from a pixel of the specified format.
 *
 *  \sa SDL_GetRGBA
 */
void SDL_GetRGB (
    Uint32 pixel,
    const(SDL_PixelFormat)* format,
    Uint8* r,
    Uint8* g,
    Uint8* b);

/**
 *  \brief Get the RGBA components from a pixel of the specified format.
 *
 *  \sa SDL_GetRGB
 */
void SDL_GetRGBA (
    Uint32 pixel,
    const(SDL_PixelFormat)* format,
    Uint8* r,
    Uint8* g,
    Uint8* b,
    Uint8* a);

/**
 *  \brief Calculate a 256 entry gamma ramp for a gamma value.
 */
void SDL_CalculateGammaRamp (float gamma, Uint16* ramp);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_pixels_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_pixels.h ***/

/*** Start of inlined file: SDL_rect.h ***/
/**
 *  \file SDL_rect.h
 *
 *  Header file for SDL_rect definition and management functions.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief  The structure that defines a point
 *
 *  \sa SDL_EnclosePoints
 *  \sa SDL_PointInRect
 */
struct SDL_Point
{
    int x;
    int y;
}

/**
 *  \brief A rectangle, with the origin at the upper left.
 *
 *  \sa SDL_RectEmpty
 *  \sa SDL_RectEquals
 *  \sa SDL_HasIntersection
 *  \sa SDL_IntersectRect
 *  \sa SDL_UnionRect
 *  \sa SDL_EnclosePoints
 */
struct SDL_Rect
{
    int x;
    int y;
    int w;
    int h;
}

/**
 *  \brief Returns true if point resides inside a rectangle.
 */
SDL_bool SDL_PointInRect (const(SDL_Point)* p, const(SDL_Rect)* r);

/**
 *  \brief Returns true if the rectangle has no area.
 */
SDL_bool SDL_RectEmpty (const(SDL_Rect)* r);

/**
 *  \brief Returns true if the two rectangles are equal.
 */
SDL_bool SDL_RectEquals (const(SDL_Rect)* a, const(SDL_Rect)* b);

/**
 *  \brief Determine whether two rectangles intersect.
 *
 *  \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
 */
SDL_bool SDL_HasIntersection (const(SDL_Rect)* A, const(SDL_Rect)* B);

/**
 *  \brief Calculate the intersection of two rectangles.
 *
 *  \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
 */
SDL_bool SDL_IntersectRect (
    const(SDL_Rect)* A,
    const(SDL_Rect)* B,
    SDL_Rect* result);

/**
 *  \brief Calculate the union of two rectangles.
 */
void SDL_UnionRect (const(SDL_Rect)* A, const(SDL_Rect)* B, SDL_Rect* result);

/**
 *  \brief Calculate a minimal rectangle enclosing a set of points
 *
 *  \return SDL_TRUE if any points were within the clipping rect
 */
SDL_bool SDL_EnclosePoints (
    const(SDL_Point)* points,
    int count,
    const(SDL_Rect)* clip,
    SDL_Rect* result);

/**
 *  \brief Calculate the intersection of a rectangle and line segment.
 *
 *  \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
 */
SDL_bool SDL_IntersectRectAndLine (
    const(SDL_Rect)* rect,
    int* X1,
    int* Y1,
    int* X2,
    int* Y2);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_rect_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_rect.h ***/

/*** Start of inlined file: SDL_surface.h ***/
/**
 *  \file SDL_surface.h
 *
 *  Header file for ::SDL_Surface definition and management functions.
 */

/*** Start of inlined file: SDL_blendmode.h ***/
/**
 *  \file SDL_blendmode.h
 *
 *  Header file declaring the SDL_BlendMode enumeration
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief The blend mode used in SDL_RenderCopy() and drawing operations.
 */
enum SDL_BlendMode
{
    SDL_BLENDMODE_NONE = 0x00000000, /**< no blending
    											  dstRGBA = srcRGBA */
    SDL_BLENDMODE_BLEND = 0x00000001, /**< alpha blending
    											  dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
    											  dstA = srcA + (dstA * (1-srcA)) */
    SDL_BLENDMODE_ADD = 0x00000002, /**< additive blending
    											  dstRGB = (srcRGB * srcA) + dstRGB
    											  dstA = dstA */
    SDL_BLENDMODE_MOD = 0x00000004, /**< color modulate
    											  dstRGB = srcRGB * dstRGB
    											  dstA = dstA */
    SDL_BLENDMODE_INVALID = 0x7FFFFFFF

    /* Additional custom blend modes can be returned by SDL_ComposeCustomBlendMode() */
}

/**
 *  \brief The blend operation used when combining source and destination pixel components
 */
enum SDL_BlendOperation
{
    SDL_BLENDOPERATION_ADD = 0x1, /**< dst + src: supported by all renderers */
    SDL_BLENDOPERATION_SUBTRACT = 0x2, /**< dst - src : supported by D3D9, D3D11, OpenGL, OpenGLES */
    SDL_BLENDOPERATION_REV_SUBTRACT = 0x3, /**< src - dst : supported by D3D9, D3D11, OpenGL, OpenGLES */
    SDL_BLENDOPERATION_MINIMUM = 0x4, /**< min(dst, src) : supported by D3D11 */
    SDL_BLENDOPERATION_MAXIMUM = 0x5 /**< max(dst, src) : supported by D3D11 */
}

/**
 *  \brief The normalized factor used to multiply pixel components
 */
enum SDL_BlendFactor
{
    SDL_BLENDFACTOR_ZERO = 0x1, /**< 0, 0, 0, 0 */
    SDL_BLENDFACTOR_ONE = 0x2, /**< 1, 1, 1, 1 */
    SDL_BLENDFACTOR_SRC_COLOR = 0x3, /**< srcR, srcG, srcB, srcA */
    SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4, /**< 1-srcR, 1-srcG, 1-srcB, 1-srcA */
    SDL_BLENDFACTOR_SRC_ALPHA = 0x5, /**< srcA, srcA, srcA, srcA */
    SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6, /**< 1-srcA, 1-srcA, 1-srcA, 1-srcA */
    SDL_BLENDFACTOR_DST_COLOR = 0x7, /**< dstR, dstG, dstB, dstA */
    SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8, /**< 1-dstR, 1-dstG, 1-dstB, 1-dstA */
    SDL_BLENDFACTOR_DST_ALPHA = 0x9, /**< dstA, dstA, dstA, dstA */
    SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA /**< 1-dstA, 1-dstA, 1-dstA, 1-dstA */
}

/**
 *  \brief Create a custom blend mode, which may or may not be supported by a given renderer
 *
 *  \param srcColorFactor
 *  \param dstColorFactor
 *  \param colorOperation
 *  \param srcAlphaFactor
 *  \param dstAlphaFactor
 *  \param alphaOperation
 *
 *  The result of the blend mode operation will be:
 *      dstRGB = dstRGB * dstColorFactor colorOperation srcRGB * srcColorFactor
 *  and
 *      dstA = dstA * dstAlphaFactor alphaOperation srcA * srcAlphaFactor
 */
SDL_BlendMode SDL_ComposeCustomBlendMode (
    SDL_BlendFactor srcColorFactor,
    SDL_BlendFactor dstColorFactor,
    SDL_BlendOperation colorOperation,
    SDL_BlendFactor srcAlphaFactor,
    SDL_BlendFactor dstAlphaFactor,
    SDL_BlendOperation alphaOperation);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_blendmode_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_blendmode.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \name Surface flags
 *
 *  These are the currently supported flags for the ::SDL_Surface.
 *
 *  \internal
 *  Used internally (read-only).
 */
/* @{ */
/**< Just here for compatibility */
/**< Surface uses preallocated memory */
/**< Surface is RLE encoded */
/**< Surface is referenced internally */
/* @} */ /* Surface flags */

/**
 *  Evaluates to true if the surface needs to be locked before access.
 */

/**
 * \brief A collection of pixels used in software blitting.
 *
 * \note  This structure should be treated as read-only, except for \c pixels,
 *        which, if not NULL, contains the raw pixel data for the surface.
 */
struct SDL_Surface
{
    Uint32 flags; /**< Read-only */
    SDL_PixelFormat* format; /**< Read-only */
    int w;
    int h; /**< Read-only */
    int pitch; /**< Read-only */
    void* pixels; /**< Read-write */

    /** Application data associated with the surface */
    void* userdata; /**< Read-write */

    /** information needed for surfaces requiring locks */
    int locked; /**< Read-only */
    void* lock_data; /**< Read-only */

    /** clipping information */
    SDL_Rect clip_rect; /**< Read-only */

    /** info for fast blit mapping to other surfaces */
    struct SDL_BlitMap;
    SDL_BlitMap* map; /**< Private */

    /** Reference count -- used when freeing surface */
    int refcount; /**< Read-mostly */
}

/**
 * \brief The type of function used for surface blitting functions.
 */
alias SDL_blit = int function (
    SDL_Surface* src,
    SDL_Rect* srcrect,
    SDL_Surface* dst,
    SDL_Rect* dstrect);

/**
 * \brief The formula used for converting between YUV and RGB
 */
enum SDL_YUV_CONVERSION_MODE
{
    SDL_YUV_CONVERSION_JPEG = 0, /**< Full range JPEG */
    SDL_YUV_CONVERSION_BT601 = 1, /**< BT.601 (the default) */
    SDL_YUV_CONVERSION_BT709 = 2, /**< BT.709 */
    SDL_YUV_CONVERSION_AUTOMATIC = 3 /**< BT.601 for SD content, BT.709 for HD content */
}

/**
 *  Allocate and free an RGB surface.
 *
 *  If the depth is 4 or 8 bits, an empty palette is allocated for the surface.
 *  If the depth is greater than 8 bits, the pixel format is set using the
 *  flags '[RGB]mask'.
 *
 *  If the function runs out of memory, it will return NULL.
 *
 *  \param flags The \c flags are obsolete and should be set to 0.
 *  \param width The width in pixels of the surface to create.
 *  \param height The height in pixels of the surface to create.
 *  \param depth The depth in bits of the surface to create.
 *  \param Rmask The red mask of the surface to create.
 *  \param Gmask The green mask of the surface to create.
 *  \param Bmask The blue mask of the surface to create.
 *  \param Amask The alpha mask of the surface to create.
 */
SDL_Surface* SDL_CreateRGBSurface (
    Uint32 flags,
    int width,
    int height,
    int depth,
    Uint32 Rmask,
    Uint32 Gmask,
    Uint32 Bmask,
    Uint32 Amask);

/* !!! FIXME for 2.1: why does this ask for depth? Format provides that. */
SDL_Surface* SDL_CreateRGBSurfaceWithFormat (
    Uint32 flags,
    int width,
    int height,
    int depth,
    Uint32 format);

SDL_Surface* SDL_CreateRGBSurfaceFrom (
    void* pixels,
    int width,
    int height,
    int depth,
    int pitch,
    Uint32 Rmask,
    Uint32 Gmask,
    Uint32 Bmask,
    Uint32 Amask);
SDL_Surface* SDL_CreateRGBSurfaceWithFormatFrom (
    void* pixels,
    int width,
    int height,
    int depth,
    int pitch,
    Uint32 format);
void SDL_FreeSurface (SDL_Surface* surface);

/**
 *  \brief Set the palette used by a surface.
 *
 *  \return 0, or -1 if the surface format doesn't use a palette.
 *
 *  \note A single palette can be shared with many surfaces.
 */
int SDL_SetSurfacePalette (SDL_Surface* surface, SDL_Palette* palette);

/**
 *  \brief Sets up a surface for directly accessing the pixels.
 *
 *  Between calls to SDL_LockSurface() / SDL_UnlockSurface(), you can write
 *  to and read from \c surface->pixels, using the pixel format stored in
 *  \c surface->format.  Once you are done accessing the surface, you should
 *  use SDL_UnlockSurface() to release it.
 *
 *  Not all surfaces require locking.  If SDL_MUSTLOCK(surface) evaluates
 *  to 0, then you can read and write to the surface at any time, and the
 *  pixel format of the surface will not change.
 *
 *  No operating system or library calls should be made between lock/unlock
 *  pairs, as critical system locks may be held during this time.
 *
 *  SDL_LockSurface() returns 0, or -1 if the surface couldn't be locked.
 *
 *  \sa SDL_UnlockSurface()
 */
int SDL_LockSurface (SDL_Surface* surface);
/** \sa SDL_LockSurface() */
void SDL_UnlockSurface (SDL_Surface* surface);

/**
 *  Load a surface from a seekable SDL data stream (memory or file).
 *
 *  If \c freesrc is non-zero, the stream will be closed after being read.
 *
 *  The new surface should be freed with SDL_FreeSurface().
 *
 *  \return the new surface, or NULL if there was an error.
 */
SDL_Surface* SDL_LoadBMP_RW (SDL_RWops* src, int freesrc);

/**
 *  Load a surface from a file.
 *
 *  Convenience macro.
 */

/**
 *  Save a surface to a seekable SDL data stream (memory or file).
 *
 *  Surfaces with a 24-bit, 32-bit and paletted 8-bit format get saved in the
 *  BMP directly. Other RGB formats with 8-bit or higher get converted to a
 *  24-bit surface or, if they have an alpha mask or a colorkey, to a 32-bit
 *  surface before they are saved. YUV and paletted 1-bit and 4-bit formats are
 *  not supported.
 *
 *  If \c freedst is non-zero, the stream will be closed after being written.
 *
 *  \return 0 if successful or -1 if there was an error.
 */
int SDL_SaveBMP_RW (SDL_Surface* surface, SDL_RWops* dst, int freedst);

/**
 *  Save a surface to a file.
 *
 *  Convenience macro.
 */

/**
 *  \brief Sets the RLE acceleration hint for a surface.
 *
 *  \return 0 on success, or -1 if the surface is not valid
 *
 *  \note If RLE is enabled, colorkey and alpha blending blits are much faster,
 *        but the surface must be locked before directly accessing the pixels.
 */
int SDL_SetSurfaceRLE (SDL_Surface* surface, int flag);

/**
 *  \brief Sets the color key (transparent pixel) in a blittable surface.
 *
 *  \param surface The surface to update
 *  \param flag Non-zero to enable colorkey and 0 to disable colorkey
 *  \param key The transparent pixel in the native surface format
 *
 *  \return 0 on success, or -1 if the surface is not valid
 *
 *  You can pass SDL_RLEACCEL to enable RLE accelerated blits.
 */
int SDL_SetColorKey (SDL_Surface* surface, int flag, Uint32 key);

/**
 *  \brief Returns whether the surface has a color key
 *
 *  \return SDL_TRUE if the surface has a color key, or SDL_FALSE if the surface is NULL or has no color key
 */
SDL_bool SDL_HasColorKey (SDL_Surface* surface);

/**
 *  \brief Gets the color key (transparent pixel) in a blittable surface.
 *
 *  \param surface The surface to update
 *  \param key A pointer filled in with the transparent pixel in the native
 *             surface format
 *
 *  \return 0 on success, or -1 if the surface is not valid or colorkey is not
 *          enabled.
 */
int SDL_GetColorKey (SDL_Surface* surface, Uint32* key);

/**
 *  \brief Set an additional color value used in blit operations.
 *
 *  \param surface The surface to update.
 *  \param r The red color value multiplied into blit operations.
 *  \param g The green color value multiplied into blit operations.
 *  \param b The blue color value multiplied into blit operations.
 *
 *  \return 0 on success, or -1 if the surface is not valid.
 *
 *  \sa SDL_GetSurfaceColorMod()
 */
int SDL_SetSurfaceColorMod (SDL_Surface* surface, Uint8 r, Uint8 g, Uint8 b);

/**
 *  \brief Get the additional color value used in blit operations.
 *
 *  \param surface The surface to query.
 *  \param r A pointer filled in with the current red color value.
 *  \param g A pointer filled in with the current green color value.
 *  \param b A pointer filled in with the current blue color value.
 *
 *  \return 0 on success, or -1 if the surface is not valid.
 *
 *  \sa SDL_SetSurfaceColorMod()
 */
int SDL_GetSurfaceColorMod (SDL_Surface* surface, Uint8* r, Uint8* g, Uint8* b);

/**
 *  \brief Set an additional alpha value used in blit operations.
 *
 *  \param surface The surface to update.
 *  \param alpha The alpha value multiplied into blit operations.
 *
 *  \return 0 on success, or -1 if the surface is not valid.
 *
 *  \sa SDL_GetSurfaceAlphaMod()
 */
int SDL_SetSurfaceAlphaMod (SDL_Surface* surface, Uint8 alpha);

/**
 *  \brief Get the additional alpha value used in blit operations.
 *
 *  \param surface The surface to query.
 *  \param alpha A pointer filled in with the current alpha value.
 *
 *  \return 0 on success, or -1 if the surface is not valid.
 *
 *  \sa SDL_SetSurfaceAlphaMod()
 */
int SDL_GetSurfaceAlphaMod (SDL_Surface* surface, Uint8* alpha);

/**
 *  \brief Set the blend mode used for blit operations.
 *
 *  \param surface The surface to update.
 *  \param blendMode ::SDL_BlendMode to use for blit blending.
 *
 *  \return 0 on success, or -1 if the parameters are not valid.
 *
 *  \sa SDL_GetSurfaceBlendMode()
 */
int SDL_SetSurfaceBlendMode (SDL_Surface* surface, SDL_BlendMode blendMode);

/**
 *  \brief Get the blend mode used for blit operations.
 *
 *  \param surface   The surface to query.
 *  \param blendMode A pointer filled in with the current blend mode.
 *
 *  \return 0 on success, or -1 if the surface is not valid.
 *
 *  \sa SDL_SetSurfaceBlendMode()
 */
int SDL_GetSurfaceBlendMode (SDL_Surface* surface, SDL_BlendMode* blendMode);

/**
 *  Sets the clipping rectangle for the destination surface in a blit.
 *
 *  If the clip rectangle is NULL, clipping will be disabled.
 *
 *  If the clip rectangle doesn't intersect the surface, the function will
 *  return SDL_FALSE and blits will be completely clipped.  Otherwise the
 *  function returns SDL_TRUE and blits to the surface will be clipped to
 *  the intersection of the surface area and the clipping rectangle.
 *
 *  Note that blits are automatically clipped to the edges of the source
 *  and destination surfaces.
 */
SDL_bool SDL_SetClipRect (SDL_Surface* surface, const(SDL_Rect)* rect);

/**
 *  Gets the clipping rectangle for the destination surface in a blit.
 *
 *  \c rect must be a pointer to a valid rectangle which will be filled
 *  with the correct values.
 */
void SDL_GetClipRect (SDL_Surface* surface, SDL_Rect* rect);

/*
 * Creates a new surface identical to the existing surface
 */
SDL_Surface* SDL_DuplicateSurface (SDL_Surface* surface);

/**
 *  Creates a new surface of the specified format, and then copies and maps
 *  the given surface to it so the blit of the converted surface will be as
 *  fast as possible.  If this function fails, it returns NULL.
 *
 *  The \c flags parameter is passed to SDL_CreateRGBSurface() and has those
 *  semantics.  You can also pass ::SDL_RLEACCEL in the flags parameter and
 *  SDL will try to RLE accelerate colorkey and alpha blits in the resulting
 *  surface.
 */
SDL_Surface* SDL_ConvertSurface (
    SDL_Surface* src,
    const(SDL_PixelFormat)* fmt,
    Uint32 flags);
SDL_Surface* SDL_ConvertSurfaceFormat (
    SDL_Surface* src,
    Uint32 pixel_format,
    Uint32 flags);

/**
 * \brief Copy a block of pixels of one format to another format
 *
 *  \return 0 on success, or -1 if there was an error
 */
int SDL_ConvertPixels (
    int width,
    int height,
    Uint32 src_format,
    const(void)* src,
    int src_pitch,
    Uint32 dst_format,
    void* dst,
    int dst_pitch);

/**
 *  Performs a fast fill of the given rectangle with \c color.
 *
 *  If \c rect is NULL, the whole surface will be filled with \c color.
 *
 *  The color should be a pixel of the format used by the surface, and
 *  can be generated by the SDL_MapRGB() function.
 *
 *  \return 0 on success, or -1 on error.
 */
int SDL_FillRect (SDL_Surface* dst, const(SDL_Rect)* rect, Uint32 color);
int SDL_FillRects (
    SDL_Surface* dst,
    const(SDL_Rect)* rects,
    int count,
    Uint32 color);

/**
 *  Performs a fast blit from the source surface to the destination surface.
 *
 *  This assumes that the source and destination rectangles are
 *  the same size.  If either \c srcrect or \c dstrect are NULL, the entire
 *  surface (\c src or \c dst) is copied.  The final blit rectangles are saved
 *  in \c srcrect and \c dstrect after all clipping is performed.
 *
 *  \return If the blit is successful, it returns 0, otherwise it returns -1.
 *
 *  The blit function should not be called on a locked surface.
 *
 *  The blit semantics for surfaces with and without blending and colorkey
 *  are defined as follows:
 *  \verbatim
	RGBA->RGB:
	  Source surface blend mode set to SDL_BLENDMODE_BLEND:
		alpha-blend (using the source alpha-channel and per-surface alpha)
		SDL_SRCCOLORKEY ignored.
	  Source surface blend mode set to SDL_BLENDMODE_NONE:
		copy RGB.
		if SDL_SRCCOLORKEY set, only copy the pixels matching the
		RGB values of the source color key, ignoring alpha in the
		comparison.

	RGB->RGBA:
	  Source surface blend mode set to SDL_BLENDMODE_BLEND:
		alpha-blend (using the source per-surface alpha)
	  Source surface blend mode set to SDL_BLENDMODE_NONE:
		copy RGB, set destination alpha to source per-surface alpha value.
	  both:
		if SDL_SRCCOLORKEY set, only copy the pixels matching the
		source color key.

	RGBA->RGBA:
	  Source surface blend mode set to SDL_BLENDMODE_BLEND:
		alpha-blend (using the source alpha-channel and per-surface alpha)
		SDL_SRCCOLORKEY ignored.
	  Source surface blend mode set to SDL_BLENDMODE_NONE:
		copy all of RGBA to the destination.
		if SDL_SRCCOLORKEY set, only copy the pixels matching the
		RGB values of the source color key, ignoring alpha in the
		comparison.

	RGB->RGB:
	  Source surface blend mode set to SDL_BLENDMODE_BLEND:
		alpha-blend (using the source per-surface alpha)
	  Source surface blend mode set to SDL_BLENDMODE_NONE:
		copy RGB.
	  both:
		if SDL_SRCCOLORKEY set, only copy the pixels matching the
		source color key.
	\endverbatim
 *
 *  You should call SDL_BlitSurface() unless you know exactly how SDL
 *  blitting works internally and how to use the other blit functions.
 */

/**
 *  This is the public blit function, SDL_BlitSurface(), and it performs
 *  rectangle validation and clipping before passing it to SDL_LowerBlit()
 */
int SDL_UpperBlit (
    SDL_Surface* src,
    const(SDL_Rect)* srcrect,
    SDL_Surface* dst,
    SDL_Rect* dstrect);

/**
 *  This is a semi-private blit function and it performs low-level surface
 *  blitting only.
 */
int SDL_LowerBlit (
    SDL_Surface* src,
    SDL_Rect* srcrect,
    SDL_Surface* dst,
    SDL_Rect* dstrect);

/**
 *  \brief Perform a fast, low quality, stretch blit between two surfaces of the
 *         same pixel format.
 *
 *  \note This function uses a static buffer, and is not thread-safe.
 */
int SDL_SoftStretch (
    SDL_Surface* src,
    const(SDL_Rect)* srcrect,
    SDL_Surface* dst,
    const(SDL_Rect)* dstrect);

/**
 *  This is the public scaled blit function, SDL_BlitScaled(), and it performs
 *  rectangle validation and clipping before passing it to SDL_LowerBlitScaled()
 */
int SDL_UpperBlitScaled (
    SDL_Surface* src,
    const(SDL_Rect)* srcrect,
    SDL_Surface* dst,
    SDL_Rect* dstrect);

/**
 *  This is a semi-private blit function and it performs low-level surface
 *  scaled blitting only.
 */
int SDL_LowerBlitScaled (
    SDL_Surface* src,
    SDL_Rect* srcrect,
    SDL_Surface* dst,
    SDL_Rect* dstrect);

/**
 *  \brief Set the YUV conversion mode
 */
void SDL_SetYUVConversionMode (SDL_YUV_CONVERSION_MODE mode);

/**
 *  \brief Get the YUV conversion mode
 */
SDL_YUV_CONVERSION_MODE SDL_GetYUVConversionMode ();

/**
 *  \brief Get the YUV conversion mode, returning the correct mode for the resolution when the current conversion mode is SDL_YUV_CONVERSION_AUTOMATIC
 */
SDL_YUV_CONVERSION_MODE SDL_GetYUVConversionModeForResolution (int width, int height);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_surface_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_surface.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief  The structure that defines a display mode
 *
 *  \sa SDL_GetNumDisplayModes()
 *  \sa SDL_GetDisplayMode()
 *  \sa SDL_GetDesktopDisplayMode()
 *  \sa SDL_GetCurrentDisplayMode()
 *  \sa SDL_GetClosestDisplayMode()
 *  \sa SDL_SetWindowDisplayMode()
 *  \sa SDL_GetWindowDisplayMode()
 */
struct SDL_DisplayMode
{
    Uint32 format; /**< pixel format */
    int w; /**< width, in screen coordinates */
    int h; /**< height, in screen coordinates */
    int refresh_rate; /**< refresh rate (or zero for unspecified) */
    void* driverdata; /**< driver-specific data, initialize to 0 */
}

/**
 *  \brief The type used to identify a window
 *
 *  \sa SDL_CreateWindow()
 *  \sa SDL_CreateWindowFrom()
 *  \sa SDL_DestroyWindow()
 *  \sa SDL_GetWindowData()
 *  \sa SDL_GetWindowFlags()
 *  \sa SDL_GetWindowGrab()
 *  \sa SDL_GetWindowPosition()
 *  \sa SDL_GetWindowSize()
 *  \sa SDL_GetWindowTitle()
 *  \sa SDL_HideWindow()
 *  \sa SDL_MaximizeWindow()
 *  \sa SDL_MinimizeWindow()
 *  \sa SDL_RaiseWindow()
 *  \sa SDL_RestoreWindow()
 *  \sa SDL_SetWindowData()
 *  \sa SDL_SetWindowFullscreen()
 *  \sa SDL_SetWindowGrab()
 *  \sa SDL_SetWindowIcon()
 *  \sa SDL_SetWindowPosition()
 *  \sa SDL_SetWindowSize()
 *  \sa SDL_SetWindowBordered()
 *  \sa SDL_SetWindowResizable()
 *  \sa SDL_SetWindowTitle()
 *  \sa SDL_ShowWindow()
 */
struct SDL_Window;

/**
 *  \brief The flags on a window
 *
 *  \sa SDL_GetWindowFlags()
 */
enum SDL_WindowFlags
{
    /* !!! FIXME: change this to name = (1<<x). */
    SDL_WINDOW_FULLSCREEN = 0x00000001, /**< fullscreen window */
    SDL_WINDOW_OPENGL = 0x00000002, /**< window usable with OpenGL context */
    SDL_WINDOW_SHOWN = 0x00000004, /**< window is visible */
    SDL_WINDOW_HIDDEN = 0x00000008, /**< window is not visible */
    SDL_WINDOW_BORDERLESS = 0x00000010, /**< no window decoration */
    SDL_WINDOW_RESIZABLE = 0x00000020, /**< window can be resized */
    SDL_WINDOW_MINIMIZED = 0x00000040, /**< window is minimized */
    SDL_WINDOW_MAXIMIZED = 0x00000080, /**< window is maximized */
    SDL_WINDOW_INPUT_GRABBED = 0x00000100, /**< window has grabbed input focus */
    SDL_WINDOW_INPUT_FOCUS = 0x00000200, /**< window has input focus */
    SDL_WINDOW_MOUSE_FOCUS = 0x00000400, /**< window has mouse focus */
    SDL_WINDOW_FULLSCREEN_DESKTOP = SDL_WINDOW_FULLSCREEN | 0x00001000,
    SDL_WINDOW_FOREIGN = 0x00000800, /**< window not created by SDL */
    SDL_WINDOW_ALLOW_HIGHDPI = 0x00002000, /**< window should be created in high-DPI mode if supported.
    													 On macOS NSHighResolutionCapable must be set true in the
    													 application's Info.plist for this to have any effect. */
    SDL_WINDOW_MOUSE_CAPTURE = 0x00004000, /**< window has mouse captured (unrelated to INPUT_GRABBED) */
    SDL_WINDOW_ALWAYS_ON_TOP = 0x00008000, /**< window should always be above others */
    SDL_WINDOW_SKIP_TASKBAR = 0x00010000, /**< window should not be added to the taskbar */
    SDL_WINDOW_UTILITY = 0x00020000, /**< window should be treated as a utility window */
    SDL_WINDOW_TOOLTIP = 0x00040000, /**< window should be treated as a tooltip */
    SDL_WINDOW_POPUP_MENU = 0x00080000, /**< window should be treated as a popup menu */
    SDL_WINDOW_VULKAN = 0x10000000 /**< window usable for Vulkan surface */
}

enum SDL_WINDOW_FULLSCREEN = SDL_WindowFlags.SDL_WINDOW_FULLSCREEN;
enum SDL_WINDOW_OPENGL = SDL_WindowFlags.SDL_WINDOW_OPENGL;
enum SDL_WINDOW_SHOWN = SDL_WindowFlags.SDL_WINDOW_SHOWN;
enum SDL_WINDOW_HIDDEN = SDL_WindowFlags.SDL_WINDOW_HIDDEN;
enum SDL_WINDOW_BORDERLESS = SDL_WindowFlags.SDL_WINDOW_BORDERLESS;
enum SDL_WINDOW_RESIZABLE = SDL_WindowFlags.SDL_WINDOW_RESIZABLE;
enum SDL_WINDOW_MINIMIZED = SDL_WindowFlags.SDL_WINDOW_MINIMIZED;
enum SDL_WINDOW_MAXIMIZED = SDL_WindowFlags.SDL_WINDOW_MAXIMIZED;
enum SDL_WINDOW_INPUT_GRABBED = SDL_WindowFlags.SDL_WINDOW_INPUT_GRABBED;
enum SDL_WINDOW_INPUT_FOCUS = SDL_WindowFlags.SDL_WINDOW_INPUT_FOCUS;
enum SDL_WINDOW_MOUSE_FOCUS = SDL_WindowFlags.SDL_WINDOW_MOUSE_FOCUS;
enum SDL_WINDOW_FULLSCREEN_DESKTOP = SDL_WindowFlags.SDL_WINDOW_FULLSCREEN_DESKTOP;
enum SDL_WINDOW_FOREIGN = SDL_WindowFlags.SDL_WINDOW_FOREIGN;
enum SDL_WINDOW_ALLOW_HIGHDPI = SDL_WindowFlags.SDL_WINDOW_ALLOW_HIGHDPI;
enum SDL_WINDOW_MOUSE_CAPTURE = SDL_WindowFlags.SDL_WINDOW_MOUSE_CAPTURE;
enum SDL_WINDOW_ALWAYS_ON_TOP = SDL_WindowFlags.SDL_WINDOW_ALWAYS_ON_TOP;
enum SDL_WINDOW_SKIP_TASKBAR = SDL_WindowFlags.SDL_WINDOW_SKIP_TASKBAR;
enum SDL_WINDOW_UTILITY = SDL_WindowFlags.SDL_WINDOW_UTILITY;
enum SDL_WINDOW_TOOLTIP = SDL_WindowFlags.SDL_WINDOW_TOOLTIP;
enum SDL_WINDOW_POPUP_MENU = SDL_WindowFlags.SDL_WINDOW_POPUP_MENU;
enum SDL_WINDOW_VULKAN = SDL_WindowFlags.SDL_WINDOW_VULKAN;

/**
 *  \brief Used to indicate that you don't care what the window position is.
 */

/**
 *  \brief Used to indicate that the window position should be centered.
 */

/**
 *  \brief Event subtype for window events
 */
enum SDL_WindowEventID
{
    SDL_WINDOWEVENT_NONE = 0, /**< Never used */
    SDL_WINDOWEVENT_SHOWN = 1, /**< Window has been shown */
    SDL_WINDOWEVENT_HIDDEN = 2, /**< Window has been hidden */
    SDL_WINDOWEVENT_EXPOSED = 3, /**< Window has been exposed and should be
    										 redrawn */
    SDL_WINDOWEVENT_MOVED = 4, /**< Window has been moved to data1, data2
    									 */
    SDL_WINDOWEVENT_RESIZED = 5, /**< Window has been resized to data1xdata2 */
    SDL_WINDOWEVENT_SIZE_CHANGED = 6, /**< The window size has changed, either as
    										 a result of an API call or through the
    										 system or user changing the window size. */
    SDL_WINDOWEVENT_MINIMIZED = 7, /**< Window has been minimized */
    SDL_WINDOWEVENT_MAXIMIZED = 8, /**< Window has been maximized */
    SDL_WINDOWEVENT_RESTORED = 9, /**< Window has been restored to normal size
    										 and position */
    SDL_WINDOWEVENT_ENTER = 10, /**< Window has gained mouse focus */
    SDL_WINDOWEVENT_LEAVE = 11, /**< Window has lost mouse focus */
    SDL_WINDOWEVENT_FOCUS_GAINED = 12, /**< Window has gained keyboard focus */
    SDL_WINDOWEVENT_FOCUS_LOST = 13, /**< Window has lost keyboard focus */
    SDL_WINDOWEVENT_CLOSE = 14, /**< The window manager requests that the window be closed */
    SDL_WINDOWEVENT_TAKE_FOCUS = 15, /**< Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow, or ignore) */
    SDL_WINDOWEVENT_HIT_TEST = 16 /**< Window had a hit test that wasn't SDL_HITTEST_NORMAL. */
}

enum SDL_WINDOWEVENT_NONE = 0; /**< Never used */
enum SDL_WINDOWEVENT_SHOWN = 1; /**< Window has been shown */
enum SDL_WINDOWEVENT_HIDDEN = 2; /**< Window has been hidden */
enum SDL_WINDOWEVENT_EXPOSED = 3; /**< Window has been exposed and should be
     										 redrawn */
enum SDL_WINDOWEVENT_MOVED = 4; /**< Window has been moved to data1; data2
     									 */
enum SDL_WINDOWEVENT_RESIZED = 5; /**< Window has been resized to data1xdata2 */
enum SDL_WINDOWEVENT_SIZE_CHANGED = 6; /**< The window size has changed; either as
     										 a result of an API call or through the
     										 system or user changing the window size. */
enum SDL_WINDOWEVENT_MINIMIZED = 7; /**< Window has been minimized */
enum SDL_WINDOWEVENT_MAXIMIZED = 8; /**< Window has been maximized */
enum SDL_WINDOWEVENT_RESTORED = 9; /**< Window has been restored to normal size
     										 and position */
enum SDL_WINDOWEVENT_ENTER = 10; /**< Window has gained mouse focus */
enum SDL_WINDOWEVENT_LEAVE = 11; /**< Window has lost mouse focus */
enum SDL_WINDOWEVENT_FOCUS_GAINED = 12; /**< Window has gained keyboard focus */
enum SDL_WINDOWEVENT_FOCUS_LOST = 13; /**< Window has lost keyboard focus */
enum SDL_WINDOWEVENT_CLOSE = 14; /**< The window manager requests that the window be closed */
enum SDL_WINDOWEVENT_TAKE_FOCUS = 15; /**< Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow; or ignore) */
enum SDL_WINDOWEVENT_HIT_TEST = 16; /**< Window had a hit test that wasn't SDL_HITTEST_NORMAL. */

/**
 *  \brief Event subtype for display events
 */
enum SDL_DisplayEventID
{
    SDL_DISPLAYEVENT_NONE = 0, /**< Never used */
    SDL_DISPLAYEVENT_ORIENTATION = 1 /**< Display orientation has changed to data1 */
}

enum SDL_DisplayOrientation
{
    SDL_ORIENTATION_UNKNOWN = 0, /**< The display orientation can't be determined */
    SDL_ORIENTATION_LANDSCAPE = 1, /**< The display is in landscape mode, with the right side up, relative to portrait mode */
    SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2, /**< The display is in landscape mode, with the left side up, relative to portrait mode */
    SDL_ORIENTATION_PORTRAIT = 3, /**< The display is in portrait mode */
    SDL_ORIENTATION_PORTRAIT_FLIPPED = 4 /**< The display is in portrait mode, upside down */
}

/**
 *  \brief An opaque handle to an OpenGL context.
 */
alias SDL_GLContext = void*;

/**
 *  \brief OpenGL configuration attributes
 */
enum SDL_GLattr
{
    SDL_GL_RED_SIZE = 0,
    SDL_GL_GREEN_SIZE = 1,
    SDL_GL_BLUE_SIZE = 2,
    SDL_GL_ALPHA_SIZE = 3,
    SDL_GL_BUFFER_SIZE = 4,
    SDL_GL_DOUBLEBUFFER = 5,
    SDL_GL_DEPTH_SIZE = 6,
    SDL_GL_STENCIL_SIZE = 7,
    SDL_GL_ACCUM_RED_SIZE = 8,
    SDL_GL_ACCUM_GREEN_SIZE = 9,
    SDL_GL_ACCUM_BLUE_SIZE = 10,
    SDL_GL_ACCUM_ALPHA_SIZE = 11,
    SDL_GL_STEREO = 12,
    SDL_GL_MULTISAMPLEBUFFERS = 13,
    SDL_GL_MULTISAMPLESAMPLES = 14,
    SDL_GL_ACCELERATED_VISUAL = 15,
    SDL_GL_RETAINED_BACKING = 16,
    SDL_GL_CONTEXT_MAJOR_VERSION = 17,
    SDL_GL_CONTEXT_MINOR_VERSION = 18,
    SDL_GL_CONTEXT_EGL = 19,
    SDL_GL_CONTEXT_FLAGS = 20,
    SDL_GL_CONTEXT_PROFILE_MASK = 21,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24,
    SDL_GL_CONTEXT_RESET_NOTIFICATION = 25,
    SDL_GL_CONTEXT_NO_ERROR = 26
}

enum SDL_GL_RED_SIZE = SDL_GLattr.SDL_GL_RED_SIZE;
enum SDL_GL_GREEN_SIZE = SDL_GLattr.SDL_GL_GREEN_SIZE;
enum SDL_GL_BLUE_SIZE = SDL_GLattr.SDL_GL_BLUE_SIZE;
enum SDL_GL_ALPHA_SIZE = SDL_GLattr.SDL_GL_ALPHA_SIZE;
enum SDL_GL_BUFFER_SIZE = SDL_GLattr.SDL_GL_BUFFER_SIZE;
enum SDL_GL_DOUBLEBUFFER = SDL_GLattr.SDL_GL_DOUBLEBUFFER;
enum SDL_GL_DEPTH_SIZE = SDL_GLattr.SDL_GL_DEPTH_SIZE;
enum SDL_GL_STENCIL_SIZE = SDL_GLattr.SDL_GL_STENCIL_SIZE;
enum SDL_GL_ACCUM_RED_SIZE = SDL_GLattr.SDL_GL_ACCUM_RED_SIZE;
enum SDL_GL_ACCUM_GREEN_SIZE = SDL_GLattr.SDL_GL_ACCUM_GREEN_SIZE;
enum SDL_GL_ACCUM_BLUE_SIZE = SDL_GLattr.SDL_GL_ACCUM_BLUE_SIZE;
enum SDL_GL_ACCUM_ALPHA_SIZE = SDL_GLattr.SDL_GL_ACCUM_ALPHA_SIZE;
enum SDL_GL_STEREO = SDL_GLattr.SDL_GL_STEREO;
enum SDL_GL_MULTISAMPLEBUFFERS = SDL_GLattr.SDL_GL_MULTISAMPLEBUFFERS;
enum SDL_GL_MULTISAMPLESAMPLES = SDL_GLattr.SDL_GL_MULTISAMPLESAMPLES;
enum SDL_GL_ACCELERATED_VISUAL = SDL_GLattr.SDL_GL_ACCELERATED_VISUAL;
enum SDL_GL_RETAINED_BACKING = SDL_GLattr.SDL_GL_RETAINED_BACKING;
enum SDL_GL_CONTEXT_MAJOR_VERSION = SDL_GLattr.SDL_GL_CONTEXT_MAJOR_VERSION;
enum SDL_GL_CONTEXT_MINOR_VERSION = SDL_GLattr.SDL_GL_CONTEXT_MINOR_VERSION;
enum SDL_GL_CONTEXT_EGL = SDL_GLattr.SDL_GL_CONTEXT_EGL;
enum SDL_GL_CONTEXT_FLAGS = SDL_GLattr.SDL_GL_CONTEXT_FLAGS;
enum SDL_GL_CONTEXT_PROFILE_MASK = SDL_GLattr.SDL_GL_CONTEXT_PROFILE_MASK;
enum SDL_GL_SHARE_WITH_CURRENT_CONTEXT = SDL_GLattr.SDL_GL_SHARE_WITH_CURRENT_CONTEXT;
enum SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = SDL_GLattr.SDL_GL_FRAMEBUFFER_SRGB_CAPABLE;
enum SDL_GL_CONTEXT_RELEASE_BEHAVIOR = SDL_GLattr.SDL_GL_CONTEXT_RELEASE_BEHAVIOR;
enum SDL_GL_CONTEXT_RESET_NOTIFICATION = SDL_GLattr.SDL_GL_CONTEXT_RESET_NOTIFICATION;
enum SDL_GL_CONTEXT_NO_ERROR = SDL_GLattr.SDL_GL_CONTEXT_NO_ERROR;

enum SDL_GLprofile
{
    SDL_GL_CONTEXT_PROFILE_CORE = 0x0001,
    SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 0x0002,
    SDL_GL_CONTEXT_PROFILE_ES = 0x0004 /**< GLX_CONTEXT_ES2_PROFILE_BIT_EXT */
}

enum SDL_GL_CONTEXT_PROFILE_CORE = SDL_GLprofile.SDL_GL_CONTEXT_PROFILE_CORE;
enum SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = SDL_GLprofile.SDL_GL_CONTEXT_PROFILE_COMPATIBILITY;
enum SDL_GL_CONTEXT_PROFILE_ES = SDL_GLprofile.SDL_GL_CONTEXT_PROFILE_ES;

enum SDL_GLcontextFlag
{
    SDL_GL_CONTEXT_DEBUG_FLAG = 0x0001,
    SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 0x0002,
    SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 0x0004,
    SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 0x0008
}

enum SDL_GLcontextReleaseFlag
{
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0x0000,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x0001
}

enum SDL_GLContextResetNotification
{
    SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0x0000,
    SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 0x0001
}

/* Function prototypes */

/**
 *  \brief Get the number of video drivers compiled into SDL
 *
 *  \sa SDL_GetVideoDriver()
 */
int SDL_GetNumVideoDrivers ();

/**
 *  \brief Get the name of a built in video driver.
 *
 *  \note The video drivers are presented in the order in which they are
 *        normally checked during initialization.
 *
 *  \sa SDL_GetNumVideoDrivers()
 */
const(char)* SDL_GetVideoDriver (int index);

/**
 *  \brief Initialize the video subsystem, optionally specifying a video driver.
 *
 *  \param driver_name Initialize a specific driver by name, or NULL for the
 *                     default video driver.
 *
 *  \return 0 on success, -1 on error
 *
 *  This function initializes the video subsystem; setting up a connection
 *  to the window manager, etc, and determines the available display modes
 *  and pixel formats, but does not initialize a window or graphics mode.
 *
 *  \sa SDL_VideoQuit()
 */
int SDL_VideoInit (const(char)* driver_name);

/**
 *  \brief Shuts down the video subsystem.
 *
 *  This function closes all windows, and restores the original video mode.
 *
 *  \sa SDL_VideoInit()
 */
void SDL_VideoQuit ();

/**
 *  \brief Returns the name of the currently initialized video driver.
 *
 *  \return The name of the current video driver or NULL if no driver
 *          has been initialized
 *
 *  \sa SDL_GetNumVideoDrivers()
 *  \sa SDL_GetVideoDriver()
 */
const(char)* SDL_GetCurrentVideoDriver ();

/**
 *  \brief Returns the number of available video displays.
 *
 *  \sa SDL_GetDisplayBounds()
 */
int SDL_GetNumVideoDisplays ();

/**
 *  \brief Get the name of a display in UTF-8 encoding
 *
 *  \return The name of a display, or NULL for an invalid display index.
 *
 *  \sa SDL_GetNumVideoDisplays()
 */
const(char)* SDL_GetDisplayName (int displayIndex);

/**
 *  \brief Get the desktop area represented by a display, with the primary
 *         display located at 0,0
 *
 *  \return 0 on success, or -1 if the index is out of range.
 *
 *  \sa SDL_GetNumVideoDisplays()
 */
int SDL_GetDisplayBounds (int displayIndex, SDL_Rect* rect);

/**
 *  \brief Get the usable desktop area represented by a display, with the
 *         primary display located at 0,0
 *
 *  This is the same area as SDL_GetDisplayBounds() reports, but with portions
 *  reserved by the system removed. For example, on Mac OS X, this subtracts
 *  the area occupied by the menu bar and dock.
 *
 *  Setting a window to be fullscreen generally bypasses these unusable areas,
 *  so these are good guidelines for the maximum space available to a
 *  non-fullscreen window.
 *
 *  \return 0 on success, or -1 if the index is out of range.
 *
 *  \sa SDL_GetDisplayBounds()
 *  \sa SDL_GetNumVideoDisplays()
 */
int SDL_GetDisplayUsableBounds (int displayIndex, SDL_Rect* rect);

/**
 *  \brief Get the dots/pixels-per-inch for a display
 *
 *  \note Diagonal, horizontal and vertical DPI can all be optionally
 *        returned if the parameter is non-NULL.
 *
 *  \return 0 on success, or -1 if no DPI information is available or the index is out of range.
 *
 *  \sa SDL_GetNumVideoDisplays()
 */
int SDL_GetDisplayDPI (int displayIndex, float* ddpi, float* hdpi, float* vdpi);

/**
 *  \brief Get the orientation of a display
 *
 *  \return The orientation of the display, or SDL_ORIENTATION_UNKNOWN if it isn't available.
 *
 *  \sa SDL_GetNumVideoDisplays()
 */
SDL_DisplayOrientation SDL_GetDisplayOrientation (int displayIndex);

/**
 *  \brief Returns the number of available display modes.
 *
 *  \sa SDL_GetDisplayMode()
 */
int SDL_GetNumDisplayModes (int displayIndex);

/**
 *  \brief Fill in information about a specific display mode.
 *
 *  \note The display modes are sorted in this priority:
 *        \li bits per pixel -> more colors to fewer colors
 *        \li width -> largest to smallest
 *        \li height -> largest to smallest
 *        \li refresh rate -> highest to lowest
 *
 *  \sa SDL_GetNumDisplayModes()
 */
int SDL_GetDisplayMode (int displayIndex, int modeIndex, SDL_DisplayMode* mode);

/**
 *  \brief Fill in information about the desktop display mode.
 */
int SDL_GetDesktopDisplayMode (int displayIndex, SDL_DisplayMode* mode);

/**
 *  \brief Fill in information about the current display mode.
 */
int SDL_GetCurrentDisplayMode (int displayIndex, SDL_DisplayMode* mode);

/**
 *  \brief Get the closest match to the requested display mode.
 *
 *  \param displayIndex The index of display from which mode should be queried.
 *  \param mode The desired display mode
 *  \param closest A pointer to a display mode to be filled in with the closest
 *                 match of the available display modes.
 *
 *  \return The passed in value \c closest, or NULL if no matching video mode
 *          was available.
 *
 *  The available display modes are scanned, and \c closest is filled in with the
 *  closest mode matching the requested mode and returned.  The mode format and
 *  refresh_rate default to the desktop mode if they are 0.  The modes are
 *  scanned with size being first priority, format being second priority, and
 *  finally checking the refresh_rate.  If all the available modes are too
 *  small, then NULL is returned.
 *
 *  \sa SDL_GetNumDisplayModes()
 *  \sa SDL_GetDisplayMode()
 */
SDL_DisplayMode* SDL_GetClosestDisplayMode (int displayIndex, const(SDL_DisplayMode)* mode, SDL_DisplayMode* closest);

/**
 *  \brief Get the display index associated with a window.
 *
 *  \return the display index of the display containing the center of the
 *          window, or -1 on error.
 */
int SDL_GetWindowDisplayIndex (SDL_Window* window);

/**
 *  \brief Set the display mode used when a fullscreen window is visible.
 *
 *  By default the window's dimensions and the desktop format and refresh rate
 *  are used.
 *
 *  \param window The window for which the display mode should be set.
 *  \param mode The mode to use, or NULL for the default mode.
 *
 *  \return 0 on success, or -1 if setting the display mode failed.
 *
 *  \sa SDL_GetWindowDisplayMode()
 *  \sa SDL_SetWindowFullscreen()
 */
int SDL_SetWindowDisplayMode (SDL_Window* window, const(SDL_DisplayMode)* mode);

/**
 *  \brief Fill in information about the display mode used when a fullscreen
 *         window is visible.
 *
 *  \sa SDL_SetWindowDisplayMode()
 *  \sa SDL_SetWindowFullscreen()
 */
int SDL_GetWindowDisplayMode (SDL_Window* window, SDL_DisplayMode* mode);

/**
 *  \brief Get the pixel format associated with the window.
 */
Uint32 SDL_GetWindowPixelFormat (SDL_Window* window);

/**
 *  \brief Create a window with the specified position, dimensions, and flags.
 *
 *  \param title The title of the window, in UTF-8 encoding.
 *  \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
 *               ::SDL_WINDOWPOS_UNDEFINED.
 *  \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
 *               ::SDL_WINDOWPOS_UNDEFINED.
 *  \param w     The width of the window, in screen coordinates.
 *  \param h     The height of the window, in screen coordinates.
 *  \param flags The flags for the window, a mask of any of the following:
 *               ::SDL_WINDOW_FULLSCREEN,    ::SDL_WINDOW_OPENGL,
 *               ::SDL_WINDOW_HIDDEN,        ::SDL_WINDOW_BORDERLESS,
 *               ::SDL_WINDOW_RESIZABLE,     ::SDL_WINDOW_MAXIMIZED,
 *               ::SDL_WINDOW_MINIMIZED,     ::SDL_WINDOW_INPUT_GRABBED,
 *               ::SDL_WINDOW_ALLOW_HIGHDPI, ::SDL_WINDOW_VULKAN.
 *
 *  \return The created window, or NULL if window creation failed.
 *
 *  If the window is created with the SDL_WINDOW_ALLOW_HIGHDPI flag, its size
 *  in pixels may differ from its size in screen coordinates on platforms with
 *  high-DPI support (e.g. iOS and Mac OS X). Use SDL_GetWindowSize() to query
 *  the client area's size in screen coordinates, and SDL_GL_GetDrawableSize(),
 *  SDL_Vulkan_GetDrawableSize(), or SDL_GetRendererOutputSize() to query the
 *  drawable size in pixels.
 *
 *  If the window is created with any of the SDL_WINDOW_OPENGL or
 *  SDL_WINDOW_VULKAN flags, then the corresponding LoadLibrary function
 *  (SDL_GL_LoadLibrary or SDL_Vulkan_LoadLibrary) is called and the
 *  corresponding UnloadLibrary function is called by SDL_DestroyWindow().
 *
 *  If SDL_WINDOW_VULKAN is specified and there isn't a working Vulkan driver,
 *  SDL_CreateWindow() will fail because SDL_Vulkan_LoadLibrary() will fail.
 *
 *  \note On non-Apple devices, SDL requires you to either not link to the
 *        Vulkan loader or link to a dynamic library version. This limitation
 *        may be removed in a future version of SDL.
 *
 *  \sa SDL_DestroyWindow()
 *  \sa SDL_GL_LoadLibrary()
 *  \sa SDL_Vulkan_LoadLibrary()
 */
SDL_Window* SDL_CreateWindow (
    const(char)* title,
    int x,
    int y,
    int w,
    int h,
    Uint32 flags);

/**
 *  \brief Create an SDL window from an existing native window.
 *
 *  \param data A pointer to driver-dependent window creation data
 *
 *  \return The created window, or NULL if window creation failed.
 *
 *  \sa SDL_DestroyWindow()
 */
SDL_Window* SDL_CreateWindowFrom (const(void)* data);

/**
 *  \brief Get the numeric ID of a window, for logging purposes.
 */
Uint32 SDL_GetWindowID (SDL_Window* window);

/**
 *  \brief Get a window from a stored ID, or NULL if it doesn't exist.
 */
SDL_Window* SDL_GetWindowFromID (Uint32 id);

/**
 *  \brief Get the window flags.
 */
Uint32 SDL_GetWindowFlags (SDL_Window* window);

/**
 *  \brief Set the title of a window, in UTF-8 format.
 *
 *  \sa SDL_GetWindowTitle()
 */
void SDL_SetWindowTitle (SDL_Window* window, const(char)* title);

/**
 *  \brief Get the title of a window, in UTF-8 format.
 *
 *  \sa SDL_SetWindowTitle()
 */
const(char)* SDL_GetWindowTitle (SDL_Window* window);

/**
 *  \brief Set the icon for a window.
 *
 *  \param window The window for which the icon should be set.
 *  \param icon The icon for the window.
 */
void SDL_SetWindowIcon (SDL_Window* window, SDL_Surface* icon);

/**
 *  \brief Associate an arbitrary named pointer with a window.
 *
 *  \param window   The window to associate with the pointer.
 *  \param name     The name of the pointer.
 *  \param userdata The associated pointer.
 *
 *  \return The previous value associated with 'name'
 *
 *  \note The name is case-sensitive.
 *
 *  \sa SDL_GetWindowData()
 */
void* SDL_SetWindowData (SDL_Window* window, const(char)* name, void* userdata);

/**
 *  \brief Retrieve the data pointer associated with a window.
 *
 *  \param window   The window to query.
 *  \param name     The name of the pointer.
 *
 *  \return The value associated with 'name'
 *
 *  \sa SDL_SetWindowData()
 */
void* SDL_GetWindowData (SDL_Window* window, const(char)* name);

/**
 *  \brief Set the position of a window.
 *
 *  \param window   The window to reposition.
 *  \param x        The x coordinate of the window in screen coordinates, or
 *                  ::SDL_WINDOWPOS_CENTERED or ::SDL_WINDOWPOS_UNDEFINED.
 *  \param y        The y coordinate of the window in screen coordinates, or
 *                  ::SDL_WINDOWPOS_CENTERED or ::SDL_WINDOWPOS_UNDEFINED.
 *
 *  \note The window coordinate origin is the upper left of the display.
 *
 *  \sa SDL_GetWindowPosition()
 */
void SDL_SetWindowPosition (SDL_Window* window, int x, int y);

/**
 *  \brief Get the position of a window.
 *
 *  \param window   The window to query.
 *  \param x        Pointer to variable for storing the x position, in screen
 *                  coordinates. May be NULL.
 *  \param y        Pointer to variable for storing the y position, in screen
 *                  coordinates. May be NULL.
 *
 *  \sa SDL_SetWindowPosition()
 */
void SDL_GetWindowPosition (SDL_Window* window, int* x, int* y);

/**
 *  \brief Set the size of a window's client area.
 *
 *  \param window   The window to resize.
 *  \param w        The width of the window, in screen coordinates. Must be >0.
 *  \param h        The height of the window, in screen coordinates. Must be >0.
 *
 *  \note Fullscreen windows automatically match the size of the display mode,
 *        and you should use SDL_SetWindowDisplayMode() to change their size.
 *
 *  The window size in screen coordinates may differ from the size in pixels, if
 *  the window was created with SDL_WINDOW_ALLOW_HIGHDPI on a platform with
 *  high-dpi support (e.g. iOS or OS X). Use SDL_GL_GetDrawableSize() or
 *  SDL_GetRendererOutputSize() to get the real client area size in pixels.
 *
 *  \sa SDL_GetWindowSize()
 *  \sa SDL_SetWindowDisplayMode()
 */
void SDL_SetWindowSize (SDL_Window* window, int w, int h);

/**
 *  \brief Get the size of a window's client area.
 *
 *  \param window   The window to query.
 *  \param w        Pointer to variable for storing the width, in screen
 *                  coordinates. May be NULL.
 *  \param h        Pointer to variable for storing the height, in screen
 *                  coordinates. May be NULL.
 *
 *  The window size in screen coordinates may differ from the size in pixels, if
 *  the window was created with SDL_WINDOW_ALLOW_HIGHDPI on a platform with
 *  high-dpi support (e.g. iOS or OS X). Use SDL_GL_GetDrawableSize() or
 *  SDL_GetRendererOutputSize() to get the real client area size in pixels.
 *
 *  \sa SDL_SetWindowSize()
 */
void SDL_GetWindowSize (SDL_Window* window, int* w, int* h);

/**
 *  \brief Get the size of a window's borders (decorations) around the client area.
 *
 *  \param window The window to query.
 *  \param top Pointer to variable for storing the size of the top border. NULL is permitted.
 *  \param left Pointer to variable for storing the size of the left border. NULL is permitted.
 *  \param bottom Pointer to variable for storing the size of the bottom border. NULL is permitted.
 *  \param right Pointer to variable for storing the size of the right border. NULL is permitted.
 *
 *  \return 0 on success, or -1 if getting this information is not supported.
 *
 *  \note if this function fails (returns -1), the size values will be
 *        initialized to 0, 0, 0, 0 (if a non-NULL pointer is provided), as
 *        if the window in question was borderless.
 */
int SDL_GetWindowBordersSize (
    SDL_Window* window,
    int* top,
    int* left,
    int* bottom,
    int* right);

/**
 *  \brief Set the minimum size of a window's client area.
 *
 *  \param window    The window to set a new minimum size.
 *  \param min_w     The minimum width of the window, must be >0
 *  \param min_h     The minimum height of the window, must be >0
 *
 *  \note You can't change the minimum size of a fullscreen window, it
 *        automatically matches the size of the display mode.
 *
 *  \sa SDL_GetWindowMinimumSize()
 *  \sa SDL_SetWindowMaximumSize()
 */
void SDL_SetWindowMinimumSize (SDL_Window* window, int min_w, int min_h);

/**
 *  \brief Get the minimum size of a window's client area.
 *
 *  \param window   The window to query.
 *  \param w        Pointer to variable for storing the minimum width, may be NULL
 *  \param h        Pointer to variable for storing the minimum height, may be NULL
 *
 *  \sa SDL_GetWindowMaximumSize()
 *  \sa SDL_SetWindowMinimumSize()
 */
void SDL_GetWindowMinimumSize (SDL_Window* window, int* w, int* h);

/**
 *  \brief Set the maximum size of a window's client area.
 *
 *  \param window    The window to set a new maximum size.
 *  \param max_w     The maximum width of the window, must be >0
 *  \param max_h     The maximum height of the window, must be >0
 *
 *  \note You can't change the maximum size of a fullscreen window, it
 *        automatically matches the size of the display mode.
 *
 *  \sa SDL_GetWindowMaximumSize()
 *  \sa SDL_SetWindowMinimumSize()
 */
void SDL_SetWindowMaximumSize (SDL_Window* window, int max_w, int max_h);

/**
 *  \brief Get the maximum size of a window's client area.
 *
 *  \param window   The window to query.
 *  \param w        Pointer to variable for storing the maximum width, may be NULL
 *  \param h        Pointer to variable for storing the maximum height, may be NULL
 *
 *  \sa SDL_GetWindowMinimumSize()
 *  \sa SDL_SetWindowMaximumSize()
 */
void SDL_GetWindowMaximumSize (SDL_Window* window, int* w, int* h);

/**
 *  \brief Set the border state of a window.
 *
 *  This will add or remove the window's SDL_WINDOW_BORDERLESS flag and
 *  add or remove the border from the actual window. This is a no-op if the
 *  window's border already matches the requested state.
 *
 *  \param window The window of which to change the border state.
 *  \param bordered SDL_FALSE to remove border, SDL_TRUE to add border.
 *
 *  \note You can't change the border state of a fullscreen window.
 *
 *  \sa SDL_GetWindowFlags()
 */
void SDL_SetWindowBordered (SDL_Window* window, SDL_bool bordered);

/**
 *  \brief Set the user-resizable state of a window.
 *
 *  This will add or remove the window's SDL_WINDOW_RESIZABLE flag and
 *  allow/disallow user resizing of the window. This is a no-op if the
 *  window's resizable state already matches the requested state.
 *
 *  \param window The window of which to change the resizable state.
 *  \param resizable SDL_TRUE to allow resizing, SDL_FALSE to disallow.
 *
 *  \note You can't change the resizable state of a fullscreen window.
 *
 *  \sa SDL_GetWindowFlags()
 */
void SDL_SetWindowResizable (SDL_Window* window, SDL_bool resizable);

/**
 *  \brief Show a window.
 *
 *  \sa SDL_HideWindow()
 */
void SDL_ShowWindow (SDL_Window* window);

/**
 *  \brief Hide a window.
 *
 *  \sa SDL_ShowWindow()
 */
void SDL_HideWindow (SDL_Window* window);

/**
 *  \brief Raise a window above other windows and set the input focus.
 */
void SDL_RaiseWindow (SDL_Window* window);

/**
 *  \brief Make a window as large as possible.
 *
 *  \sa SDL_RestoreWindow()
 */
void SDL_MaximizeWindow (SDL_Window* window);

/**
 *  \brief Minimize a window to an iconic representation.
 *
 *  \sa SDL_RestoreWindow()
 */
void SDL_MinimizeWindow (SDL_Window* window);

/**
 *  \brief Restore the size and position of a minimized or maximized window.
 *
 *  \sa SDL_MaximizeWindow()
 *  \sa SDL_MinimizeWindow()
 */
void SDL_RestoreWindow (SDL_Window* window);

/**
 *  \brief Set a window's fullscreen state.
 *
 *  \return 0 on success, or -1 if setting the display mode failed.
 *
 *  \sa SDL_SetWindowDisplayMode()
 *  \sa SDL_GetWindowDisplayMode()
 */
int SDL_SetWindowFullscreen (SDL_Window* window, Uint32 flags);

/**
 *  \brief Get the SDL surface associated with the window.
 *
 *  \return The window's framebuffer surface, or NULL on error.
 *
 *  A new surface will be created with the optimal format for the window,
 *  if necessary. This surface will be freed when the window is destroyed.
 *
 *  \note You may not combine this with 3D or the rendering API on this window.
 *
 *  \sa SDL_UpdateWindowSurface()
 *  \sa SDL_UpdateWindowSurfaceRects()
 */
SDL_Surface* SDL_GetWindowSurface (SDL_Window* window);

/**
 *  \brief Copy the window surface to the screen.
 *
 *  \return 0 on success, or -1 on error.
 *
 *  \sa SDL_GetWindowSurface()
 *  \sa SDL_UpdateWindowSurfaceRects()
 */
int SDL_UpdateWindowSurface (SDL_Window* window);

/**
 *  \brief Copy a number of rectangles on the window surface to the screen.
 *
 *  \return 0 on success, or -1 on error.
 *
 *  \sa SDL_GetWindowSurface()
 *  \sa SDL_UpdateWindowSurface()
 */
int SDL_UpdateWindowSurfaceRects (
    SDL_Window* window,
    const(SDL_Rect)* rects,
    int numrects);

/**
 *  \brief Set a window's input grab mode.
 *
 *  \param window The window for which the input grab mode should be set.
 *  \param grabbed This is SDL_TRUE to grab input, and SDL_FALSE to release input.
 *
 *  If the caller enables a grab while another window is currently grabbed,
 *  the other window loses its grab in favor of the caller's window.
 *
 *  \sa SDL_GetWindowGrab()
 */
void SDL_SetWindowGrab (SDL_Window* window, SDL_bool grabbed);

/**
 *  \brief Get a window's input grab mode.
 *
 *  \return This returns SDL_TRUE if input is grabbed, and SDL_FALSE otherwise.
 *
 *  \sa SDL_SetWindowGrab()
 */
SDL_bool SDL_GetWindowGrab (SDL_Window* window);

/**
 *  \brief Get the window that currently has an input grab enabled.
 *
 *  \return This returns the window if input is grabbed, and NULL otherwise.
 *
 *  \sa SDL_SetWindowGrab()
 */
SDL_Window* SDL_GetGrabbedWindow ();

/**
 *  \brief Set the brightness (gamma correction) for a window.
 *
 *  \return 0 on success, or -1 if setting the brightness isn't supported.
 *
 *  \sa SDL_GetWindowBrightness()
 *  \sa SDL_SetWindowGammaRamp()
 */
int SDL_SetWindowBrightness (SDL_Window* window, float brightness);

/**
 *  \brief Get the brightness (gamma correction) for a window.
 *
 *  \return The last brightness value passed to SDL_SetWindowBrightness()
 *
 *  \sa SDL_SetWindowBrightness()
 */
float SDL_GetWindowBrightness (SDL_Window* window);

/**
 *  \brief Set the opacity for a window
 *
 *  \param window The window which will be made transparent or opaque
 *  \param opacity Opacity (0.0f - transparent, 1.0f - opaque) This will be
 *                 clamped internally between 0.0f and 1.0f.
 *
 *  \return 0 on success, or -1 if setting the opacity isn't supported.
 *
 *  \sa SDL_GetWindowOpacity()
 */
int SDL_SetWindowOpacity (SDL_Window* window, float opacity);

/**
 *  \brief Get the opacity of a window.
 *
 *  If transparency isn't supported on this platform, opacity will be reported
 *  as 1.0f without error.
 *
 *  \param window The window in question.
 *  \param out_opacity Opacity (0.0f - transparent, 1.0f - opaque)
 *
 *  \return 0 on success, or -1 on error (invalid window, etc).
 *
 *  \sa SDL_SetWindowOpacity()
 */
int SDL_GetWindowOpacity (SDL_Window* window, float* out_opacity);

/**
 *  \brief Sets the window as a modal for another window (TODO: reconsider this function and/or its name)
 *
 *  \param modal_window The window that should be modal
 *  \param parent_window The parent window
 *
 *  \return 0 on success, or -1 otherwise.
 */
int SDL_SetWindowModalFor (SDL_Window* modal_window, SDL_Window* parent_window);

/**
 *  \brief Explicitly sets input focus to the window.
 *
 *  You almost certainly want SDL_RaiseWindow() instead of this function. Use
 *  this with caution, as you might give focus to a window that's completely
 *  obscured by other windows.
 *
 *  \param window The window that should get the input focus
 *
 *  \return 0 on success, or -1 otherwise.
 *  \sa SDL_RaiseWindow()
 */
int SDL_SetWindowInputFocus (SDL_Window* window);

/**
 *  \brief Set the gamma ramp for a window.
 *
 *  \param window The window for which the gamma ramp should be set.
 *  \param red The translation table for the red channel, or NULL.
 *  \param green The translation table for the green channel, or NULL.
 *  \param blue The translation table for the blue channel, or NULL.
 *
 *  \return 0 on success, or -1 if gamma ramps are unsupported.
 *
 *  Set the gamma translation table for the red, green, and blue channels
 *  of the video hardware.  Each table is an array of 256 16-bit quantities,
 *  representing a mapping between the input and output for that channel.
 *  The input is the index into the array, and the output is the 16-bit
 *  gamma value at that index, scaled to the output color precision.
 *
 *  \sa SDL_GetWindowGammaRamp()
 */
int SDL_SetWindowGammaRamp (
    SDL_Window* window,
    const(Uint16)* red,
    const(Uint16)* green,
    const(Uint16)* blue);

/**
 *  \brief Get the gamma ramp for a window.
 *
 *  \param window The window from which the gamma ramp should be queried.
 *  \param red   A pointer to a 256 element array of 16-bit quantities to hold
 *               the translation table for the red channel, or NULL.
 *  \param green A pointer to a 256 element array of 16-bit quantities to hold
 *               the translation table for the green channel, or NULL.
 *  \param blue  A pointer to a 256 element array of 16-bit quantities to hold
 *               the translation table for the blue channel, or NULL.
 *
 *  \return 0 on success, or -1 if gamma ramps are unsupported.
 *
 *  \sa SDL_SetWindowGammaRamp()
 */
int SDL_GetWindowGammaRamp (
    SDL_Window* window,
    Uint16* red,
    Uint16* green,
    Uint16* blue);

/**
 *  \brief Possible return values from the SDL_HitTest callback.
 *
 *  \sa SDL_HitTest
 */
enum SDL_HitTestResult
{
    SDL_HITTEST_NORMAL = 0, /**< Region is normal. No special properties. */
    SDL_HITTEST_DRAGGABLE = 1, /**< Region can drag entire window. */
    SDL_HITTEST_RESIZE_TOPLEFT = 2,
    SDL_HITTEST_RESIZE_TOP = 3,
    SDL_HITTEST_RESIZE_TOPRIGHT = 4,
    SDL_HITTEST_RESIZE_RIGHT = 5,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6,
    SDL_HITTEST_RESIZE_BOTTOM = 7,
    SDL_HITTEST_RESIZE_BOTTOMLEFT = 8,
    SDL_HITTEST_RESIZE_LEFT = 9
}

/**
 *  \brief Callback used for hit-testing.
 *
 *  \sa SDL_SetWindowHitTest
 */
alias SDL_HitTest = SDL_HitTestResult function (
    SDL_Window* win,
    const(SDL_Point)* area,
    void* data);

/**
 *  \brief Provide a callback that decides if a window region has special properties.
 *
 *  Normally windows are dragged and resized by decorations provided by the
 *  system window manager (a title bar, borders, etc), but for some apps, it
 *  makes sense to drag them from somewhere else inside the window itself; for
 *  example, one might have a borderless window that wants to be draggable
 *  from any part, or simulate its own title bar, etc.
 *
 *  This function lets the app provide a callback that designates pieces of
 *  a given window as special. This callback is run during event processing
 *  if we need to tell the OS to treat a region of the window specially; the
 *  use of this callback is known as "hit testing."
 *
 *  Mouse input may not be delivered to your application if it is within
 *  a special area; the OS will often apply that input to moving the window or
 *  resizing the window and not deliver it to the application.
 *
 *  Specifying NULL for a callback disables hit-testing. Hit-testing is
 *  disabled by default.
 *
 *  Platforms that don't support this functionality will return -1
 *  unconditionally, even if you're attempting to disable hit-testing.
 *
 *  Your callback may fire at any time, and its firing does not indicate any
 *  specific behavior (for example, on Windows, this certainly might fire
 *  when the OS is deciding whether to drag your window, but it fires for lots
 *  of other reasons, too, some unrelated to anything you probably care about
 *  _and when the mouse isn't actually at the location it is testing_).
 *  Since this can fire at any time, you should try to keep your callback
 *  efficient, devoid of allocations, etc.
 *
 *  \param window The window to set hit-testing on.
 *  \param callback The callback to call when doing a hit-test.
 *  \param callback_data An app-defined void pointer passed to the callback.
 *  \return 0 on success, -1 on error (including unsupported).
 */
int SDL_SetWindowHitTest (
    SDL_Window* window,
    SDL_HitTest callback,
    void* callback_data);

/**
 *  \brief Destroy a window.
 */
void SDL_DestroyWindow (SDL_Window* window);

/**
 *  \brief Returns whether the screensaver is currently enabled (default off).
 *
 *  \sa SDL_EnableScreenSaver()
 *  \sa SDL_DisableScreenSaver()
 */
SDL_bool SDL_IsScreenSaverEnabled ();

/**
 *  \brief Allow the screen to be blanked by a screensaver
 *
 *  \sa SDL_IsScreenSaverEnabled()
 *  \sa SDL_DisableScreenSaver()
 */
void SDL_EnableScreenSaver ();

/**
 *  \brief Prevent the screen from being blanked by a screensaver
 *
 *  \sa SDL_IsScreenSaverEnabled()
 *  \sa SDL_EnableScreenSaver()
 */
void SDL_DisableScreenSaver ();

/**
 *  \name OpenGL support functions
 */
/* @{ */

/**
 *  \brief Dynamically load an OpenGL library.
 *
 *  \param path The platform dependent OpenGL library name, or NULL to open the
 *              default OpenGL library.
 *
 *  \return 0 on success, or -1 if the library couldn't be loaded.
 *
 *  This should be done after initializing the video driver, but before
 *  creating any OpenGL windows.  If no OpenGL library is loaded, the default
 *  library will be loaded upon creation of the first OpenGL window.
 *
 *  \note If you do this, you need to retrieve all of the GL functions used in
 *        your program from the dynamic library using SDL_GL_GetProcAddress().
 *
 *  \sa SDL_GL_GetProcAddress()
 *  \sa SDL_GL_UnloadLibrary()
 */
int SDL_GL_LoadLibrary (const(char)* path);

/**
 *  \brief Get the address of an OpenGL function.
 */
void* SDL_GL_GetProcAddress (const(char)* proc);

/**
 *  \brief Unload the OpenGL library previously loaded by SDL_GL_LoadLibrary().
 *
 *  \sa SDL_GL_LoadLibrary()
 */
void SDL_GL_UnloadLibrary ();

/**
 *  \brief Return true if an OpenGL extension is supported for the current
 *         context.
 */
SDL_bool SDL_GL_ExtensionSupported (const(char)* extension);

/**
 *  \brief Reset all previously set OpenGL context attributes to their default values
 */
void SDL_GL_ResetAttributes ();

/**
 *  \brief Set an OpenGL window attribute before window creation.
 *
 *  \return 0 on success, or -1 if the attribute could not be set.
 */
int SDL_GL_SetAttribute (SDL_GLattr attr, int value);

/**
 *  \brief Get the actual value for an attribute from the current context.
 *
 *  \return 0 on success, or -1 if the attribute could not be retrieved.
 *          The integer at \c value will be modified in either case.
 */
int SDL_GL_GetAttribute (SDL_GLattr attr, int* value);

/**
 *  \brief Create an OpenGL context for use with an OpenGL window, and make it
 *         current.
 *
 *  \sa SDL_GL_DeleteContext()
 */
SDL_GLContext SDL_GL_CreateContext (SDL_Window* window);

/**
 *  \brief Set up an OpenGL context for rendering into an OpenGL window.
 *
 *  \note The context must have been created with a compatible window.
 */
int SDL_GL_MakeCurrent (SDL_Window* window, SDL_GLContext context);

/**
 *  \brief Get the currently active OpenGL window.
 */
SDL_Window* SDL_GL_GetCurrentWindow ();

/**
 *  \brief Get the currently active OpenGL context.
 */
SDL_GLContext SDL_GL_GetCurrentContext ();

/**
 *  \brief Get the size of a window's underlying drawable in pixels (for use
 *         with glViewport).
 *
 *  \param window   Window from which the drawable size should be queried
 *  \param w        Pointer to variable for storing the width in pixels, may be NULL
 *  \param h        Pointer to variable for storing the height in pixels, may be NULL
 *
 * This may differ from SDL_GetWindowSize() if we're rendering to a high-DPI
 * drawable, i.e. the window was created with SDL_WINDOW_ALLOW_HIGHDPI on a
 * platform with high-DPI support (Apple calls this "Retina"), and not disabled
 * by the SDL_HINT_VIDEO_HIGHDPI_DISABLED hint.
 *
 *  \sa SDL_GetWindowSize()
 *  \sa SDL_CreateWindow()
 */
void SDL_GL_GetDrawableSize (SDL_Window* window, int* w, int* h);

/**
 *  \brief Set the swap interval for the current OpenGL context.
 *
 *  \param interval 0 for immediate updates, 1 for updates synchronized with the
 *                  vertical retrace. If the system supports it, you may
 *                  specify -1 to allow late swaps to happen immediately
 *                  instead of waiting for the next retrace.
 *
 *  \return 0 on success, or -1 if setting the swap interval is not supported.
 *
 *  \sa SDL_GL_GetSwapInterval()
 */
int SDL_GL_SetSwapInterval (int interval);

/**
 *  \brief Get the swap interval for the current OpenGL context.
 *
 *  \return 0 if there is no vertical retrace synchronization, 1 if the buffer
 *          swap is synchronized with the vertical retrace, and -1 if late
 *          swaps happen immediately instead of waiting for the next retrace.
 *          If the system can't determine the swap interval, or there isn't a
 *          valid current context, this will return 0 as a safe default.
 *
 *  \sa SDL_GL_SetSwapInterval()
 */
int SDL_GL_GetSwapInterval ();

/**
 * \brief Swap the OpenGL buffers for a window, if double-buffering is
 *        supported.
 */
void SDL_GL_SwapWindow (SDL_Window* window);

/**
 *  \brief Delete an OpenGL context.
 *
 *  \sa SDL_GL_CreateContext()
 */
void SDL_GL_DeleteContext (SDL_GLContext context);

/* @} */ /* OpenGL support functions */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_video_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_video.h ***/

/*** Start of inlined file: SDL_keyboard.h ***/
/**
 *  \file SDL_keyboard.h
 *
 *  Include file for SDL keyboard event handling
 */

/*** Start of inlined file: SDL_keycode.h ***/
/**
 *  \file SDL_keycode.h
 *
 *  Defines constants which identify keyboard keys and modifiers.
 */

/*** Start of inlined file: SDL_scancode.h ***/
/**
 *  \file SDL_scancode.h
 *
 *  Defines keyboard scancodes.
 */

/**
 *  \brief The SDL keyboard scancode representation.
 *
 *  Values of this type are used to represent keyboard keys, among other places
 *  in the \link SDL_Keysym::scancode key.keysym.scancode \endlink field of the
 *  SDL_Event structure.
 *
 *  The values in this enumeration are based on the USB usage page standard:
 *  http://www.usb.org/developers/hidpage/Hut1_12v2.pdf
 */
enum SDL_Scancode
{
    SDL_SCANCODE_UNKNOWN = 0,

    /**
    	 *  \name Usage page 0x07
    	 *
    	 *  These values are from usage page 0x07 (USB keyboard page).
    	 */
    /* @{ */

    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,

    SDL_SCANCODE_1 = 30,
    SDL_SCANCODE_2 = 31,
    SDL_SCANCODE_3 = 32,
    SDL_SCANCODE_4 = 33,
    SDL_SCANCODE_5 = 34,
    SDL_SCANCODE_6 = 35,
    SDL_SCANCODE_7 = 36,
    SDL_SCANCODE_8 = 37,
    SDL_SCANCODE_9 = 38,
    SDL_SCANCODE_0 = 39,

    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_BACKSPACE = 42,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,

    SDL_SCANCODE_MINUS = 45,
    SDL_SCANCODE_EQUALS = 46,
    SDL_SCANCODE_LEFTBRACKET = 47,
    SDL_SCANCODE_RIGHTBRACKET = 48,
    SDL_SCANCODE_BACKSLASH = 49, /**< Located at the lower left of the return
    								  *   key on ISO keyboards and at the right end
    								  *   of the QWERTY row on ANSI keyboards.
    								  *   Produces REVERSE SOLIDUS (backslash) and
    								  *   VERTICAL LINE in a US layout, REVERSE
    								  *   SOLIDUS and VERTICAL LINE in a UK Mac
    								  *   layout, NUMBER SIGN and TILDE in a UK
    								  *   Windows layout, DOLLAR SIGN and POUND SIGN
    								  *   in a Swiss German layout, NUMBER SIGN and
    								  *   APOSTROPHE in a German layout, GRAVE
    								  *   ACCENT and POUND SIGN in a French Mac
    								  *   layout, and ASTERISK and MICRO SIGN in a
    								  *   French Windows layout.
    								  */
    SDL_SCANCODE_NONUSHASH = 50, /**< ISO USB keyboards actually use this code
    								  *   instead of 49 for the same key, but all
    								  *   OSes I've seen treat the two codes
    								  *   identically. So, as an implementor, unless
    								  *   your keyboard generates both of those
    								  *   codes and your OS treats them differently,
    								  *   you should generate SDL_SCANCODE_BACKSLASH
    								  *   instead of this code. As a user, you
    								  *   should not rely on this code because SDL
    								  *   will never generate it with most (all?)
    								  *   keyboards.
    								  */
    SDL_SCANCODE_SEMICOLON = 51,
    SDL_SCANCODE_APOSTROPHE = 52,
    SDL_SCANCODE_GRAVE = 53, /**< Located in the top left corner (on both ANSI
    							  *   and ISO keyboards). Produces GRAVE ACCENT and
    							  *   TILDE in a US Windows layout and in US and UK
    							  *   Mac layouts on ANSI keyboards, GRAVE ACCENT
    							  *   and NOT SIGN in a UK Windows layout, SECTION
    							  *   SIGN and PLUS-MINUS SIGN in US and UK Mac
    							  *   layouts on ISO keyboards, SECTION SIGN and
    							  *   DEGREE SIGN in a Swiss German layout (Mac:
    							  *   only on ISO keyboards), CIRCUMFLEX ACCENT and
    							  *   DEGREE SIGN in a German layout (Mac: only on
    							  *   ISO keyboards), SUPERSCRIPT TWO and TILDE in a
    							  *   French Windows layout, COMMERCIAL AT and
    							  *   NUMBER SIGN in a French Mac layout on ISO
    							  *   keyboards, and LESS-THAN SIGN and GREATER-THAN
    							  *   SIGN in a Swiss German, German, or French Mac
    							  *   layout on ANSI keyboards.
    							  */
    SDL_SCANCODE_COMMA = 54,
    SDL_SCANCODE_PERIOD = 55,
    SDL_SCANCODE_SLASH = 56,

    SDL_SCANCODE_CAPSLOCK = 57,

    SDL_SCANCODE_F1 = 58,
    SDL_SCANCODE_F2 = 59,
    SDL_SCANCODE_F3 = 60,
    SDL_SCANCODE_F4 = 61,
    SDL_SCANCODE_F5 = 62,
    SDL_SCANCODE_F6 = 63,
    SDL_SCANCODE_F7 = 64,
    SDL_SCANCODE_F8 = 65,
    SDL_SCANCODE_F9 = 66,
    SDL_SCANCODE_F10 = 67,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_F12 = 69,

    SDL_SCANCODE_PRINTSCREEN = 70,
    SDL_SCANCODE_SCROLLLOCK = 71,
    SDL_SCANCODE_PAUSE = 72,
    SDL_SCANCODE_INSERT = 73, /**< insert on PC, help on some Mac keyboards (but
    								   does send code 73, not 117) */
    SDL_SCANCODE_HOME = 74,
    SDL_SCANCODE_PAGEUP = 75,
    SDL_SCANCODE_DELETE = 76,
    SDL_SCANCODE_END = 77,
    SDL_SCANCODE_PAGEDOWN = 78,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,

    SDL_SCANCODE_NUMLOCKCLEAR = 83, /**< num lock on PC, clear on Mac keyboards
    									 */
    SDL_SCANCODE_KP_DIVIDE = 84,
    SDL_SCANCODE_KP_MULTIPLY = 85,
    SDL_SCANCODE_KP_MINUS = 86,
    SDL_SCANCODE_KP_PLUS = 87,
    SDL_SCANCODE_KP_ENTER = 88,
    SDL_SCANCODE_KP_1 = 89,
    SDL_SCANCODE_KP_2 = 90,
    SDL_SCANCODE_KP_3 = 91,
    SDL_SCANCODE_KP_4 = 92,
    SDL_SCANCODE_KP_5 = 93,
    SDL_SCANCODE_KP_6 = 94,
    SDL_SCANCODE_KP_7 = 95,
    SDL_SCANCODE_KP_8 = 96,
    SDL_SCANCODE_KP_9 = 97,
    SDL_SCANCODE_KP_0 = 98,
    SDL_SCANCODE_KP_PERIOD = 99,

    SDL_SCANCODE_NONUSBACKSLASH = 100, /**< This is the additional key that ISO
    										*   keyboards have over ANSI ones,
    										*   located between left shift and Y.
    										*   Produces GRAVE ACCENT and TILDE in a
    										*   US or UK Mac layout, REVERSE SOLIDUS
    										*   (backslash) and VERTICAL LINE in a
    										*   US or UK Windows layout, and
    										*   LESS-THAN SIGN and GREATER-THAN SIGN
    										*   in a Swiss German, German, or French
    										*   layout. */
    SDL_SCANCODE_APPLICATION = 101, /**< windows contextual menu, compose */
    SDL_SCANCODE_POWER = 102, /**< The USB document says this is a status flag,
    							   *   not a physical key - but some Mac keyboards
    							   *   do have a power key. */
    SDL_SCANCODE_KP_EQUALS = 103,
    SDL_SCANCODE_F13 = 104,
    SDL_SCANCODE_F14 = 105,
    SDL_SCANCODE_F15 = 106,
    SDL_SCANCODE_F16 = 107,
    SDL_SCANCODE_F17 = 108,
    SDL_SCANCODE_F18 = 109,
    SDL_SCANCODE_F19 = 110,
    SDL_SCANCODE_F20 = 111,
    SDL_SCANCODE_F21 = 112,
    SDL_SCANCODE_F22 = 113,
    SDL_SCANCODE_F23 = 114,
    SDL_SCANCODE_F24 = 115,
    SDL_SCANCODE_EXECUTE = 116,
    SDL_SCANCODE_HELP = 117,
    SDL_SCANCODE_MENU = 118,
    SDL_SCANCODE_SELECT = 119,
    SDL_SCANCODE_STOP = 120,
    SDL_SCANCODE_AGAIN = 121, /**< redo */
    SDL_SCANCODE_UNDO = 122,
    SDL_SCANCODE_CUT = 123,
    SDL_SCANCODE_COPY = 124,
    SDL_SCANCODE_PASTE = 125,
    SDL_SCANCODE_FIND = 126,
    SDL_SCANCODE_MUTE = 127,
    SDL_SCANCODE_VOLUMEUP = 128,
    SDL_SCANCODE_VOLUMEDOWN = 129,
    /* not sure whether there's a reason to enable these */
    /*     SDL_SCANCODE_LOCKINGCAPSLOCK = 130,  */
    /*     SDL_SCANCODE_LOCKINGNUMLOCK = 131, */
    /*     SDL_SCANCODE_LOCKINGSCROLLLOCK = 132, */
    SDL_SCANCODE_KP_COMMA = 133,
    SDL_SCANCODE_KP_EQUALSAS400 = 134,

    SDL_SCANCODE_INTERNATIONAL1 = 135, /**< used on Asian keyboards, see
    											footnotes in USB doc */
    SDL_SCANCODE_INTERNATIONAL2 = 136,
    SDL_SCANCODE_INTERNATIONAL3 = 137, /**< Yen */
    SDL_SCANCODE_INTERNATIONAL4 = 138,
    SDL_SCANCODE_INTERNATIONAL5 = 139,
    SDL_SCANCODE_INTERNATIONAL6 = 140,
    SDL_SCANCODE_INTERNATIONAL7 = 141,
    SDL_SCANCODE_INTERNATIONAL8 = 142,
    SDL_SCANCODE_INTERNATIONAL9 = 143,
    SDL_SCANCODE_LANG1 = 144, /**< Hangul/English toggle */
    SDL_SCANCODE_LANG2 = 145, /**< Hanja conversion */
    SDL_SCANCODE_LANG3 = 146, /**< Katakana */
    SDL_SCANCODE_LANG4 = 147, /**< Hiragana */
    SDL_SCANCODE_LANG5 = 148, /**< Zenkaku/Hankaku */
    SDL_SCANCODE_LANG6 = 149, /**< reserved */
    SDL_SCANCODE_LANG7 = 150, /**< reserved */
    SDL_SCANCODE_LANG8 = 151, /**< reserved */
    SDL_SCANCODE_LANG9 = 152, /**< reserved */

    SDL_SCANCODE_ALTERASE = 153, /**< Erase-Eaze */
    SDL_SCANCODE_SYSREQ = 154,
    SDL_SCANCODE_CANCEL = 155,
    SDL_SCANCODE_CLEAR = 156,
    SDL_SCANCODE_PRIOR = 157,
    SDL_SCANCODE_RETURN2 = 158,
    SDL_SCANCODE_SEPARATOR = 159,
    SDL_SCANCODE_OUT = 160,
    SDL_SCANCODE_OPER = 161,
    SDL_SCANCODE_CLEARAGAIN = 162,
    SDL_SCANCODE_CRSEL = 163,
    SDL_SCANCODE_EXSEL = 164,

    SDL_SCANCODE_KP_00 = 176,
    SDL_SCANCODE_KP_000 = 177,
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
    SDL_SCANCODE_DECIMALSEPARATOR = 179,
    SDL_SCANCODE_CURRENCYUNIT = 180,
    SDL_SCANCODE_CURRENCYSUBUNIT = 181,
    SDL_SCANCODE_KP_LEFTPAREN = 182,
    SDL_SCANCODE_KP_RIGHTPAREN = 183,
    SDL_SCANCODE_KP_LEFTBRACE = 184,
    SDL_SCANCODE_KP_RIGHTBRACE = 185,
    SDL_SCANCODE_KP_TAB = 186,
    SDL_SCANCODE_KP_BACKSPACE = 187,
    SDL_SCANCODE_KP_A = 188,
    SDL_SCANCODE_KP_B = 189,
    SDL_SCANCODE_KP_C = 190,
    SDL_SCANCODE_KP_D = 191,
    SDL_SCANCODE_KP_E = 192,
    SDL_SCANCODE_KP_F = 193,
    SDL_SCANCODE_KP_XOR = 194,
    SDL_SCANCODE_KP_POWER = 195,
    SDL_SCANCODE_KP_PERCENT = 196,
    SDL_SCANCODE_KP_LESS = 197,
    SDL_SCANCODE_KP_GREATER = 198,
    SDL_SCANCODE_KP_AMPERSAND = 199,
    SDL_SCANCODE_KP_DBLAMPERSAND = 200,
    SDL_SCANCODE_KP_VERTICALBAR = 201,
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
    SDL_SCANCODE_KP_COLON = 203,
    SDL_SCANCODE_KP_HASH = 204,
    SDL_SCANCODE_KP_SPACE = 205,
    SDL_SCANCODE_KP_AT = 206,
    SDL_SCANCODE_KP_EXCLAM = 207,
    SDL_SCANCODE_KP_MEMSTORE = 208,
    SDL_SCANCODE_KP_MEMRECALL = 209,
    SDL_SCANCODE_KP_MEMCLEAR = 210,
    SDL_SCANCODE_KP_MEMADD = 211,
    SDL_SCANCODE_KP_MEMSUBTRACT = 212,
    SDL_SCANCODE_KP_MEMMULTIPLY = 213,
    SDL_SCANCODE_KP_MEMDIVIDE = 214,
    SDL_SCANCODE_KP_PLUSMINUS = 215,
    SDL_SCANCODE_KP_CLEAR = 216,
    SDL_SCANCODE_KP_CLEARENTRY = 217,
    SDL_SCANCODE_KP_BINARY = 218,
    SDL_SCANCODE_KP_OCTAL = 219,
    SDL_SCANCODE_KP_DECIMAL = 220,
    SDL_SCANCODE_KP_HEXADECIMAL = 221,

    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226, /**< alt, option */
    SDL_SCANCODE_LGUI = 227, /**< windows, command (apple), meta */
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230, /**< alt gr, option */
    SDL_SCANCODE_RGUI = 231, /**< windows, command (apple), meta */

    SDL_SCANCODE_MODE = 257, /**< I'm not sure if this is really not covered
    								 *   by any of the above, but since there's a
    								 *   special KMOD_MODE for it I'm adding it here
    								 */

    /* @} */ /* Usage page 0x07 */

    /**
    	 *  \name Usage page 0x0C
    	 *
    	 *  These values are mapped from usage page 0x0C (USB consumer page).
    	 */
    /* @{ */

    SDL_SCANCODE_AUDIONEXT = 258,
    SDL_SCANCODE_AUDIOPREV = 259,
    SDL_SCANCODE_AUDIOSTOP = 260,
    SDL_SCANCODE_AUDIOPLAY = 261,
    SDL_SCANCODE_AUDIOMUTE = 262,
    SDL_SCANCODE_MEDIASELECT = 263,
    SDL_SCANCODE_WWW = 264,
    SDL_SCANCODE_MAIL = 265,
    SDL_SCANCODE_CALCULATOR = 266,
    SDL_SCANCODE_COMPUTER = 267,
    SDL_SCANCODE_AC_SEARCH = 268,
    SDL_SCANCODE_AC_HOME = 269,
    SDL_SCANCODE_AC_BACK = 270,
    SDL_SCANCODE_AC_FORWARD = 271,
    SDL_SCANCODE_AC_STOP = 272,
    SDL_SCANCODE_AC_REFRESH = 273,
    SDL_SCANCODE_AC_BOOKMARKS = 274,

    /* @} */ /* Usage page 0x0C */

    /**
    	 *  \name Walther keys
    	 *
    	 *  These are values that Christian Walther added (for mac keyboard?).
    	 */
    /* @{ */

    SDL_SCANCODE_BRIGHTNESSDOWN = 275,
    SDL_SCANCODE_BRIGHTNESSUP = 276,
    SDL_SCANCODE_DISPLAYSWITCH = 277, /**< display mirroring/dual display
    										   switch, video mode switch */
    SDL_SCANCODE_KBDILLUMTOGGLE = 278,
    SDL_SCANCODE_KBDILLUMDOWN = 279,
    SDL_SCANCODE_KBDILLUMUP = 280,
    SDL_SCANCODE_EJECT = 281,
    SDL_SCANCODE_SLEEP = 282,

    SDL_SCANCODE_APP1 = 283,
    SDL_SCANCODE_APP2 = 284,

    /* @} */ /* Walther keys */

    /**
    	 *  \name Usage page 0x0C (additional media keys)
    	 *
    	 *  These values are mapped from usage page 0x0C (USB consumer page).
    	 */
    /* @{ */

    SDL_SCANCODE_AUDIOREWIND = 285,
    SDL_SCANCODE_AUDIOFASTFORWARD = 286,

    /* @} */ /* Usage page 0x0C (additional media keys) */

    /* Add any other keys here. */

    SDL_NUM_SCANCODES = 512 /**< not a key, just marks the number of scancodes
    								 for array bounds */
}

enum SDL_SCANCODE_UNKNOWN = SDL_Scancode.SDL_SCANCODE_UNKNOWN;
enum SDL_SCANCODE_A = SDL_Scancode.SDL_SCANCODE_A;
enum SDL_SCANCODE_B = SDL_Scancode.SDL_SCANCODE_B;
enum SDL_SCANCODE_C = SDL_Scancode.SDL_SCANCODE_C;
enum SDL_SCANCODE_D = SDL_Scancode.SDL_SCANCODE_D;
enum SDL_SCANCODE_E = SDL_Scancode.SDL_SCANCODE_E;
enum SDL_SCANCODE_F = SDL_Scancode.SDL_SCANCODE_F;
enum SDL_SCANCODE_G = SDL_Scancode.SDL_SCANCODE_G;
enum SDL_SCANCODE_H = SDL_Scancode.SDL_SCANCODE_H;
enum SDL_SCANCODE_I = SDL_Scancode.SDL_SCANCODE_I;
enum SDL_SCANCODE_J = SDL_Scancode.SDL_SCANCODE_J;
enum SDL_SCANCODE_K = SDL_Scancode.SDL_SCANCODE_K;
enum SDL_SCANCODE_L = SDL_Scancode.SDL_SCANCODE_L;
enum SDL_SCANCODE_M = SDL_Scancode.SDL_SCANCODE_M;
enum SDL_SCANCODE_N = SDL_Scancode.SDL_SCANCODE_N;
enum SDL_SCANCODE_O = SDL_Scancode.SDL_SCANCODE_O;
enum SDL_SCANCODE_P = SDL_Scancode.SDL_SCANCODE_P;
enum SDL_SCANCODE_Q = SDL_Scancode.SDL_SCANCODE_Q;
enum SDL_SCANCODE_R = SDL_Scancode.SDL_SCANCODE_R;
enum SDL_SCANCODE_S = SDL_Scancode.SDL_SCANCODE_S;
enum SDL_SCANCODE_T = SDL_Scancode.SDL_SCANCODE_T;
enum SDL_SCANCODE_U = SDL_Scancode.SDL_SCANCODE_U;
enum SDL_SCANCODE_V = SDL_Scancode.SDL_SCANCODE_V;
enum SDL_SCANCODE_W = SDL_Scancode.SDL_SCANCODE_W;
enum SDL_SCANCODE_X = SDL_Scancode.SDL_SCANCODE_X;
enum SDL_SCANCODE_Y = SDL_Scancode.SDL_SCANCODE_Y;
enum SDL_SCANCODE_Z = SDL_Scancode.SDL_SCANCODE_Z;
enum SDL_SCANCODE_1 = SDL_Scancode.SDL_SCANCODE_1;
enum SDL_SCANCODE_2 = SDL_Scancode.SDL_SCANCODE_2;
enum SDL_SCANCODE_3 = SDL_Scancode.SDL_SCANCODE_3;
enum SDL_SCANCODE_4 = SDL_Scancode.SDL_SCANCODE_4;
enum SDL_SCANCODE_5 = SDL_Scancode.SDL_SCANCODE_5;
enum SDL_SCANCODE_6 = SDL_Scancode.SDL_SCANCODE_6;
enum SDL_SCANCODE_7 = SDL_Scancode.SDL_SCANCODE_7;
enum SDL_SCANCODE_8 = SDL_Scancode.SDL_SCANCODE_8;
enum SDL_SCANCODE_9 = SDL_Scancode.SDL_SCANCODE_9;
enum SDL_SCANCODE_0 = SDL_Scancode.SDL_SCANCODE_0;
enum SDL_SCANCODE_RETURN = SDL_Scancode.SDL_SCANCODE_RETURN;
enum SDL_SCANCODE_ESCAPE = SDL_Scancode.SDL_SCANCODE_ESCAPE;
enum SDL_SCANCODE_BACKSPACE = SDL_Scancode.SDL_SCANCODE_BACKSPACE;
enum SDL_SCANCODE_TAB = SDL_Scancode.SDL_SCANCODE_TAB;
enum SDL_SCANCODE_SPACE = SDL_Scancode.SDL_SCANCODE_SPACE;
enum SDL_SCANCODE_MINUS = SDL_Scancode.SDL_SCANCODE_MINUS;
enum SDL_SCANCODE_EQUALS = SDL_Scancode.SDL_SCANCODE_EQUALS;
enum SDL_SCANCODE_LEFTBRACKET = SDL_Scancode.SDL_SCANCODE_LEFTBRACKET;
enum SDL_SCANCODE_RIGHTBRACKET = SDL_Scancode.SDL_SCANCODE_RIGHTBRACKET;
enum SDL_SCANCODE_BACKSLASH = SDL_Scancode.SDL_SCANCODE_BACKSLASH;
enum SDL_SCANCODE_NONUSHASH = SDL_Scancode.SDL_SCANCODE_NONUSHASH;
enum SDL_SCANCODE_SEMICOLON = SDL_Scancode.SDL_SCANCODE_SEMICOLON;
enum SDL_SCANCODE_APOSTROPHE = SDL_Scancode.SDL_SCANCODE_APOSTROPHE;
enum SDL_SCANCODE_GRAVE = SDL_Scancode.SDL_SCANCODE_GRAVE;
enum SDL_SCANCODE_COMMA = SDL_Scancode.SDL_SCANCODE_COMMA;
enum SDL_SCANCODE_PERIOD = SDL_Scancode.SDL_SCANCODE_PERIOD;
enum SDL_SCANCODE_SLASH = SDL_Scancode.SDL_SCANCODE_SLASH;
enum SDL_SCANCODE_CAPSLOCK = SDL_Scancode.SDL_SCANCODE_CAPSLOCK;
enum SDL_SCANCODE_F1 = SDL_Scancode.SDL_SCANCODE_F1;
enum SDL_SCANCODE_F2 = SDL_Scancode.SDL_SCANCODE_F2;
enum SDL_SCANCODE_F3 = SDL_Scancode.SDL_SCANCODE_F3;
enum SDL_SCANCODE_F4 = SDL_Scancode.SDL_SCANCODE_F4;
enum SDL_SCANCODE_F5 = SDL_Scancode.SDL_SCANCODE_F5;
enum SDL_SCANCODE_F6 = SDL_Scancode.SDL_SCANCODE_F6;
enum SDL_SCANCODE_F7 = SDL_Scancode.SDL_SCANCODE_F7;
enum SDL_SCANCODE_F8 = SDL_Scancode.SDL_SCANCODE_F8;
enum SDL_SCANCODE_F9 = SDL_Scancode.SDL_SCANCODE_F9;
enum SDL_SCANCODE_F10 = SDL_Scancode.SDL_SCANCODE_F10;
enum SDL_SCANCODE_F11 = SDL_Scancode.SDL_SCANCODE_F11;
enum SDL_SCANCODE_F12 = SDL_Scancode.SDL_SCANCODE_F12;
enum SDL_SCANCODE_PRINTSCREEN = SDL_Scancode.SDL_SCANCODE_PRINTSCREEN;
enum SDL_SCANCODE_SCROLLLOCK = SDL_Scancode.SDL_SCANCODE_SCROLLLOCK;
enum SDL_SCANCODE_PAUSE = SDL_Scancode.SDL_SCANCODE_PAUSE;
enum SDL_SCANCODE_INSERT = SDL_Scancode.SDL_SCANCODE_INSERT;
enum SDL_SCANCODE_HOME = SDL_Scancode.SDL_SCANCODE_HOME;
enum SDL_SCANCODE_PAGEUP = SDL_Scancode.SDL_SCANCODE_PAGEUP;
enum SDL_SCANCODE_DELETE = SDL_Scancode.SDL_SCANCODE_DELETE;
enum SDL_SCANCODE_END = SDL_Scancode.SDL_SCANCODE_END;
enum SDL_SCANCODE_PAGEDOWN = SDL_Scancode.SDL_SCANCODE_PAGEDOWN;
enum SDL_SCANCODE_RIGHT = SDL_Scancode.SDL_SCANCODE_RIGHT;
enum SDL_SCANCODE_LEFT = SDL_Scancode.SDL_SCANCODE_LEFT;
enum SDL_SCANCODE_DOWN = SDL_Scancode.SDL_SCANCODE_DOWN;
enum SDL_SCANCODE_UP = SDL_Scancode.SDL_SCANCODE_UP;
enum SDL_SCANCODE_NUMLOCKCLEAR = SDL_Scancode.SDL_SCANCODE_NUMLOCKCLEAR;
enum SDL_SCANCODE_KP_DIVIDE = SDL_Scancode.SDL_SCANCODE_KP_DIVIDE;
enum SDL_SCANCODE_KP_MULTIPLY = SDL_Scancode.SDL_SCANCODE_KP_MULTIPLY;
enum SDL_SCANCODE_KP_MINUS = SDL_Scancode.SDL_SCANCODE_KP_MINUS;
enum SDL_SCANCODE_KP_PLUS = SDL_Scancode.SDL_SCANCODE_KP_PLUS;
enum SDL_SCANCODE_KP_ENTER = SDL_Scancode.SDL_SCANCODE_KP_ENTER;
enum SDL_SCANCODE_KP_1 = SDL_Scancode.SDL_SCANCODE_KP_1;
enum SDL_SCANCODE_KP_2 = SDL_Scancode.SDL_SCANCODE_KP_2;
enum SDL_SCANCODE_KP_3 = SDL_Scancode.SDL_SCANCODE_KP_3;
enum SDL_SCANCODE_KP_4 = SDL_Scancode.SDL_SCANCODE_KP_4;
enum SDL_SCANCODE_KP_5 = SDL_Scancode.SDL_SCANCODE_KP_5;
enum SDL_SCANCODE_KP_6 = SDL_Scancode.SDL_SCANCODE_KP_6;
enum SDL_SCANCODE_KP_7 = SDL_Scancode.SDL_SCANCODE_KP_7;
enum SDL_SCANCODE_KP_8 = SDL_Scancode.SDL_SCANCODE_KP_8;
enum SDL_SCANCODE_KP_9 = SDL_Scancode.SDL_SCANCODE_KP_9;
enum SDL_SCANCODE_KP_0 = SDL_Scancode.SDL_SCANCODE_KP_0;
enum SDL_SCANCODE_KP_PERIOD = SDL_Scancode.SDL_SCANCODE_KP_PERIOD;
enum SDL_SCANCODE_NONUSBACKSLASH = SDL_Scancode.SDL_SCANCODE_NONUSBACKSLASH;
enum SDL_SCANCODE_APPLICATION = SDL_Scancode.SDL_SCANCODE_APPLICATION;
enum SDL_SCANCODE_POWER = SDL_Scancode.SDL_SCANCODE_POWER;
enum SDL_SCANCODE_KP_EQUALS = SDL_Scancode.SDL_SCANCODE_KP_EQUALS;
enum SDL_SCANCODE_F13 = SDL_Scancode.SDL_SCANCODE_F13;
enum SDL_SCANCODE_F14 = SDL_Scancode.SDL_SCANCODE_F14;
enum SDL_SCANCODE_F15 = SDL_Scancode.SDL_SCANCODE_F15;
enum SDL_SCANCODE_F16 = SDL_Scancode.SDL_SCANCODE_F16;
enum SDL_SCANCODE_F17 = SDL_Scancode.SDL_SCANCODE_F17;
enum SDL_SCANCODE_F18 = SDL_Scancode.SDL_SCANCODE_F18;
enum SDL_SCANCODE_F19 = SDL_Scancode.SDL_SCANCODE_F19;
enum SDL_SCANCODE_F20 = SDL_Scancode.SDL_SCANCODE_F20;
enum SDL_SCANCODE_F21 = SDL_Scancode.SDL_SCANCODE_F21;
enum SDL_SCANCODE_F22 = SDL_Scancode.SDL_SCANCODE_F22;
enum SDL_SCANCODE_F23 = SDL_Scancode.SDL_SCANCODE_F23;
enum SDL_SCANCODE_F24 = SDL_Scancode.SDL_SCANCODE_F24;
enum SDL_SCANCODE_EXECUTE = SDL_Scancode.SDL_SCANCODE_EXECUTE;
enum SDL_SCANCODE_HELP = SDL_Scancode.SDL_SCANCODE_HELP;
enum SDL_SCANCODE_MENU = SDL_Scancode.SDL_SCANCODE_MENU;
enum SDL_SCANCODE_SELECT = SDL_Scancode.SDL_SCANCODE_SELECT;
enum SDL_SCANCODE_STOP = SDL_Scancode.SDL_SCANCODE_STOP;
enum SDL_SCANCODE_AGAIN = SDL_Scancode.SDL_SCANCODE_AGAIN;
enum SDL_SCANCODE_UNDO = SDL_Scancode.SDL_SCANCODE_UNDO;
enum SDL_SCANCODE_CUT = SDL_Scancode.SDL_SCANCODE_CUT;
enum SDL_SCANCODE_COPY = SDL_Scancode.SDL_SCANCODE_COPY;
enum SDL_SCANCODE_PASTE = SDL_Scancode.SDL_SCANCODE_PASTE;
enum SDL_SCANCODE_FIND = SDL_Scancode.SDL_SCANCODE_FIND;
enum SDL_SCANCODE_MUTE = SDL_Scancode.SDL_SCANCODE_MUTE;
enum SDL_SCANCODE_VOLUMEUP = SDL_Scancode.SDL_SCANCODE_VOLUMEUP;
enum SDL_SCANCODE_VOLUMEDOWN = SDL_Scancode.SDL_SCANCODE_VOLUMEDOWN;
enum SDL_SCANCODE_KP_COMMA = SDL_Scancode.SDL_SCANCODE_KP_COMMA;
enum SDL_SCANCODE_KP_EQUALSAS400 = SDL_Scancode.SDL_SCANCODE_KP_EQUALSAS400;
enum SDL_SCANCODE_INTERNATIONAL1 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL1;
enum SDL_SCANCODE_INTERNATIONAL2 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL2;
enum SDL_SCANCODE_INTERNATIONAL3 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL3;
enum SDL_SCANCODE_INTERNATIONAL4 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL4;
enum SDL_SCANCODE_INTERNATIONAL5 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL5;
enum SDL_SCANCODE_INTERNATIONAL6 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL6;
enum SDL_SCANCODE_INTERNATIONAL7 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL7;
enum SDL_SCANCODE_INTERNATIONAL8 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL8;
enum SDL_SCANCODE_INTERNATIONAL9 = SDL_Scancode.SDL_SCANCODE_INTERNATIONAL9;
enum SDL_SCANCODE_LANG1 = SDL_Scancode.SDL_SCANCODE_LANG1;
enum SDL_SCANCODE_LANG2 = SDL_Scancode.SDL_SCANCODE_LANG2;
enum SDL_SCANCODE_LANG3 = SDL_Scancode.SDL_SCANCODE_LANG3;
enum SDL_SCANCODE_LANG4 = SDL_Scancode.SDL_SCANCODE_LANG4;
enum SDL_SCANCODE_LANG5 = SDL_Scancode.SDL_SCANCODE_LANG5;
enum SDL_SCANCODE_LANG6 = SDL_Scancode.SDL_SCANCODE_LANG6;
enum SDL_SCANCODE_LANG7 = SDL_Scancode.SDL_SCANCODE_LANG7;
enum SDL_SCANCODE_LANG8 = SDL_Scancode.SDL_SCANCODE_LANG8;
enum SDL_SCANCODE_LANG9 = SDL_Scancode.SDL_SCANCODE_LANG9;
enum SDL_SCANCODE_ALTERASE = SDL_Scancode.SDL_SCANCODE_ALTERASE;
enum SDL_SCANCODE_SYSREQ = SDL_Scancode.SDL_SCANCODE_SYSREQ;
enum SDL_SCANCODE_CANCEL = SDL_Scancode.SDL_SCANCODE_CANCEL;
enum SDL_SCANCODE_CLEAR = SDL_Scancode.SDL_SCANCODE_CLEAR;
enum SDL_SCANCODE_PRIOR = SDL_Scancode.SDL_SCANCODE_PRIOR;
enum SDL_SCANCODE_RETURN2 = SDL_Scancode.SDL_SCANCODE_RETURN2;
enum SDL_SCANCODE_SEPARATOR = SDL_Scancode.SDL_SCANCODE_SEPARATOR;
enum SDL_SCANCODE_OUT = SDL_Scancode.SDL_SCANCODE_OUT;
enum SDL_SCANCODE_OPER = SDL_Scancode.SDL_SCANCODE_OPER;
enum SDL_SCANCODE_CLEARAGAIN = SDL_Scancode.SDL_SCANCODE_CLEARAGAIN;
enum SDL_SCANCODE_CRSEL = SDL_Scancode.SDL_SCANCODE_CRSEL;
enum SDL_SCANCODE_EXSEL = SDL_Scancode.SDL_SCANCODE_EXSEL;
enum SDL_SCANCODE_KP_00 = SDL_Scancode.SDL_SCANCODE_KP_00;
enum SDL_SCANCODE_KP_000 = SDL_Scancode.SDL_SCANCODE_KP_000;
enum SDL_SCANCODE_THOUSANDSSEPARATOR = SDL_Scancode.SDL_SCANCODE_THOUSANDSSEPARATOR;
enum SDL_SCANCODE_DECIMALSEPARATOR = SDL_Scancode.SDL_SCANCODE_DECIMALSEPARATOR;
enum SDL_SCANCODE_CURRENCYUNIT = SDL_Scancode.SDL_SCANCODE_CURRENCYUNIT;
enum SDL_SCANCODE_CURRENCYSUBUNIT = SDL_Scancode.SDL_SCANCODE_CURRENCYSUBUNIT;
enum SDL_SCANCODE_KP_LEFTPAREN = SDL_Scancode.SDL_SCANCODE_KP_LEFTPAREN;
enum SDL_SCANCODE_KP_RIGHTPAREN = SDL_Scancode.SDL_SCANCODE_KP_RIGHTPAREN;
enum SDL_SCANCODE_KP_LEFTBRACE = SDL_Scancode.SDL_SCANCODE_KP_LEFTBRACE;
enum SDL_SCANCODE_KP_RIGHTBRACE = SDL_Scancode.SDL_SCANCODE_KP_RIGHTBRACE;
enum SDL_SCANCODE_KP_TAB = SDL_Scancode.SDL_SCANCODE_KP_TAB;
enum SDL_SCANCODE_KP_BACKSPACE = SDL_Scancode.SDL_SCANCODE_KP_BACKSPACE;
enum SDL_SCANCODE_KP_A = SDL_Scancode.SDL_SCANCODE_KP_A;
enum SDL_SCANCODE_KP_B = SDL_Scancode.SDL_SCANCODE_KP_B;
enum SDL_SCANCODE_KP_C = SDL_Scancode.SDL_SCANCODE_KP_C;
enum SDL_SCANCODE_KP_D = SDL_Scancode.SDL_SCANCODE_KP_D;
enum SDL_SCANCODE_KP_E = SDL_Scancode.SDL_SCANCODE_KP_E;
enum SDL_SCANCODE_KP_F = SDL_Scancode.SDL_SCANCODE_KP_F;
enum SDL_SCANCODE_KP_XOR = SDL_Scancode.SDL_SCANCODE_KP_XOR;
enum SDL_SCANCODE_KP_POWER = SDL_Scancode.SDL_SCANCODE_KP_POWER;
enum SDL_SCANCODE_KP_PERCENT = SDL_Scancode.SDL_SCANCODE_KP_PERCENT;
enum SDL_SCANCODE_KP_LESS = SDL_Scancode.SDL_SCANCODE_KP_LESS;
enum SDL_SCANCODE_KP_GREATER = SDL_Scancode.SDL_SCANCODE_KP_GREATER;
enum SDL_SCANCODE_KP_AMPERSAND = SDL_Scancode.SDL_SCANCODE_KP_AMPERSAND;
enum SDL_SCANCODE_KP_DBLAMPERSAND = SDL_Scancode.SDL_SCANCODE_KP_DBLAMPERSAND;
enum SDL_SCANCODE_KP_VERTICALBAR = SDL_Scancode.SDL_SCANCODE_KP_VERTICALBAR;
enum SDL_SCANCODE_KP_DBLVERTICALBAR = SDL_Scancode.SDL_SCANCODE_KP_DBLVERTICALBAR;
enum SDL_SCANCODE_KP_COLON = SDL_Scancode.SDL_SCANCODE_KP_COLON;
enum SDL_SCANCODE_KP_HASH = SDL_Scancode.SDL_SCANCODE_KP_HASH;
enum SDL_SCANCODE_KP_SPACE = SDL_Scancode.SDL_SCANCODE_KP_SPACE;
enum SDL_SCANCODE_KP_AT = SDL_Scancode.SDL_SCANCODE_KP_AT;
enum SDL_SCANCODE_KP_EXCLAM = SDL_Scancode.SDL_SCANCODE_KP_EXCLAM;
enum SDL_SCANCODE_KP_MEMSTORE = SDL_Scancode.SDL_SCANCODE_KP_MEMSTORE;
enum SDL_SCANCODE_KP_MEMRECALL = SDL_Scancode.SDL_SCANCODE_KP_MEMRECALL;
enum SDL_SCANCODE_KP_MEMCLEAR = SDL_Scancode.SDL_SCANCODE_KP_MEMCLEAR;
enum SDL_SCANCODE_KP_MEMADD = SDL_Scancode.SDL_SCANCODE_KP_MEMADD;
enum SDL_SCANCODE_KP_MEMSUBTRACT = SDL_Scancode.SDL_SCANCODE_KP_MEMSUBTRACT;
enum SDL_SCANCODE_KP_MEMMULTIPLY = SDL_Scancode.SDL_SCANCODE_KP_MEMMULTIPLY;
enum SDL_SCANCODE_KP_MEMDIVIDE = SDL_Scancode.SDL_SCANCODE_KP_MEMDIVIDE;
enum SDL_SCANCODE_KP_PLUSMINUS = SDL_Scancode.SDL_SCANCODE_KP_PLUSMINUS;
enum SDL_SCANCODE_KP_CLEAR = SDL_Scancode.SDL_SCANCODE_KP_CLEAR;
enum SDL_SCANCODE_KP_CLEARENTRY = SDL_Scancode.SDL_SCANCODE_KP_CLEARENTRY;
enum SDL_SCANCODE_KP_BINARY = SDL_Scancode.SDL_SCANCODE_KP_BINARY;
enum SDL_SCANCODE_KP_OCTAL = SDL_Scancode.SDL_SCANCODE_KP_OCTAL;
enum SDL_SCANCODE_KP_DECIMAL = SDL_Scancode.SDL_SCANCODE_KP_DECIMAL;
enum SDL_SCANCODE_KP_HEXADECIMAL = SDL_Scancode.SDL_SCANCODE_KP_HEXADECIMAL;
enum SDL_SCANCODE_LCTRL = SDL_Scancode.SDL_SCANCODE_LCTRL;
enum SDL_SCANCODE_LSHIFT = SDL_Scancode.SDL_SCANCODE_LSHIFT;
enum SDL_SCANCODE_LALT = SDL_Scancode.SDL_SCANCODE_LALT;
enum SDL_SCANCODE_LGUI = SDL_Scancode.SDL_SCANCODE_LGUI;
enum SDL_SCANCODE_RCTRL = SDL_Scancode.SDL_SCANCODE_RCTRL;
enum SDL_SCANCODE_RSHIFT = SDL_Scancode.SDL_SCANCODE_RSHIFT;
enum SDL_SCANCODE_RALT = SDL_Scancode.SDL_SCANCODE_RALT;
enum SDL_SCANCODE_RGUI = SDL_Scancode.SDL_SCANCODE_RGUI;
enum SDL_SCANCODE_MODE = SDL_Scancode.SDL_SCANCODE_MODE;
enum SDL_SCANCODE_AUDIONEXT = SDL_Scancode.SDL_SCANCODE_AUDIONEXT;
enum SDL_SCANCODE_AUDIOPREV = SDL_Scancode.SDL_SCANCODE_AUDIOPREV;
enum SDL_SCANCODE_AUDIOSTOP = SDL_Scancode.SDL_SCANCODE_AUDIOSTOP;
enum SDL_SCANCODE_AUDIOPLAY = SDL_Scancode.SDL_SCANCODE_AUDIOPLAY;
enum SDL_SCANCODE_AUDIOMUTE = SDL_Scancode.SDL_SCANCODE_AUDIOMUTE;
enum SDL_SCANCODE_MEDIASELECT = SDL_Scancode.SDL_SCANCODE_MEDIASELECT;
enum SDL_SCANCODE_WWW = SDL_Scancode.SDL_SCANCODE_WWW;
enum SDL_SCANCODE_MAIL = SDL_Scancode.SDL_SCANCODE_MAIL;
enum SDL_SCANCODE_CALCULATOR = SDL_Scancode.SDL_SCANCODE_CALCULATOR;
enum SDL_SCANCODE_COMPUTER = SDL_Scancode.SDL_SCANCODE_COMPUTER;
enum SDL_SCANCODE_AC_SEARCH = SDL_Scancode.SDL_SCANCODE_AC_SEARCH;
enum SDL_SCANCODE_AC_HOME = SDL_Scancode.SDL_SCANCODE_AC_HOME;
enum SDL_SCANCODE_AC_BACK = SDL_Scancode.SDL_SCANCODE_AC_BACK;
enum SDL_SCANCODE_AC_FORWARD = SDL_Scancode.SDL_SCANCODE_AC_FORWARD;
enum SDL_SCANCODE_AC_STOP = SDL_Scancode.SDL_SCANCODE_AC_STOP;
enum SDL_SCANCODE_AC_REFRESH = SDL_Scancode.SDL_SCANCODE_AC_REFRESH;
enum SDL_SCANCODE_AC_BOOKMARKS = SDL_Scancode.SDL_SCANCODE_AC_BOOKMARKS;
enum SDL_SCANCODE_BRIGHTNESSDOWN = SDL_Scancode.SDL_SCANCODE_BRIGHTNESSDOWN;
enum SDL_SCANCODE_BRIGHTNESSUP = SDL_Scancode.SDL_SCANCODE_BRIGHTNESSUP;
enum SDL_SCANCODE_DISPLAYSWITCH = SDL_Scancode.SDL_SCANCODE_DISPLAYSWITCH;
enum SDL_SCANCODE_KBDILLUMTOGGLE = SDL_Scancode.SDL_SCANCODE_KBDILLUMTOGGLE;
enum SDL_SCANCODE_KBDILLUMDOWN = SDL_Scancode.SDL_SCANCODE_KBDILLUMDOWN;
enum SDL_SCANCODE_KBDILLUMUP = SDL_Scancode.SDL_SCANCODE_KBDILLUMUP;
enum SDL_SCANCODE_EJECT = SDL_Scancode.SDL_SCANCODE_EJECT;
enum SDL_SCANCODE_SLEEP = SDL_Scancode.SDL_SCANCODE_SLEEP;
enum SDL_SCANCODE_APP1 = SDL_Scancode.SDL_SCANCODE_APP1;
enum SDL_SCANCODE_APP2 = SDL_Scancode.SDL_SCANCODE_APP2;
enum SDL_SCANCODE_AUDIOREWIND = SDL_Scancode.SDL_SCANCODE_AUDIOREWIND;
enum SDL_SCANCODE_AUDIOFASTFORWARD = SDL_Scancode.SDL_SCANCODE_AUDIOFASTFORWARD;
enum SDL_NUM_SCANCODES = SDL_Scancode.SDL_NUM_SCANCODES;

/* SDL_scancode_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_scancode.h ***/

/**
 *  \brief The SDL virtual key representation.
 *
 *  Values of this type are used to represent keyboard keys using the current
 *  layout of the keyboard.  These values include Unicode values representing
 *  the unmodified character that would be generated by pressing the key, or
 *  an SDLK_* constant for those keys that do not generate characters.
 *
 *  A special exception is the number keys at the top of the keyboard which
 *  always map to SDLK_0...SDLK_9, regardless of layout.
 */
alias SDL_Keycode = int;

enum
{
    SDLK_UNKNOWN = 0,

    SDLK_RETURN = '\r',
    SDLK_ESCAPE = '\033',
    SDLK_BACKSPACE = '\b',
    SDLK_TAB = '\t',
    SDLK_SPACE = ' ',
    SDLK_EXCLAIM = '!',
    SDLK_QUOTEDBL = '"',
    SDLK_HASH = '#',
    SDLK_PERCENT = '%',
    SDLK_DOLLAR = '$',
    SDLK_AMPERSAND = '&',
    SDLK_QUOTE = '\'',
    SDLK_LEFTPAREN = '(',
    SDLK_RIGHTPAREN = ')',
    SDLK_ASTERISK = '*',
    SDLK_PLUS = '+',
    SDLK_COMMA = ',',
    SDLK_MINUS = '-',
    SDLK_PERIOD = '.',
    SDLK_SLASH = '/',
    SDLK_0 = '0',
    SDLK_1 = '1',
    SDLK_2 = '2',
    SDLK_3 = '3',
    SDLK_4 = '4',
    SDLK_5 = '5',
    SDLK_6 = '6',
    SDLK_7 = '7',
    SDLK_8 = '8',
    SDLK_9 = '9',
    SDLK_COLON = ':',
    SDLK_SEMICOLON = ';',
    SDLK_LESS = '<',
    SDLK_EQUALS = '=',
    SDLK_GREATER = '>',
    SDLK_QUESTION = '?',
    SDLK_AT = '@',
    /*
    	   Skip uppercase letters
    	 */
    SDLK_LEFTBRACKET = '[',
    SDLK_BACKSLASH = '\\',
    SDLK_RIGHTBRACKET = ']',
    SDLK_CARET = '^',
    SDLK_UNDERSCORE = '_',
    SDLK_BACKQUOTE = '`',
    SDLK_a = 'a',
    SDLK_b = 'b',
    SDLK_c = 'c',
    SDLK_d = 'd',
    SDLK_e = 'e',
    SDLK_f = 'f',
    SDLK_g = 'g',
    SDLK_h = 'h',
    SDLK_i = 'i',
    SDLK_j = 'j',
    SDLK_k = 'k',
    SDLK_l = 'l',
    SDLK_m = 'm',
    SDLK_n = 'n',
    SDLK_o = 'o',
    SDLK_p = 'p',
    SDLK_q = 'q',
    SDLK_r = 'r',
    SDLK_s = 's',
    SDLK_t = 't',
    SDLK_u = 'u',
    SDLK_v = 'v',
    SDLK_w = 'w',
    SDLK_x = 'x',
    SDLK_y = 'y',
    SDLK_z = 'z',

    SDLK_CAPSLOCK = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CAPSLOCK),

    SDLK_F1 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F1),
    SDLK_F2 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F2),
    SDLK_F3 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F3),
    SDLK_F4 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F4),
    SDLK_F5 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F5),
    SDLK_F6 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F6),
    SDLK_F7 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F7),
    SDLK_F8 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F8),
    SDLK_F9 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F9),
    SDLK_F10 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F10),
    SDLK_F11 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F11),
    SDLK_F12 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F12),

    SDLK_PRINTSCREEN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_PRINTSCREEN),
    SDLK_SCROLLLOCK = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_SCROLLLOCK),
    SDLK_PAUSE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_PAUSE),
    SDLK_INSERT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_INSERT),
    SDLK_HOME = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_HOME),
    SDLK_PAGEUP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_PAGEUP),
    SDLK_DELETE = '\177',
    SDLK_END = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_END),
    SDLK_PAGEDOWN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_PAGEDOWN),
    SDLK_RIGHT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_RIGHT),
    SDLK_LEFT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_LEFT),
    SDLK_DOWN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_DOWN),
    SDLK_UP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_UP),

    SDLK_NUMLOCKCLEAR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_NUMLOCKCLEAR),
    SDLK_KP_DIVIDE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_DIVIDE),
    SDLK_KP_MULTIPLY = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MULTIPLY),
    SDLK_KP_MINUS = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MINUS),
    SDLK_KP_PLUS = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_PLUS),
    SDLK_KP_ENTER = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_ENTER),
    SDLK_KP_1 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_1),
    SDLK_KP_2 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_2),
    SDLK_KP_3 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_3),
    SDLK_KP_4 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_4),
    SDLK_KP_5 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_5),
    SDLK_KP_6 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_6),
    SDLK_KP_7 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_7),
    SDLK_KP_8 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_8),
    SDLK_KP_9 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_9),
    SDLK_KP_0 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_0),
    SDLK_KP_PERIOD = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_PERIOD),

    SDLK_APPLICATION = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_APPLICATION),
    SDLK_POWER = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_POWER),
    SDLK_KP_EQUALS = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_EQUALS),
    SDLK_F13 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F13),
    SDLK_F14 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F14),
    SDLK_F15 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F15),
    SDLK_F16 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F16),
    SDLK_F17 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F17),
    SDLK_F18 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F18),
    SDLK_F19 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F19),
    SDLK_F20 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F20),
    SDLK_F21 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F21),
    SDLK_F22 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F22),
    SDLK_F23 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F23),
    SDLK_F24 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_F24),
    SDLK_EXECUTE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_EXECUTE),
    SDLK_HELP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_HELP),
    SDLK_MENU = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_MENU),
    SDLK_SELECT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_SELECT),
    SDLK_STOP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_STOP),
    SDLK_AGAIN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AGAIN),
    SDLK_UNDO = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_UNDO),
    SDLK_CUT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CUT),
    SDLK_COPY = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_COPY),
    SDLK_PASTE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_PASTE),
    SDLK_FIND = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_FIND),
    SDLK_MUTE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_MUTE),
    SDLK_VOLUMEUP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_VOLUMEUP),
    SDLK_VOLUMEDOWN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_VOLUMEDOWN),
    SDLK_KP_COMMA = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_COMMA),
    SDLK_KP_EQUALSAS400 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_EQUALSAS400),

    SDLK_ALTERASE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_ALTERASE),
    SDLK_SYSREQ = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_SYSREQ),
    SDLK_CANCEL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CANCEL),
    SDLK_CLEAR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CLEAR),
    SDLK_PRIOR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_PRIOR),
    SDLK_RETURN2 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_RETURN2),
    SDLK_SEPARATOR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_SEPARATOR),
    SDLK_OUT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_OUT),
    SDLK_OPER = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_OPER),
    SDLK_CLEARAGAIN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CLEARAGAIN),
    SDLK_CRSEL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CRSEL),
    SDLK_EXSEL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_EXSEL),

    SDLK_KP_00 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_00),
    SDLK_KP_000 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_000),
    SDLK_THOUSANDSSEPARATOR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_THOUSANDSSEPARATOR),
    SDLK_DECIMALSEPARATOR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_DECIMALSEPARATOR),
    SDLK_CURRENCYUNIT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CURRENCYUNIT),
    SDLK_CURRENCYSUBUNIT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CURRENCYSUBUNIT),
    SDLK_KP_LEFTPAREN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_LEFTPAREN),
    SDLK_KP_RIGHTPAREN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_RIGHTPAREN),
    SDLK_KP_LEFTBRACE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_LEFTBRACE),
    SDLK_KP_RIGHTBRACE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_RIGHTBRACE),
    SDLK_KP_TAB = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_TAB),
    SDLK_KP_BACKSPACE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_BACKSPACE),
    SDLK_KP_A = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_A),
    SDLK_KP_B = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_B),
    SDLK_KP_C = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_C),
    SDLK_KP_D = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_D),
    SDLK_KP_E = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_E),
    SDLK_KP_F = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_F),
    SDLK_KP_XOR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_XOR),
    SDLK_KP_POWER = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_POWER),
    SDLK_KP_PERCENT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_PERCENT),
    SDLK_KP_LESS = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_LESS),
    SDLK_KP_GREATER = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_GREATER),
    SDLK_KP_AMPERSAND = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_AMPERSAND),
    SDLK_KP_DBLAMPERSAND = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_DBLAMPERSAND),
    SDLK_KP_VERTICALBAR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_VERTICALBAR),
    SDLK_KP_DBLVERTICALBAR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_DBLVERTICALBAR),
    SDLK_KP_COLON = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_COLON),
    SDLK_KP_HASH = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_HASH),
    SDLK_KP_SPACE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_SPACE),
    SDLK_KP_AT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_AT),
    SDLK_KP_EXCLAM = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_EXCLAM),
    SDLK_KP_MEMSTORE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMSTORE),
    SDLK_KP_MEMRECALL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMRECALL),
    SDLK_KP_MEMCLEAR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMCLEAR),
    SDLK_KP_MEMADD = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMADD),
    SDLK_KP_MEMSUBTRACT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMSUBTRACT),
    SDLK_KP_MEMMULTIPLY = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMMULTIPLY),
    SDLK_KP_MEMDIVIDE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_MEMDIVIDE),
    SDLK_KP_PLUSMINUS = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_PLUSMINUS),
    SDLK_KP_CLEAR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_CLEAR),
    SDLK_KP_CLEARENTRY = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_CLEARENTRY),
    SDLK_KP_BINARY = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_BINARY),
    SDLK_KP_OCTAL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_OCTAL),
    SDLK_KP_DECIMAL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_DECIMAL),
    SDLK_KP_HEXADECIMAL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KP_HEXADECIMAL),

    SDLK_LCTRL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_LCTRL),
    SDLK_LSHIFT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_LSHIFT),
    SDLK_LALT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_LALT),
    SDLK_LGUI = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_LGUI),
    SDLK_RCTRL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_RCTRL),
    SDLK_RSHIFT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_RSHIFT),
    SDLK_RALT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_RALT),
    SDLK_RGUI = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_RGUI),

    SDLK_MODE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_MODE),

    SDLK_AUDIONEXT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIONEXT),
    SDLK_AUDIOPREV = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIOPREV),
    SDLK_AUDIOSTOP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIOSTOP),
    SDLK_AUDIOPLAY = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIOPLAY),
    SDLK_AUDIOMUTE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIOMUTE),
    SDLK_MEDIASELECT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_MEDIASELECT),
    SDLK_WWW = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_WWW),
    SDLK_MAIL = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_MAIL),
    SDLK_CALCULATOR = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_CALCULATOR),
    SDLK_COMPUTER = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_COMPUTER),
    SDLK_AC_SEARCH = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_SEARCH),
    SDLK_AC_HOME = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_HOME),
    SDLK_AC_BACK = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_BACK),
    SDLK_AC_FORWARD = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_FORWARD),
    SDLK_AC_STOP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_STOP),
    SDLK_AC_REFRESH = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_REFRESH),
    SDLK_AC_BOOKMARKS = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AC_BOOKMARKS),

    SDLK_BRIGHTNESSDOWN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_BRIGHTNESSDOWN),
    SDLK_BRIGHTNESSUP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_BRIGHTNESSUP),
    SDLK_DISPLAYSWITCH = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_DISPLAYSWITCH),
    SDLK_KBDILLUMTOGGLE = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KBDILLUMTOGGLE),
    SDLK_KBDILLUMDOWN = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KBDILLUMDOWN),
    SDLK_KBDILLUMUP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_KBDILLUMUP),
    SDLK_EJECT = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_EJECT),
    SDLK_SLEEP = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_SLEEP),
    SDLK_APP1 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_APP1),
    SDLK_APP2 = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_APP2),

    SDLK_AUDIOREWIND = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIOREWIND),
    SDLK_AUDIOFASTFORWARD = SDL_SCANCODE_TO_KEYCODE(SDL_Scancode.SDL_SCANCODE_AUDIOFASTFORWARD)
}

/**
 * \brief Enumeration of valid key mods (possibly OR'd together).
 */
enum SDL_Keymod
{
    KMOD_NONE = 0x0000,
    KMOD_LSHIFT = 0x0001,
    KMOD_RSHIFT = 0x0002,
    KMOD_LCTRL = 0x0040,
    KMOD_RCTRL = 0x0080,
    KMOD_LALT = 0x0100,
    KMOD_RALT = 0x0200,
    KMOD_LGUI = 0x0400,
    KMOD_RGUI = 0x0800,
    KMOD_NUM = 0x1000,
    KMOD_CAPS = 0x2000,
    KMOD_MODE = 0x4000,
    KMOD_RESERVED = 0x8000
}

enum KMOD_NONE = 0x0000;
enum KMOD_LSHIFT = 0x0001;
enum KMOD_RSHIFT = 0x0002;
enum KMOD_LCTRL = 0x0040;
enum KMOD_RCTRL = 0x0080;
enum KMOD_LALT = 0x0100;
enum KMOD_RALT = 0x0200;
enum KMOD_LGUI = 0x0400;
enum KMOD_RGUI = 0x0800;
enum KMOD_NUM = 0x1000;
enum KMOD_CAPS = 0x2000;
enum KMOD_MODE = 0x4000;
enum KMOD_RESERVED = 0x8000;

/* SDL_keycode_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_keycode.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief The SDL keysym structure, used in key events.
 *
 *  \note  If you are looking for translated character input, see the ::SDL_TEXTINPUT event.
 */
struct SDL_Keysym
{
    SDL_Scancode scancode; /**< SDL physical key code - see ::SDL_Scancode for details */
    SDL_Keycode sym; /**< SDL virtual key code - see ::SDL_Keycode for details */
    Uint16 mod; /**< current key modifiers */
    Uint32 unused;
}

/* Function prototypes */

/**
 *  \brief Get the window which currently has keyboard focus.
 */
SDL_Window* SDL_GetKeyboardFocus ();

/**
 *  \brief Get a snapshot of the current state of the keyboard.
 *
 *  \param numkeys if non-NULL, receives the length of the returned array.
 *
 *  \return An array of key states. Indexes into this array are obtained by using ::SDL_Scancode values.
 *
 *  \b Example:
 *  \code
 *  const Uint8 *state = SDL_GetKeyboardState(NULL);
 *  if ( state[SDL_SCANCODE_RETURN] )   {
 *      printf("<RETURN> is pressed.\n");
 *  }
 *  \endcode
 */
const(Uint8)* SDL_GetKeyboardState (int* numkeys);

/**
 *  \brief Get the current key modifier state for the keyboard.
 */
SDL_Keymod SDL_GetModState ();

/**
 *  \brief Set the current key modifier state for the keyboard.
 *
 *  \note This does not change the keyboard state, only the key modifier flags.
 */
void SDL_SetModState (SDL_Keymod modstate);

/**
 *  \brief Get the key code corresponding to the given scancode according
 *         to the current keyboard layout.
 *
 *  See ::SDL_Keycode for details.
 *
 *  \sa SDL_GetKeyName()
 */
SDL_Keycode SDL_GetKeyFromScancode (SDL_Scancode scancode);

/**
 *  \brief Get the scancode corresponding to the given key code according to the
 *         current keyboard layout.
 *
 *  See ::SDL_Scancode for details.
 *
 *  \sa SDL_GetScancodeName()
 */
SDL_Scancode SDL_GetScancodeFromKey (SDL_Keycode key);

/**
 *  \brief Get a human-readable name for a scancode.
 *
 *  \return A pointer to the name for the scancode.
 *          If the scancode doesn't have a name, this function returns
 *          an empty string ("").
 *
 *  \sa SDL_Scancode
 */
const(char)* SDL_GetScancodeName (SDL_Scancode scancode);

/**
 *  \brief Get a scancode from a human-readable name
 *
 *  \return scancode, or SDL_SCANCODE_UNKNOWN if the name wasn't recognized
 *
 *  \sa SDL_Scancode
 */
SDL_Scancode SDL_GetScancodeFromName (const(char)* name);

/**
 *  \brief Get a human-readable name for a key.
 *
 *  \return A pointer to a UTF-8 string that stays valid at least until the next
 *          call to this function. If you need it around any longer, you must
 *          copy it.  If the key doesn't have a name, this function returns an
 *          empty string ("").
 *
 *  \sa SDL_Keycode
 */
const(char)* SDL_GetKeyName (SDL_Keycode key);

/**
 *  \brief Get a key code from a human-readable name
 *
 *  \return key code, or SDLK_UNKNOWN if the name wasn't recognized
 *
 *  \sa SDL_Keycode
 */
SDL_Keycode SDL_GetKeyFromName (const(char)* name);

/**
 *  \brief Start accepting Unicode text input events.
 *         This function will show the on-screen keyboard if supported.
 *
 *  \sa SDL_StopTextInput()
 *  \sa SDL_SetTextInputRect()
 *  \sa SDL_HasScreenKeyboardSupport()
 */
void SDL_StartTextInput ();

/**
 *  \brief Return whether or not Unicode text input events are enabled.
 *
 *  \sa SDL_StartTextInput()
 *  \sa SDL_StopTextInput()
 */
SDL_bool SDL_IsTextInputActive ();

/**
 *  \brief Stop receiving any text input events.
 *         This function will hide the on-screen keyboard if supported.
 *
 *  \sa SDL_StartTextInput()
 *  \sa SDL_HasScreenKeyboardSupport()
 */
void SDL_StopTextInput ();

/**
 *  \brief Set the rectangle used to type Unicode text inputs.
 *         This is used as a hint for IME and on-screen keyboard placement.
 *
 *  \sa SDL_StartTextInput()
 */
void SDL_SetTextInputRect (SDL_Rect* rect);

/**
 *  \brief Returns whether the platform has some screen keyboard support.
 *
 *  \return SDL_TRUE if some keyboard support is available else SDL_FALSE.
 *
 *  \note Not all screen keyboard functions are supported on all platforms.
 *
 *  \sa SDL_IsScreenKeyboardShown()
 */
SDL_bool SDL_HasScreenKeyboardSupport ();

/**
 *  \brief Returns whether the screen keyboard is shown for given window.
 *
 *  \param window The window for which screen keyboard should be queried.
 *
 *  \return SDL_TRUE if screen keyboard is shown else SDL_FALSE.
 *
 *  \sa SDL_HasScreenKeyboardSupport()
 */
SDL_bool SDL_IsScreenKeyboardShown (SDL_Window* window);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_keyboard_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_keyboard.h ***/

/*** Start of inlined file: SDL_mouse.h ***/
/**
 *  \file SDL_mouse.h
 *
 *  Include file for SDL mouse event handling.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

struct SDL_Cursor; /**< Implementation dependent */

/**
 * \brief Cursor types for SDL_CreateSystemCursor().
 */
enum SDL_SystemCursor
{
    SDL_SYSTEM_CURSOR_ARROW = 0, /**< Arrow */
    SDL_SYSTEM_CURSOR_IBEAM = 1, /**< I-beam */
    SDL_SYSTEM_CURSOR_WAIT = 2, /**< Wait */
    SDL_SYSTEM_CURSOR_CROSSHAIR = 3, /**< Crosshair */
    SDL_SYSTEM_CURSOR_WAITARROW = 4, /**< Small wait cursor (or Wait if not available) */
    SDL_SYSTEM_CURSOR_SIZENWSE = 5, /**< Double arrow pointing northwest and southeast */
    SDL_SYSTEM_CURSOR_SIZENESW = 6, /**< Double arrow pointing northeast and southwest */
    SDL_SYSTEM_CURSOR_SIZEWE = 7, /**< Double arrow pointing west and east */
    SDL_SYSTEM_CURSOR_SIZENS = 8, /**< Double arrow pointing north and south */
    SDL_SYSTEM_CURSOR_SIZEALL = 9, /**< Four pointed arrow pointing north, south, east, and west */
    SDL_SYSTEM_CURSOR_NO = 10, /**< Slashed circle or crossbones */
    SDL_SYSTEM_CURSOR_HAND = 11, /**< Hand */
    SDL_NUM_SYSTEM_CURSORS = 12
}

/**
 * \brief Scroll direction types for the Scroll event
 */
enum SDL_MouseWheelDirection
{
    SDL_MOUSEWHEEL_NORMAL = 0, /**< The scroll direction is normal */
    SDL_MOUSEWHEEL_FLIPPED = 1 /**< The scroll direction is flipped / natural */
}

/* Function prototypes */

/**
 *  \brief Get the window which currently has mouse focus.
 */
SDL_Window* SDL_GetMouseFocus ();

/**
 *  \brief Retrieve the current state of the mouse.
 *
 *  The current button state is returned as a button bitmask, which can
 *  be tested using the SDL_BUTTON(X) macros, and x and y are set to the
 *  mouse cursor position relative to the focus window for the currently
 *  selected mouse.  You can pass NULL for either x or y.
 */
Uint32 SDL_GetMouseState (int* x, int* y);

/**
 *  \brief Get the current state of the mouse, in relation to the desktop
 *
 *  This works just like SDL_GetMouseState(), but the coordinates will be
 *  reported relative to the top-left of the desktop. This can be useful if
 *  you need to track the mouse outside of a specific window and
 *  SDL_CaptureMouse() doesn't fit your needs. For example, it could be
 *  useful if you need to track the mouse while dragging a window, where
 *  coordinates relative to a window might not be in sync at all times.
 *
 *  \note SDL_GetMouseState() returns the mouse position as SDL understands
 *        it from the last pump of the event queue. This function, however,
 *        queries the OS for the current mouse position, and as such, might
 *        be a slightly less efficient function. Unless you know what you're
 *        doing and have a good reason to use this function, you probably want
 *        SDL_GetMouseState() instead.
 *
 *  \param x Returns the current X coord, relative to the desktop. Can be NULL.
 *  \param y Returns the current Y coord, relative to the desktop. Can be NULL.
 *  \return The current button state as a bitmask, which can be tested using the SDL_BUTTON(X) macros.
 *
 *  \sa SDL_GetMouseState
 */
Uint32 SDL_GetGlobalMouseState (int* x, int* y);

/**
 *  \brief Retrieve the relative state of the mouse.
 *
 *  The current button state is returned as a button bitmask, which can
 *  be tested using the SDL_BUTTON(X) macros, and x and y are set to the
 *  mouse deltas since the last call to SDL_GetRelativeMouseState().
 */
Uint32 SDL_GetRelativeMouseState (int* x, int* y);

/**
 *  \brief Moves the mouse to the given position within the window.
 *
 *  \param window The window to move the mouse into, or NULL for the current mouse focus
 *  \param x The x coordinate within the window
 *  \param y The y coordinate within the window
 *
 *  \note This function generates a mouse motion event
 */
void SDL_WarpMouseInWindow (SDL_Window* window, int x, int y);

/**
 *  \brief Moves the mouse to the given position in global screen space.
 *
 *  \param x The x coordinate
 *  \param y The y coordinate
 *  \return 0 on success, -1 on error (usually: unsupported by a platform).
 *
 *  \note This function generates a mouse motion event
 */
int SDL_WarpMouseGlobal (int x, int y);

/**
 *  \brief Set relative mouse mode.
 *
 *  \param enabled Whether or not to enable relative mode
 *
 *  \return 0 on success, or -1 if relative mode is not supported.
 *
 *  While the mouse is in relative mode, the cursor is hidden, and the
 *  driver will try to report continuous motion in the current window.
 *  Only relative motion events will be delivered, the mouse position
 *  will not change.
 *
 *  \note This function will flush any pending mouse motion.
 *
 *  \sa SDL_GetRelativeMouseMode()
 */
int SDL_SetRelativeMouseMode (SDL_bool enabled);

/**
 *  \brief Capture the mouse, to track input outside an SDL window.
 *
 *  \param enabled Whether or not to enable capturing
 *
 *  Capturing enables your app to obtain mouse events globally, instead of
 *  just within your window. Not all video targets support this function.
 *  When capturing is enabled, the current window will get all mouse events,
 *  but unlike relative mode, no change is made to the cursor and it is
 *  not restrained to your window.
 *
 *  This function may also deny mouse input to other windows--both those in
 *  your application and others on the system--so you should use this
 *  function sparingly, and in small bursts. For example, you might want to
 *  track the mouse while the user is dragging something, until the user
 *  releases a mouse button. It is not recommended that you capture the mouse
 *  for long periods of time, such as the entire time your app is running.
 *
 *  While captured, mouse events still report coordinates relative to the
 *  current (foreground) window, but those coordinates may be outside the
 *  bounds of the window (including negative values). Capturing is only
 *  allowed for the foreground window. If the window loses focus while
 *  capturing, the capture will be disabled automatically.
 *
 *  While capturing is enabled, the current window will have the
 *  SDL_WINDOW_MOUSE_CAPTURE flag set.
 *
 *  \return 0 on success, or -1 if not supported.
 */
int SDL_CaptureMouse (SDL_bool enabled);

/**
 *  \brief Query whether relative mouse mode is enabled.
 *
 *  \sa SDL_SetRelativeMouseMode()
 */
SDL_bool SDL_GetRelativeMouseMode ();

/**
 *  \brief Create a cursor, using the specified bitmap data and
 *         mask (in MSB format).
 *
 *  The cursor width must be a multiple of 8 bits.
 *
 *  The cursor is created in black and white according to the following:
 *  <table>
 *  <tr><td> data </td><td> mask </td><td> resulting pixel on screen </td></tr>
 *  <tr><td>  0   </td><td>  1   </td><td> White </td></tr>
 *  <tr><td>  1   </td><td>  1   </td><td> Black </td></tr>
 *  <tr><td>  0   </td><td>  0   </td><td> Transparent </td></tr>
 *  <tr><td>  1   </td><td>  0   </td><td> Inverted color if possible, black
 *                                         if not. </td></tr>
 *  </table>
 *
 *  \sa SDL_FreeCursor()
 */
SDL_Cursor* SDL_CreateCursor (
    const(Uint8)* data,
    const(Uint8)* mask,
    int w,
    int h,
    int hot_x,
    int hot_y);

/**
 *  \brief Create a color cursor.
 *
 *  \sa SDL_FreeCursor()
 */
SDL_Cursor* SDL_CreateColorCursor (SDL_Surface* surface, int hot_x, int hot_y);

/**
 *  \brief Create a system cursor.
 *
 *  \sa SDL_FreeCursor()
 */
SDL_Cursor* SDL_CreateSystemCursor (SDL_SystemCursor id);

/**
 *  \brief Set the active cursor.
 */
void SDL_SetCursor (SDL_Cursor* cursor);

/**
 *  \brief Return the active cursor.
 */
SDL_Cursor* SDL_GetCursor ();

/**
 *  \brief Return the default cursor.
 */
SDL_Cursor* SDL_GetDefaultCursor ();

/**
 *  \brief Frees a cursor created with SDL_CreateCursor() or similar functions.
 *
 *  \sa SDL_CreateCursor()
 *  \sa SDL_CreateColorCursor()
 *  \sa SDL_CreateSystemCursor()
 */
void SDL_FreeCursor (SDL_Cursor* cursor);

/**
 *  \brief Toggle whether or not the cursor is shown.
 *
 *  \param toggle 1 to show the cursor, 0 to hide it, -1 to query the current
 *                state.
 *
 *  \return 1 if the cursor is shown, or 0 if the cursor is hidden.
 */
int SDL_ShowCursor (int toggle);

/**
 *  Used as a mask when testing buttons in buttonstate.
 *   - Button 1:  Left mouse button
 *   - Button 2:  Middle mouse button
 *   - Button 3:  Right mouse button
 */

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_mouse_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_mouse.h ***/

/*** Start of inlined file: SDL_joystick.h ***/
/**
 *  \file SDL_joystick.h
 *
 *  Include file for SDL joystick event handling
 *
 * The term "device_index" identifies currently plugged in joystick devices between 0 and SDL_NumJoysticks(), with the exact joystick
 *   behind a device_index changing as joysticks are plugged and unplugged.
 *
 * The term "instance_id" is the current instantiation of a joystick device in the system, if the joystick is removed and then re-inserted
 *   then it will get a new instance_id, instance_id's are monotonically increasing identifiers of a joystick plugged in.
 *
 * The term JoystickGUID is a stable 128-bit identifier for a joystick device that does not change over time, it identifies class of
 *   the device (a X360 wired controller for example). This identifier is platform dependent.
 *
 *
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \file SDL_joystick.h
 *
 *  In order to use these functions, SDL_Init() must have been called
 *  with the ::SDL_INIT_JOYSTICK flag.  This causes SDL to scan the system
 *  for joysticks, and load appropriate drivers.
 *
 *  If you would like to receive joystick updates while the application
 *  is in the background, you should set the following hint before calling
 *  SDL_Init(): SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS
 */

/**
 * The joystick structure used to identify an SDL joystick
 */
struct _SDL_Joystick;
alias SDL_Joystick = _SDL_Joystick;

/* A structure that encodes the stable unique id for a joystick device */
struct SDL_JoystickGUID
{
    Uint8[16] data;
}

/**
 * This is a unique ID for a joystick for the time it is connected to the system,
 * and is never reused for the lifetime of the application. If the joystick is
 * disconnected and reconnected, it will get a new ID.
 *
 * The ID value starts at 0 and increments from there. The value -1 is an invalid ID.
 */
alias SDL_JoystickID = int;

enum SDL_JoystickType
{
    SDL_JOYSTICK_TYPE_UNKNOWN = 0,
    SDL_JOYSTICK_TYPE_GAMECONTROLLER = 1,
    SDL_JOYSTICK_TYPE_WHEEL = 2,
    SDL_JOYSTICK_TYPE_ARCADE_STICK = 3,
    SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4,
    SDL_JOYSTICK_TYPE_DANCE_PAD = 5,
    SDL_JOYSTICK_TYPE_GUITAR = 6,
    SDL_JOYSTICK_TYPE_DRUM_KIT = 7,
    SDL_JOYSTICK_TYPE_ARCADE_PAD = 8,
    SDL_JOYSTICK_TYPE_THROTTLE = 9
}

enum SDL_JoystickPowerLevel
{
    SDL_JOYSTICK_POWER_UNKNOWN = -1,
    SDL_JOYSTICK_POWER_EMPTY = 0, /* <= 5% */
    SDL_JOYSTICK_POWER_LOW = 1, /* <= 20% */
    SDL_JOYSTICK_POWER_MEDIUM = 2, /* <= 70% */
    SDL_JOYSTICK_POWER_FULL = 3, /* <= 100% */
    SDL_JOYSTICK_POWER_WIRED = 4,
    SDL_JOYSTICK_POWER_MAX = 5
}

/* Function prototypes */

/**
 * Locking for multi-threaded access to the joystick API
 *
 * If you are using the joystick API or handling events from multiple threads
 * you should use these locking functions to protect access to the joysticks.
 *
 * In particular, you are guaranteed that the joystick list won't change, so
 * the API functions that take a joystick index will be valid, and joystick
 * and game controller events will not be delivered.
 */
void SDL_LockJoysticks ();
void SDL_UnlockJoysticks ();

/**
 *  Count the number of joysticks attached to the system right now
 */
int SDL_NumJoysticks ();

/**
 *  Get the implementation dependent name of a joystick.
 *  This can be called before any joysticks are opened.
 *  If no name can be found, this function returns NULL.
 */
const(char)* SDL_JoystickNameForIndex (int device_index);

/**
 *  Get the player index of a joystick, or -1 if it's not available
 *  This can be called before any joysticks are opened.
 */
int SDL_JoystickGetDevicePlayerIndex (int device_index);

/**
 *  Return the GUID for the joystick at this index
 *  This can be called before any joysticks are opened.
 */
SDL_JoystickGUID SDL_JoystickGetDeviceGUID (int device_index);

/**
 *  Get the USB vendor ID of a joystick, if available.
 *  This can be called before any joysticks are opened.
 *  If the vendor ID isn't available this function returns 0.
 */
Uint16 SDL_JoystickGetDeviceVendor (int device_index);

/**
 *  Get the USB product ID of a joystick, if available.
 *  This can be called before any joysticks are opened.
 *  If the product ID isn't available this function returns 0.
 */
Uint16 SDL_JoystickGetDeviceProduct (int device_index);

/**
 *  Get the product version of a joystick, if available.
 *  This can be called before any joysticks are opened.
 *  If the product version isn't available this function returns 0.
 */
Uint16 SDL_JoystickGetDeviceProductVersion (int device_index);

/**
 *  Get the type of a joystick, if available.
 *  This can be called before any joysticks are opened.
 */
SDL_JoystickType SDL_JoystickGetDeviceType (int device_index);

/**
 *  Get the instance ID of a joystick.
 *  This can be called before any joysticks are opened.
 *  If the index is out of range, this function will return -1.
 */
SDL_JoystickID SDL_JoystickGetDeviceInstanceID (int device_index);

/**
 *  Open a joystick for use.
 *  The index passed as an argument refers to the N'th joystick on the system.
 *  This index is not the value which will identify this joystick in future
 *  joystick events.  The joystick's instance id (::SDL_JoystickID) will be used
 *  there instead.
 *
 *  \return A joystick identifier, or NULL if an error occurred.
 */
SDL_Joystick* SDL_JoystickOpen (int device_index);

/**
 * Return the SDL_Joystick associated with an instance id.
 */
SDL_Joystick* SDL_JoystickFromInstanceID (SDL_JoystickID joyid);

/**
 *  Return the name for this currently opened joystick.
 *  If no name can be found, this function returns NULL.
 */
const(char)* SDL_JoystickName (SDL_Joystick* joystick);

/**
 *  Get the player index of an opened joystick, or -1 if it's not available
 *
 *  For XInput controllers this returns the XInput user index.
 */
int SDL_JoystickGetPlayerIndex (SDL_Joystick* joystick);

/**
 *  Return the GUID for this opened joystick
 */
SDL_JoystickGUID SDL_JoystickGetGUID (SDL_Joystick* joystick);

/**
 *  Get the USB vendor ID of an opened joystick, if available.
 *  If the vendor ID isn't available this function returns 0.
 */
Uint16 SDL_JoystickGetVendor (SDL_Joystick* joystick);

/**
 *  Get the USB product ID of an opened joystick, if available.
 *  If the product ID isn't available this function returns 0.
 */
Uint16 SDL_JoystickGetProduct (SDL_Joystick* joystick);

/**
 *  Get the product version of an opened joystick, if available.
 *  If the product version isn't available this function returns 0.
 */
Uint16 SDL_JoystickGetProductVersion (SDL_Joystick* joystick);

/**
 *  Get the type of an opened joystick.
 */
SDL_JoystickType SDL_JoystickGetType (SDL_Joystick* joystick);

/**
 *  Return a string representation for this guid. pszGUID must point to at least 33 bytes
 *  (32 for the string plus a NULL terminator).
 */
void SDL_JoystickGetGUIDString (SDL_JoystickGUID guid, char* pszGUID, int cbGUID);

/**
 *  Convert a string into a joystick guid
 */
SDL_JoystickGUID SDL_JoystickGetGUIDFromString (const(char)* pchGUID);

/**
 *  Returns SDL_TRUE if the joystick has been opened and currently connected, or SDL_FALSE if it has not.
 */
SDL_bool SDL_JoystickGetAttached (SDL_Joystick* joystick);

/**
 *  Get the instance ID of an opened joystick or -1 if the joystick is invalid.
 */
SDL_JoystickID SDL_JoystickInstanceID (SDL_Joystick* joystick);

/**
 *  Get the number of general axis controls on a joystick.
 */
int SDL_JoystickNumAxes (SDL_Joystick* joystick);

/**
 *  Get the number of trackballs on a joystick.
 *
 *  Joystick trackballs have only relative motion events associated
 *  with them and their state cannot be polled.
 */
int SDL_JoystickNumBalls (SDL_Joystick* joystick);

/**
 *  Get the number of POV hats on a joystick.
 */
int SDL_JoystickNumHats (SDL_Joystick* joystick);

/**
 *  Get the number of buttons on a joystick.
 */
int SDL_JoystickNumButtons (SDL_Joystick* joystick);

/**
 *  Update the current state of the open joysticks.
 *
 *  This is called automatically by the event loop if any joystick
 *  events are enabled.
 */
void SDL_JoystickUpdate ();

/**
 *  Enable/disable joystick event polling.
 *
 *  If joystick events are disabled, you must call SDL_JoystickUpdate()
 *  yourself and check the state of the joystick when you want joystick
 *  information.
 *
 *  The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.
 */
int SDL_JoystickEventState (int state);

/**
 *  Get the current state of an axis control on a joystick.
 *
 *  The state is a value ranging from -32768 to 32767.
 *
 *  The axis indices start at index 0.
 */
Sint16 SDL_JoystickGetAxis (SDL_Joystick* joystick, int axis);

/**
 *  Get the initial state of an axis control on a joystick.
 *
 *  The state is a value ranging from -32768 to 32767.
 *
 *  The axis indices start at index 0.
 *
 *  \return SDL_TRUE if this axis has any initial value, or SDL_FALSE if not.
 */
SDL_bool SDL_JoystickGetAxisInitialState (
    SDL_Joystick* joystick,
    int axis,
    Sint16* state);

/**
 *  \name Hat positions
 */
/* @{ */

/* @} */

/**
 *  Get the current state of a POV hat on a joystick.
 *
 *  The hat indices start at index 0.
 *
 *  \return The return value is one of the following positions:
 *           - ::SDL_HAT_CENTERED
 *           - ::SDL_HAT_UP
 *           - ::SDL_HAT_RIGHT
 *           - ::SDL_HAT_DOWN
 *           - ::SDL_HAT_LEFT
 *           - ::SDL_HAT_RIGHTUP
 *           - ::SDL_HAT_RIGHTDOWN
 *           - ::SDL_HAT_LEFTUP
 *           - ::SDL_HAT_LEFTDOWN
 */
Uint8 SDL_JoystickGetHat (SDL_Joystick* joystick, int hat);

/**
 *  Get the ball axis change since the last poll.
 *
 *  \return 0, or -1 if you passed it invalid parameters.
 *
 *  The ball indices start at index 0.
 */
int SDL_JoystickGetBall (SDL_Joystick* joystick, int ball, int* dx, int* dy);

/**
 *  Get the current state of a button on a joystick.
 *
 *  The button indices start at index 0.
 */
Uint8 SDL_JoystickGetButton (SDL_Joystick* joystick, int button);

/**
 *  Trigger a rumble effect
 *  Each call to this function cancels any previous rumble effect, and calling it with 0 intensity stops any rumbling.
 *
 *  \param joystick The joystick to vibrate
 *  \param low_frequency_rumble The intensity of the low frequency (left) rumble motor, from 0 to 0xFFFF
 *  \param high_frequency_rumble The intensity of the high frequency (right) rumble motor, from 0 to 0xFFFF
 *  \param duration_ms The duration of the rumble effect, in milliseconds
 *
 *  \return 0, or -1 if rumble isn't supported on this joystick
 */
int SDL_JoystickRumble (SDL_Joystick* joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);

/**
 *  Close a joystick previously opened with SDL_JoystickOpen().
 */
void SDL_JoystickClose (SDL_Joystick* joystick);

/**
 *  Return the battery level of this joystick
 */
SDL_JoystickPowerLevel SDL_JoystickCurrentPowerLevel (SDL_Joystick* joystick);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_joystick_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_joystick.h ***/

/*** Start of inlined file: SDL_gamecontroller.h ***/
/**
 *  \file SDL_gamecontroller.h
 *
 *  Include file for SDL game controller event handling
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \file SDL_gamecontroller.h
 *
 *  In order to use these functions, SDL_Init() must have been called
 *  with the ::SDL_INIT_GAMECONTROLLER flag.  This causes SDL to scan the system
 *  for game controllers, and load appropriate drivers.
 *
 *  If you would like to receive controller updates while the application
 *  is in the background, you should set the following hint before calling
 *  SDL_Init(): SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS
 */

/**
 * The gamecontroller structure used to identify an SDL game controller
 */
struct _SDL_GameController;
alias SDL_GameController = _SDL_GameController;

enum SDL_GameControllerBindType
{
    SDL_CONTROLLER_BINDTYPE_NONE = 0,
    SDL_CONTROLLER_BINDTYPE_BUTTON = 1,
    SDL_CONTROLLER_BINDTYPE_AXIS = 2,
    SDL_CONTROLLER_BINDTYPE_HAT = 3
}

/**
 *  Get the SDL joystick layer binding for this controller button/axis mapping
 */
struct SDL_GameControllerButtonBind
{
    SDL_GameControllerBindType bindType;

    union _Anonymous_4
    {
        int button;
        int axis;

        struct _Anonymous_5
        {
            int hat;
            int hat_mask;
        }

        _Anonymous_5 hat;
    }

    _Anonymous_4 value;
}

/**
 *  To count the number of game controllers in the system for the following:
 *  int nJoysticks = SDL_NumJoysticks();
 *  int nGameControllers = 0;
 *  for (int i = 0; i < nJoysticks; i++) {
 *      if (SDL_IsGameController(i)) {
 *          nGameControllers++;
 *      }
 *  }
 *
 *  Using the SDL_HINT_GAMECONTROLLERCONFIG hint or the SDL_GameControllerAddMapping() you can add support for controllers SDL is unaware of or cause an existing controller to have a different binding. The format is:
 *  guid,name,mappings
 *
 *  Where GUID is the string value from SDL_JoystickGetGUIDString(), name is the human readable string for the device and mappings are controller mappings to joystick ones.
 *  Under Windows there is a reserved GUID of "xinput" that covers any XInput devices.
 *  The mapping format for joystick is:
 *      bX - a joystick button, index X
 *      hX.Y - hat X with value Y
 *      aX - axis X of the joystick
 *  Buttons can be used as a controller axis and vice versa.
 *
 *  This string shows an example of a valid mapping for a controller
 *  "03000000341a00003608000000000000,PS3 Controller,a:b1,b:b2,y:b3,x:b0,start:b9,guide:b12,back:b8,dpup:h0.1,dpleft:h0.8,dpdown:h0.4,dpright:h0.2,leftshoulder:b4,rightshoulder:b5,leftstick:b10,rightstick:b11,leftx:a0,lefty:a1,rightx:a2,righty:a3,lefttrigger:b6,righttrigger:b7",
 *
 */

/**
 *  Load a set of mappings from a seekable SDL data stream (memory or file), filtered by the current SDL_GetPlatform()
 *  A community sourced database of controllers is available at https://raw.github.com/gabomdq/SDL_GameControllerDB/master/gamecontrollerdb.txt
 *
 *  If \c freerw is non-zero, the stream will be closed after being read.
 *
 * \return number of mappings added, -1 on error
 */
int SDL_GameControllerAddMappingsFromRW (SDL_RWops* rw, int freerw);

/**
 *  Load a set of mappings from a file, filtered by the current SDL_GetPlatform()
 *
 *  Convenience macro.
 */

/**
 *  Add or update an existing mapping configuration
 *
 * \return 1 if mapping is added, 0 if updated, -1 on error
 */
int SDL_GameControllerAddMapping (const(char)* mappingString);

/**
 *  Get the number of mappings installed
 *
 *  \return the number of mappings
 */
int SDL_GameControllerNumMappings ();

/**
 *  Get the mapping at a particular index.
 *
 *  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if the index is out of range.
 */
char* SDL_GameControllerMappingForIndex (int mapping_index);

/**
 *  Get a mapping string for a GUID
 *
 *  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if no mapping is available
 */
char* SDL_GameControllerMappingForGUID (SDL_JoystickGUID guid);

/**
 *  Get a mapping string for an open GameController
 *
 *  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if no mapping is available
 */
char* SDL_GameControllerMapping (SDL_GameController* gamecontroller);

/**
 *  Is the joystick on this index supported by the game controller interface?
 */
SDL_bool SDL_IsGameController (int joystick_index);

/**
 *  Get the implementation dependent name of a game controller.
 *  This can be called before any controllers are opened.
 *  If no name can be found, this function returns NULL.
 */
const(char)* SDL_GameControllerNameForIndex (int joystick_index);

/**
 *  Get the mapping of a game controller.
 *  This can be called before any controllers are opened.
 *
 *  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if no mapping is available
 */
char* SDL_GameControllerMappingForDeviceIndex (int joystick_index);

/**
 *  Open a game controller for use.
 *  The index passed as an argument refers to the N'th game controller on the system.
 *  This index is not the value which will identify this controller in future
 *  controller events.  The joystick's instance id (::SDL_JoystickID) will be
 *  used there instead.
 *
 *  \return A controller identifier, or NULL if an error occurred.
 */
SDL_GameController* SDL_GameControllerOpen (int joystick_index);

/**
 * Return the SDL_GameController associated with an instance id.
 */
SDL_GameController* SDL_GameControllerFromInstanceID (SDL_JoystickID joyid);

/**
 *  Return the name for this currently opened controller
 */
const(char)* SDL_GameControllerName (SDL_GameController* gamecontroller);

/**
 *  Get the player index of an opened game controller, or -1 if it's not available
 *
 *  For XInput controllers this returns the XInput user index.
 */
int SDL_GameControllerGetPlayerIndex (SDL_GameController* gamecontroller);

/**
 *  Get the USB vendor ID of an opened controller, if available.
 *  If the vendor ID isn't available this function returns 0.
 */
Uint16 SDL_GameControllerGetVendor (SDL_GameController* gamecontroller);

/**
 *  Get the USB product ID of an opened controller, if available.
 *  If the product ID isn't available this function returns 0.
 */
Uint16 SDL_GameControllerGetProduct (SDL_GameController* gamecontroller);

/**
 *  Get the product version of an opened controller, if available.
 *  If the product version isn't available this function returns 0.
 */
Uint16 SDL_GameControllerGetProductVersion (SDL_GameController* gamecontroller);

/**
 *  Returns SDL_TRUE if the controller has been opened and currently connected,
 *  or SDL_FALSE if it has not.
 */
SDL_bool SDL_GameControllerGetAttached (SDL_GameController* gamecontroller);

/**
 *  Get the underlying joystick object used by a controller
 */
SDL_Joystick* SDL_GameControllerGetJoystick (SDL_GameController* gamecontroller);

/**
 *  Enable/disable controller event polling.
 *
 *  If controller events are disabled, you must call SDL_GameControllerUpdate()
 *  yourself and check the state of the controller when you want controller
 *  information.
 *
 *  The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.
 */
int SDL_GameControllerEventState (int state);

/**
 *  Update the current state of the open game controllers.
 *
 *  This is called automatically by the event loop if any game controller
 *  events are enabled.
 */
void SDL_GameControllerUpdate ();

/**
 *  The list of axes available from a controller
 *
 *  Thumbstick axis values range from SDL_JOYSTICK_AXIS_MIN to SDL_JOYSTICK_AXIS_MAX,
 *  and are centered within ~8000 of zero, though advanced UI will allow users to set
 *  or autodetect the dead zone, which varies between controllers.
 *
 *  Trigger axis values range from 0 to SDL_JOYSTICK_AXIS_MAX.
 */
enum SDL_GameControllerAxis
{
    SDL_CONTROLLER_AXIS_INVALID = -1,
    SDL_CONTROLLER_AXIS_LEFTX = 0,
    SDL_CONTROLLER_AXIS_LEFTY = 1,
    SDL_CONTROLLER_AXIS_RIGHTX = 2,
    SDL_CONTROLLER_AXIS_RIGHTY = 3,
    SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4,
    SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5,
    SDL_CONTROLLER_AXIS_MAX = 6
}

/**
 *  turn this string into a axis mapping
 */
SDL_GameControllerAxis SDL_GameControllerGetAxisFromString (const(char)* pchString);

/**
 *  turn this axis enum into a string mapping
 */
const(char)* SDL_GameControllerGetStringForAxis (SDL_GameControllerAxis axis);

/**
 *  Get the SDL joystick layer binding for this controller button mapping
 */
SDL_GameControllerButtonBind SDL_GameControllerGetBindForAxis (
    SDL_GameController* gamecontroller,
    SDL_GameControllerAxis axis);

/**
 *  Get the current state of an axis control on a game controller.
 *
 *  The state is a value ranging from -32768 to 32767 (except for the triggers,
 *  which range from 0 to 32767).
 *
 *  The axis indices start at index 0.
 */
Sint16 SDL_GameControllerGetAxis (
    SDL_GameController* gamecontroller,
    SDL_GameControllerAxis axis);

/**
 *  The list of buttons available from a controller
 */
enum SDL_GameControllerButton
{
    SDL_CONTROLLER_BUTTON_INVALID = -1,
    SDL_CONTROLLER_BUTTON_A = 0,
    SDL_CONTROLLER_BUTTON_B = 1,
    SDL_CONTROLLER_BUTTON_X = 2,
    SDL_CONTROLLER_BUTTON_Y = 3,
    SDL_CONTROLLER_BUTTON_BACK = 4,
    SDL_CONTROLLER_BUTTON_GUIDE = 5,
    SDL_CONTROLLER_BUTTON_START = 6,
    SDL_CONTROLLER_BUTTON_LEFTSTICK = 7,
    SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8,
    SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9,
    SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10,
    SDL_CONTROLLER_BUTTON_DPAD_UP = 11,
    SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12,
    SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13,
    SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14,
    SDL_CONTROLLER_BUTTON_MAX = 15
}

/**
 *  turn this string into a button mapping
 */
SDL_GameControllerButton SDL_GameControllerGetButtonFromString (const(char)* pchString);

/**
 *  turn this button enum into a string mapping
 */
const(char)* SDL_GameControllerGetStringForButton (SDL_GameControllerButton button);

/**
 *  Get the SDL joystick layer binding for this controller button mapping
 */
SDL_GameControllerButtonBind SDL_GameControllerGetBindForButton (
    SDL_GameController* gamecontroller,
    SDL_GameControllerButton button);

/**
 *  Get the current state of a button on a game controller.
 *
 *  The button indices start at index 0.
 */
Uint8 SDL_GameControllerGetButton (
    SDL_GameController* gamecontroller,
    SDL_GameControllerButton button);

/**
 *  Trigger a rumble effect
 *  Each call to this function cancels any previous rumble effect, and calling it with 0 intensity stops any rumbling.
 *
 *  \param gamecontroller The controller to vibrate
 *  \param low_frequency_rumble The intensity of the low frequency (left) rumble motor, from 0 to 0xFFFF
 *  \param high_frequency_rumble The intensity of the high frequency (right) rumble motor, from 0 to 0xFFFF
 *  \param duration_ms The duration of the rumble effect, in milliseconds
 *
 *  \return 0, or -1 if rumble isn't supported on this joystick
 */
int SDL_GameControllerRumble (SDL_GameController* gamecontroller, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);

/**
 *  Close a controller previously opened with SDL_GameControllerOpen().
 */
void SDL_GameControllerClose (SDL_GameController* gamecontroller);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_gamecontroller_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_gamecontroller.h ***/

/*** Start of inlined file: SDL_quit.h ***/
/**
 *  \file SDL_quit.h
 *
 *  Include file for SDL quit event handling.
 */

/**
 *  \file SDL_quit.h
 *
 *  An ::SDL_QUIT event is generated when the user tries to close the application
 *  window.  If it is ignored or filtered out, the window will remain open.
 *  If it is not ignored or filtered, it is queued normally and the window
 *  is allowed to close.  When the window is closed, screen updates will
 *  complete, but have no effect.
 *
 *  SDL_Init() installs signal handlers for SIGINT (keyboard interrupt)
 *  and SIGTERM (system termination request), if handlers do not already
 *  exist, that generate ::SDL_QUIT events as well.  There is no way
 *  to determine the cause of an ::SDL_QUIT event, but setting a signal
 *  handler in your application will override the default generation of
 *  quit events for that signal.
 *
 *  \sa SDL_Quit()
 */

/* There are no functions directly affecting the quit event */

/* SDL_quit_h_ */

/*** End of inlined file: SDL_quit.h ***/

/*** Start of inlined file: SDL_gesture.h ***/
/**
 *  \file SDL_gesture.h
 *
 *  Include file for SDL gesture event handling.
 */

/*** Start of inlined file: SDL_touch.h ***/
/**
 *  \file SDL_touch.h
 *
 *  Include file for SDL touch event handling.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

alias SDL_TouchID = c_long;
alias SDL_FingerID = c_long;

struct SDL_Finger
{
    SDL_FingerID id;
    float x;
    float y;
    float pressure;
}

/* Used as the device ID for mouse events simulated with touch input */

/* Function prototypes */

/**
 *  \brief Get the number of registered touch devices.
 */
int SDL_GetNumTouchDevices ();

/**
 *  \brief Get the touch ID with the given index, or 0 if the index is invalid.
 */
SDL_TouchID SDL_GetTouchDevice (int index);

/**
 *  \brief Get the number of active fingers for a given touch device.
 */
int SDL_GetNumTouchFingers (SDL_TouchID touchID);

/**
 *  \brief Get the finger object of the given touch, with the given index.
 */
SDL_Finger* SDL_GetTouchFinger (SDL_TouchID touchID, int index);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_touch_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_touch.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

alias SDL_GestureID = c_long;

/* Function prototypes */

/**
 *  \brief Begin Recording a gesture on the specified touch, or all touches (-1)
 *
 *
 */
int SDL_RecordGesture (SDL_TouchID touchId);

/**
 *  \brief Save all currently loaded Dollar Gesture templates
 *
 *
 */
int SDL_SaveAllDollarTemplates (SDL_RWops* dst);

/**
 *  \brief Save a currently loaded Dollar Gesture template
 *
 *
 */
int SDL_SaveDollarTemplate (SDL_GestureID gestureId, SDL_RWops* dst);

/**
 *  \brief Load Dollar Gesture templates from a file
 *
 *
 */
int SDL_LoadDollarTemplates (SDL_TouchID touchId, SDL_RWops* src);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_gesture_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_gesture.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* General keyboard/mouse state definitions */

/**
 * \brief The types of events that can be delivered.
 */
enum SDL_EventType
{
    SDL_FIRSTEVENT = 0, /**< Unused (do not remove) */

    /* Application events */
    SDL_QUIT = 0x100, /**< User-requested quit */

    /* These application events have special meaning on iOS, see README-ios.md for details */
    SDL_APP_TERMINATING = 257, /**< The application is being terminated by the OS
    									 Called on iOS in applicationWillTerminate()
    									 Called on Android in onDestroy()
    								*/
    SDL_APP_LOWMEMORY = 258, /**< The application is low on memory, free memory if possible.
    									 Called on iOS in applicationDidReceiveMemoryWarning()
    									 Called on Android in onLowMemory()
    								*/
    SDL_APP_WILLENTERBACKGROUND = 259, /**< The application is about to enter the background
    									 Called on iOS in applicationWillResignActive()
    									 Called on Android in onPause()
    								*/
    SDL_APP_DIDENTERBACKGROUND = 260, /**< The application did enter the background and may not get CPU for some time
    									 Called on iOS in applicationDidEnterBackground()
    									 Called on Android in onPause()
    								*/
    SDL_APP_WILLENTERFOREGROUND = 261, /**< The application is about to enter the foreground
    									 Called on iOS in applicationWillEnterForeground()
    									 Called on Android in onResume()
    								*/
    SDL_APP_DIDENTERFOREGROUND = 262, /**< The application is now interactive
    									 Called on iOS in applicationDidBecomeActive()
    									 Called on Android in onResume()
    								*/

    /* Display events */
    SDL_DISPLAYEVENT = 0x150, /**< Display state change */

    /* Window events */
    SDL_WINDOWEVENT = 0x200, /**< Window state change */
    SDL_SYSWMEVENT = 513, /**< System specific event */

    /* Keyboard events */
    SDL_KEYDOWN = 0x300, /**< Key pressed */
    SDL_KEYUP = 769, /**< Key released */
    SDL_TEXTEDITING = 770, /**< Keyboard text editing (composition) */
    SDL_TEXTINPUT = 771, /**< Keyboard text input */
    SDL_KEYMAPCHANGED = 772, /**< Keymap changed due to a system event such as an
    									 input language or keyboard layout change.
    								*/

    /* Mouse events */
    SDL_MOUSEMOTION = 0x400, /**< Mouse moved */
    SDL_MOUSEBUTTONDOWN = 1025, /**< Mouse button pressed */
    SDL_MOUSEBUTTONUP = 1026, /**< Mouse button released */
    SDL_MOUSEWHEEL = 1027, /**< Mouse wheel motion */

    /* Joystick events */
    SDL_JOYAXISMOTION = 0x600, /**< Joystick axis motion */
    SDL_JOYBALLMOTION = 1537, /**< Joystick trackball motion */
    SDL_JOYHATMOTION = 1538, /**< Joystick hat position change */
    SDL_JOYBUTTONDOWN = 1539, /**< Joystick button pressed */
    SDL_JOYBUTTONUP = 1540, /**< Joystick button released */
    SDL_JOYDEVICEADDED = 1541, /**< A new joystick has been inserted into the system */
    SDL_JOYDEVICEREMOVED = 1542, /**< An opened joystick has been removed */

    /* Game controller events */
    SDL_CONTROLLERAXISMOTION = 0x650, /**< Game controller axis motion */
    SDL_CONTROLLERBUTTONDOWN = 1617, /**< Game controller button pressed */
    SDL_CONTROLLERBUTTONUP = 1618, /**< Game controller button released */
    SDL_CONTROLLERDEVICEADDED = 1619, /**< A new Game controller has been inserted into the system */
    SDL_CONTROLLERDEVICEREMOVED = 1620, /**< An opened Game controller has been removed */
    SDL_CONTROLLERDEVICEREMAPPED = 1621, /**< The controller mapping was updated */

    /* Touch events */
    SDL_FINGERDOWN = 0x700,
    SDL_FINGERUP = 1793,
    SDL_FINGERMOTION = 1794,

    /* Gesture events */
    SDL_DOLLARGESTURE = 0x800,
    SDL_DOLLARRECORD = 2049,
    SDL_MULTIGESTURE = 2050,

    /* Clipboard events */
    SDL_CLIPBOARDUPDATE = 0x900, /**< The clipboard changed */

    /* Drag and drop events */
    SDL_DROPFILE = 0x1000, /**< The system requests a file open */
    SDL_DROPTEXT = 4097, /**< text/plain drag-and-drop event */
    SDL_DROPBEGIN = 4098, /**< A new set of drops is beginning (NULL filename) */
    SDL_DROPCOMPLETE = 4099, /**< Current set of drops is now complete (NULL filename) */

    /* Audio hotplug events */
    SDL_AUDIODEVICEADDED = 0x1100, /**< A new audio device is available */
    SDL_AUDIODEVICEREMOVED = 4353, /**< An audio device has been removed. */

    /* Sensor events */
    SDL_SENSORUPDATE = 0x1200, /**< A sensor was updated */

    /* Render events */
    SDL_RENDER_TARGETS_RESET = 0x2000, /**< The render targets have been reset and their contents need to be updated */
    SDL_RENDER_DEVICE_RESET = 8193, /**< The device has been reset and all textures need to be recreated */

    /** Events ::SDL_USEREVENT through ::SDL_LASTEVENT are for your use,
    	 *  and should be allocated with SDL_RegisterEvents()
    	 */
    SDL_USEREVENT = 0x8000,

    /**
    	 *  This last event is only for bounding internal arrays
    	 */
    SDL_LASTEVENT = 0xFFFF
}

enum SDL_FIRSTEVENT = SDL_EventType.SDL_FIRSTEVENT;
enum SDL_QUIT = SDL_EventType.SDL_QUIT;
enum SDL_APP_TERMINATING = SDL_EventType.SDL_APP_TERMINATING;
enum SDL_APP_LOWMEMORY = SDL_EventType.SDL_APP_LOWMEMORY;
enum SDL_APP_WILLENTERBACKGROUND = SDL_EventType.SDL_APP_WILLENTERBACKGROUND;
enum SDL_APP_DIDENTERBACKGROUND = SDL_EventType.SDL_APP_DIDENTERBACKGROUND;
enum SDL_APP_WILLENTERFOREGROUND = SDL_EventType.SDL_APP_WILLENTERFOREGROUND;
enum SDL_APP_DIDENTERFOREGROUND = SDL_EventType.SDL_APP_DIDENTERFOREGROUND;
enum SDL_DISPLAYEVENT = SDL_EventType.SDL_DISPLAYEVENT;
enum SDL_WINDOWEVENT = SDL_EventType.SDL_WINDOWEVENT;
enum SDL_SYSWMEVENT = SDL_EventType.SDL_SYSWMEVENT;
enum SDL_KEYDOWN = SDL_EventType.SDL_KEYDOWN;
enum SDL_KEYUP = SDL_EventType.SDL_KEYUP;
enum SDL_TEXTEDITING = SDL_EventType.SDL_TEXTEDITING;
enum SDL_TEXTINPUT = SDL_EventType.SDL_TEXTINPUT;
enum SDL_KEYMAPCHANGED = SDL_EventType.SDL_KEYMAPCHANGED;
enum SDL_MOUSEMOTION = SDL_EventType.SDL_MOUSEMOTION;
enum SDL_MOUSEBUTTONDOWN = SDL_EventType.SDL_MOUSEBUTTONDOWN;
enum SDL_MOUSEBUTTONUP = SDL_EventType.SDL_MOUSEBUTTONUP;
enum SDL_MOUSEWHEEL = SDL_EventType.SDL_MOUSEWHEEL;
enum SDL_JOYAXISMOTION = SDL_EventType.SDL_JOYAXISMOTION;
enum SDL_JOYBALLMOTION = SDL_EventType.SDL_JOYBALLMOTION;
enum SDL_JOYHATMOTION = SDL_EventType.SDL_JOYHATMOTION;
enum SDL_JOYBUTTONDOWN = SDL_EventType.SDL_JOYBUTTONDOWN;
enum SDL_JOYBUTTONUP = SDL_EventType.SDL_JOYBUTTONUP;
enum SDL_JOYDEVICEADDED = SDL_EventType.SDL_JOYDEVICEADDED;
enum SDL_JOYDEVICEREMOVED = SDL_EventType.SDL_JOYDEVICEREMOVED;
enum SDL_CONTROLLERAXISMOTION = SDL_EventType.SDL_CONTROLLERAXISMOTION;
enum SDL_CONTROLLERBUTTONDOWN = SDL_EventType.SDL_CONTROLLERBUTTONDOWN;
enum SDL_CONTROLLERBUTTONUP = SDL_EventType.SDL_CONTROLLERBUTTONUP;
enum SDL_CONTROLLERDEVICEADDED = SDL_EventType.SDL_CONTROLLERDEVICEADDED;
enum SDL_CONTROLLERDEVICEREMOVED = SDL_EventType.SDL_CONTROLLERDEVICEREMOVED;
enum SDL_CONTROLLERDEVICEREMAPPED = SDL_EventType.SDL_CONTROLLERDEVICEREMAPPED;
enum SDL_FINGERDOWN = SDL_EventType.SDL_FINGERDOWN;
enum SDL_FINGERUP = SDL_EventType.SDL_FINGERUP;
enum SDL_FINGERMOTION = SDL_EventType.SDL_FINGERMOTION;
enum SDL_DOLLARGESTURE = SDL_EventType.SDL_DOLLARGESTURE;
enum SDL_DOLLARRECORD = SDL_EventType.SDL_DOLLARRECORD;
enum SDL_MULTIGESTURE = SDL_EventType.SDL_MULTIGESTURE;
enum SDL_CLIPBOARDUPDATE = SDL_EventType.SDL_CLIPBOARDUPDATE;
enum SDL_DROPFILE = SDL_EventType.SDL_DROPFILE;
enum SDL_DROPTEXT = SDL_EventType.SDL_DROPTEXT;
enum SDL_DROPBEGIN = SDL_EventType.SDL_DROPBEGIN;
enum SDL_DROPCOMPLETE = SDL_EventType.SDL_DROPCOMPLETE;
enum SDL_AUDIODEVICEADDED = SDL_EventType.SDL_AUDIODEVICEADDED;
enum SDL_AUDIODEVICEREMOVED = SDL_EventType.SDL_AUDIODEVICEREMOVED;
enum SDL_SENSORUPDATE = SDL_EventType.SDL_SENSORUPDATE;
enum SDL_RENDER_TARGETS_RESET = SDL_EventType.SDL_RENDER_TARGETS_RESET;
enum SDL_RENDER_DEVICE_RESET = SDL_EventType.SDL_RENDER_DEVICE_RESET;
enum SDL_USEREVENT = SDL_EventType.SDL_USEREVENT;
enum SDL_LASTEVENT = SDL_EventType.SDL_LASTEVENT;

/**
 *  \brief Fields shared by every event
 */
struct SDL_CommonEvent
{
    Uint32 type;
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
}

/**
 *  \brief Display state change event data (event.display.*)
 */
struct SDL_DisplayEvent
{
    Uint32 type; /**< ::SDL_DISPLAYEVENT */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 display; /**< The associated display index */
    Uint8 event; /**< ::SDL_DisplayEventID */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint32 data1; /**< event dependent data */
}

/**
 *  \brief Window state change event data (event.window.*)
 */
struct SDL_WindowEvent
{
    Uint32 type; /**< ::SDL_WINDOWEVENT */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The associated window */
    Uint8 event; /**< ::SDL_WindowEventID */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint32 data1; /**< event dependent data */
    Sint32 data2; /**< event dependent data */
}

/**
 *  \brief Keyboard button event structure (event.key.*)
 */
struct SDL_KeyboardEvent
{
    Uint32 type; /**< ::SDL_KEYDOWN or ::SDL_KEYUP */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The window with keyboard focus, if any */
    Uint8 state; /**< ::SDL_PRESSED or ::SDL_RELEASED */
    Uint8 repeat; /**< Non-zero if this is a key repeat */
    Uint8 padding2;
    Uint8 padding3;
    SDL_Keysym keysym; /**< The key that was pressed or released */
}

/**
 *  \brief Keyboard text editing event structure (event.edit.*)
 */
struct SDL_TextEditingEvent
{
    Uint32 type; /**< ::SDL_TEXTEDITING */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The window with keyboard focus, if any */
    char[32] text; /**< The editing text */
    Sint32 start; /**< The start cursor of selected editing text */
    Sint32 length; /**< The length of selected editing text */
}

/**
 *  \brief Keyboard text input event structure (event.text.*)
 */
struct SDL_TextInputEvent
{
    Uint32 type; /**< ::SDL_TEXTINPUT */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The window with keyboard focus, if any */
    char[32] text; /**< The input text */
}

/**
 *  \brief Mouse motion event structure (event.motion.*)
 */
struct SDL_MouseMotionEvent
{
    Uint32 type; /**< ::SDL_MOUSEMOTION */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The window with mouse focus, if any */
    Uint32 which; /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
    Uint32 state; /**< The current button state */
    Sint32 x; /**< X coordinate, relative to window */
    Sint32 y; /**< Y coordinate, relative to window */
    Sint32 xrel; /**< The relative motion in the X direction */
    Sint32 yrel; /**< The relative motion in the Y direction */
}

/**
 *  \brief Mouse button event structure (event.button.*)
 */
struct SDL_MouseButtonEvent
{
    Uint32 type; /**< ::SDL_MOUSEBUTTONDOWN or ::SDL_MOUSEBUTTONUP */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The window with mouse focus, if any */
    Uint32 which; /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
    Uint8 button; /**< The mouse button index */
    Uint8 state; /**< ::SDL_PRESSED or ::SDL_RELEASED */
    Uint8 clicks; /**< 1 for single-click, 2 for double-click, etc. */
    Uint8 padding1;
    Sint32 x; /**< X coordinate, relative to window */
    Sint32 y; /**< Y coordinate, relative to window */
}

/**
 *  \brief Mouse wheel event structure (event.wheel.*)
 */
struct SDL_MouseWheelEvent
{
    Uint32 type; /**< ::SDL_MOUSEWHEEL */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The window with mouse focus, if any */
    Uint32 which; /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
    Sint32 x; /**< The amount scrolled horizontally, positive to the right and negative to the left */
    Sint32 y; /**< The amount scrolled vertically, positive away from the user and negative toward the user */
    Uint32 direction; /**< Set to one of the SDL_MOUSEWHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back */
}

/**
 *  \brief Joystick axis motion event structure (event.jaxis.*)
 */
struct SDL_JoyAxisEvent
{
    Uint32 type; /**< ::SDL_JOYAXISMOTION */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_JoystickID which; /**< The joystick instance id */
    Uint8 axis; /**< The joystick axis index */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value; /**< The axis value (range: -32768 to 32767) */
    Uint16 padding4;
}

/**
 *  \brief Joystick trackball motion event structure (event.jball.*)
 */
struct SDL_JoyBallEvent
{
    Uint32 type; /**< ::SDL_JOYBALLMOTION */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_JoystickID which; /**< The joystick instance id */
    Uint8 ball; /**< The joystick trackball index */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 xrel; /**< The relative motion in the X direction */
    Sint16 yrel; /**< The relative motion in the Y direction */
}

/**
 *  \brief Joystick hat position change event structure (event.jhat.*)
 */
struct SDL_JoyHatEvent
{
    Uint32 type; /**< ::SDL_JOYHATMOTION */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_JoystickID which; /**< The joystick instance id */
    Uint8 hat; /**< The joystick hat index */
    Uint8 value; /**< The hat position value.
    						 *   \sa ::SDL_HAT_LEFTUP ::SDL_HAT_UP ::SDL_HAT_RIGHTUP
    						 *   \sa ::SDL_HAT_LEFT ::SDL_HAT_CENTERED ::SDL_HAT_RIGHT
    						 *   \sa ::SDL_HAT_LEFTDOWN ::SDL_HAT_DOWN ::SDL_HAT_RIGHTDOWN
    						 *
    						 *   Note that zero means the POV is centered.
    						 */
    Uint8 padding1;
    Uint8 padding2;
}

/**
 *  \brief Joystick button event structure (event.jbutton.*)
 */
struct SDL_JoyButtonEvent
{
    Uint32 type; /**< ::SDL_JOYBUTTONDOWN or ::SDL_JOYBUTTONUP */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_JoystickID which; /**< The joystick instance id */
    Uint8 button; /**< The joystick button index */
    Uint8 state; /**< ::SDL_PRESSED or ::SDL_RELEASED */
    Uint8 padding1;
    Uint8 padding2;
}

/**
 *  \brief Joystick device event structure (event.jdevice.*)
 */
struct SDL_JoyDeviceEvent
{
    Uint32 type; /**< ::SDL_JOYDEVICEADDED or ::SDL_JOYDEVICEREMOVED */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Sint32 which; /**< The joystick device index for the ADDED event, instance id for the REMOVED event */
}

/**
 *  \brief Game controller axis motion event structure (event.caxis.*)
 */
struct SDL_ControllerAxisEvent
{
    Uint32 type; /**< ::SDL_CONTROLLERAXISMOTION */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_JoystickID which; /**< The joystick instance id */
    Uint8 axis; /**< The controller axis (SDL_GameControllerAxis) */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value; /**< The axis value (range: -32768 to 32767) */
    Uint16 padding4;
}

/**
 *  \brief Game controller button event structure (event.cbutton.*)
 */
struct SDL_ControllerButtonEvent
{
    Uint32 type; /**< ::SDL_CONTROLLERBUTTONDOWN or ::SDL_CONTROLLERBUTTONUP */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_JoystickID which; /**< The joystick instance id */
    Uint8 button; /**< The controller button (SDL_GameControllerButton) */
    Uint8 state; /**< ::SDL_PRESSED or ::SDL_RELEASED */
    Uint8 padding1;
    Uint8 padding2;
}

/**
 *  \brief Controller device event structure (event.cdevice.*)
 */
struct SDL_ControllerDeviceEvent
{
    Uint32 type; /**< ::SDL_CONTROLLERDEVICEADDED, ::SDL_CONTROLLERDEVICEREMOVED, or ::SDL_CONTROLLERDEVICEREMAPPED */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Sint32 which; /**< The joystick device index for the ADDED event, instance id for the REMOVED or REMAPPED event */
}

/**
 *  \brief Audio device event structure (event.adevice.*)
 */
struct SDL_AudioDeviceEvent
{
    Uint32 type; /**< ::SDL_AUDIODEVICEADDED, or ::SDL_AUDIODEVICEREMOVED */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 which; /**< The audio device index for the ADDED event (valid until next SDL_GetNumAudioDevices() call), SDL_AudioDeviceID for the REMOVED event */
    Uint8 iscapture; /**< zero if an output device, non-zero if a capture device. */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
}

/**
 *  \brief Touch finger event structure (event.tfinger.*)
 */
struct SDL_TouchFingerEvent
{
    Uint32 type; /**< ::SDL_FINGERMOTION or ::SDL_FINGERDOWN or ::SDL_FINGERUP */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_TouchID touchId; /**< The touch device id */
    SDL_FingerID fingerId;
    float x; /**< Normalized in the range 0...1 */
    float y; /**< Normalized in the range 0...1 */
    float dx; /**< Normalized in the range -1...1 */
    float dy; /**< Normalized in the range -1...1 */
    float pressure; /**< Normalized in the range 0...1 */
}

/**
 *  \brief Multiple Finger Gesture Event (event.mgesture.*)
 */
struct SDL_MultiGestureEvent
{
    Uint32 type; /**< ::SDL_MULTIGESTURE */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_TouchID touchId; /**< The touch device id */
    float dTheta;
    float dDist;
    float x;
    float y;
    Uint16 numFingers;
    Uint16 padding;
}

/**
 * \brief Dollar Gesture Event (event.dgesture.*)
 */
struct SDL_DollarGestureEvent
{
    Uint32 type; /**< ::SDL_DOLLARGESTURE or ::SDL_DOLLARRECORD */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_TouchID touchId; /**< The touch device id */
    SDL_GestureID gestureId;
    Uint32 numFingers;
    float error;
    float x; /**< Normalized center of gesture */
    float y; /**< Normalized center of gesture */
}

/**
 *  \brief An event used to request a file open by the system (event.drop.*)
 *         This event is enabled by default, you can disable it with SDL_EventState().
 *  \note If this event is enabled, you must free the filename in the event.
 */
struct SDL_DropEvent
{
    Uint32 type; /**< ::SDL_DROPBEGIN or ::SDL_DROPFILE or ::SDL_DROPTEXT or ::SDL_DROPCOMPLETE */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    char* file; /**< The file name, which should be freed with SDL_free(), is NULL on begin/complete */
    Uint32 windowID; /**< The window that was dropped on, if any */
}

/**
 *  \brief Sensor event structure (event.sensor.*)
 */
struct SDL_SensorEvent
{
    Uint32 type; /**< ::SDL_SENSORUPDATE */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Sint32 which; /**< The instance ID of the sensor */
    float[6] data; /**< Up to 6 values from the sensor - additional values can be queried using SDL_SensorGetData() */
}

/**
 *  \brief The "quit requested" event
 */
struct SDL_QuitEvent
{
    Uint32 type; /**< ::SDL_QUIT */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
}

/**
 *  \brief OS Specific event
 */
struct SDL_OSEvent
{
    Uint32 type; /**< ::SDL_QUIT */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
}

/**
 *  \brief A user-defined event type (event.user.*)
 */
struct SDL_UserEvent
{
    Uint32 type; /**< ::SDL_USEREVENT through ::SDL_LASTEVENT-1 */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID; /**< The associated window if any */
    Sint32 code; /**< User defined event code */
    void* data1; /**< User defined data pointer */
    void* data2; /**< User defined data pointer */
}

enum SDL_SYSWM_TYPE {
    SDL_SYSWM_UNKNOWN,
    SDL_SYSWM_WINDOWS,
    SDL_SYSWM_X11,
    SDL_SYSWM_DIRECTFB,
    SDL_SYSWM_COCOA,
    SDL_SYSWM_UIKIT,
    SDL_SYSWM_WAYLAND,
    SDL_SYSWM_MIR,
    SDL_SYSWM_WINRT,
    SDL_SYSWM_ANDROID,
    SDL_SYSWM_VIVANTE,
}

struct SDL_SysWMmsg;

struct SDL_SysWMinfo {
    SDL_version version_; // version is reserved in D
    SDL_SYSWM_TYPE subsystem;

    union info_ {
        version(Windows) {
            struct win_ {
               void* window;
               void* hdc;
            }
            win_ win;
        }
        version(Posix) {
            struct x11_ {
                void* display;
                uint window;
            }
            x11_ x11;
        }
    }
    info_ info;
}

SDL_bool SDL_GetWindowWMInfo(SDL_Window* window,SDL_SysWMinfo * info);

/**
 *  \brief A video driver dependent system event (event.syswm.*)
 *         This event is disabled by default, you can enable it with SDL_EventState()
 *
 *  \note If you want to use this event, you should include SDL_syswm.h.
 */
struct SDL_SysWMEvent
{
    Uint32 type; /**< ::SDL_SYSWMEVENT */
    Uint32 timestamp; /**< In milliseconds, populated using SDL_GetTicks() */
    SDL_SysWMmsg* msg; /**< driver dependent data, defined in SDL_syswm.h */
}

/**
 *  \brief General event structure
 */
union SDL_Event
{
    Uint32 type; /**< Event type, shared with all events */
    SDL_CommonEvent common; /**< Common event data */
    SDL_DisplayEvent display; /**< Window event data */
    SDL_WindowEvent window; /**< Window event data */
    SDL_KeyboardEvent key; /**< Keyboard event data */
    SDL_TextEditingEvent edit; /**< Text editing event data */
    SDL_TextInputEvent text; /**< Text input event data */
    SDL_MouseMotionEvent motion; /**< Mouse motion event data */
    SDL_MouseButtonEvent button; /**< Mouse button event data */
    SDL_MouseWheelEvent wheel; /**< Mouse wheel event data */
    SDL_JoyAxisEvent jaxis; /**< Joystick axis event data */
    SDL_JoyBallEvent jball; /**< Joystick ball event data */
    SDL_JoyHatEvent jhat; /**< Joystick hat event data */
    SDL_JoyButtonEvent jbutton; /**< Joystick button event data */
    SDL_JoyDeviceEvent jdevice; /**< Joystick device change event data */
    SDL_ControllerAxisEvent caxis; /**< Game Controller axis event data */
    SDL_ControllerButtonEvent cbutton; /**< Game Controller button event data */
    SDL_ControllerDeviceEvent cdevice; /**< Game Controller device event data */
    SDL_AudioDeviceEvent adevice; /**< Audio device event data */
    SDL_SensorEvent sensor; /**< Sensor event data */
    SDL_QuitEvent quit; /**< Quit request event data */
    SDL_UserEvent user; /**< Custom event data */
    SDL_SysWMEvent syswm; /**< System dependent window event data */
    SDL_TouchFingerEvent tfinger; /**< Touch finger event data */
    SDL_MultiGestureEvent mgesture; /**< Gesture event data */
    SDL_DollarGestureEvent dgesture; /**< Gesture event data */
    SDL_DropEvent drop; /**< Drag and drop event data */

    /* This is necessary for ABI compatibility between Visual C++ and GCC
    	   Visual C++ will respect the push pack pragma and use 52 bytes for
    	   this structure, and GCC will use the alignment of the largest datatype
    	   within the union, which is 8 bytes.

    	   So... we'll add padding to force the size to be 56 bytes for both.
    	*/
    Uint8[56] padding;
}

/* Function prototypes */

/**
 *  Pumps the event loop, gathering events from the input devices.
 *
 *  This function updates the event queue and internal input device state.
 *
 *  This should only be run in the thread that sets the video mode.
 */
void SDL_PumpEvents ();

/* @{ */
enum SDL_eventaction
{
    SDL_ADDEVENT = 0,
    SDL_PEEKEVENT = 1,
    SDL_GETEVENT = 2
}

/**
 *  Checks the event queue for messages and optionally returns them.
 *
 *  If \c action is ::SDL_ADDEVENT, up to \c numevents events will be added to
 *  the back of the event queue.
 *
 *  If \c action is ::SDL_PEEKEVENT, up to \c numevents events at the front
 *  of the event queue, within the specified minimum and maximum type,
 *  will be returned and will not be removed from the queue.
 *
 *  If \c action is ::SDL_GETEVENT, up to \c numevents events at the front
 *  of the event queue, within the specified minimum and maximum type,
 *  will be returned and will be removed from the queue.
 *
 *  \return The number of events actually stored, or -1 if there was an error.
 *
 *  This function is thread-safe.
 */
int SDL_PeepEvents (
    SDL_Event* events,
    int numevents,
    SDL_eventaction action,
    Uint32 minType,
    Uint32 maxType);
/* @} */

/**
 *  Checks to see if certain event types are in the event queue.
 */
SDL_bool SDL_HasEvent (Uint32 type);
SDL_bool SDL_HasEvents (Uint32 minType, Uint32 maxType);

/**
 *  This function clears events from the event queue
 *  This function only affects currently queued events. If you want to make
 *  sure that all pending OS events are flushed, you can call SDL_PumpEvents()
 *  on the main thread immediately before the flush call.
 */
void SDL_FlushEvent (Uint32 type);
void SDL_FlushEvents (Uint32 minType, Uint32 maxType);

/**
 *  \brief Polls for currently pending events.
 *
 *  \return 1 if there are any pending events, or 0 if there are none available.
 *
 *  \param event If not NULL, the next event is removed from the queue and
 *               stored in that area.
 */
int SDL_PollEvent (SDL_Event* event);

/**
 *  \brief Waits indefinitely for the next available event.
 *
 *  \return 1, or 0 if there was an error while waiting for events.
 *
 *  \param event If not NULL, the next event is removed from the queue and
 *               stored in that area.
 */
int SDL_WaitEvent (SDL_Event* event);

/**
 *  \brief Waits until the specified timeout (in milliseconds) for the next
 *         available event.
 *
 *  \return 1, or 0 if there was an error while waiting for events.
 *
 *  \param event If not NULL, the next event is removed from the queue and
 *               stored in that area.
 *  \param timeout The timeout (in milliseconds) to wait for next event.
 */
int SDL_WaitEventTimeout (SDL_Event* event, int timeout);

/**
 *  \brief Add an event to the event queue.
 *
 *  \return 1 on success, 0 if the event was filtered, or -1 if the event queue
 *          was full or there was some other error.
 */
int SDL_PushEvent (SDL_Event* event);

alias SDL_EventFilter = int function (void* userdata, SDL_Event* event);

/**
 *  Sets up a filter to process all events before they change internal state and
 *  are posted to the internal event queue.
 *
 *  The filter is prototyped as:
 *  \code
 *      int SDL_EventFilter(void *userdata, SDL_Event * event);
 *  \endcode
 *
 *  If the filter returns 1, then the event will be added to the internal queue.
 *  If it returns 0, then the event will be dropped from the queue, but the
 *  internal state will still be updated.  This allows selective filtering of
 *  dynamically arriving events.
 *
 *  \warning  Be very careful of what you do in the event filter function, as
 *            it may run in a different thread!
 *
 *  There is one caveat when dealing with the ::SDL_QuitEvent event type.  The
 *  event filter is only called when the window manager desires to close the
 *  application window.  If the event filter returns 1, then the window will
 *  be closed, otherwise the window will remain open if possible.
 *
 *  If the quit event is generated by an interrupt signal, it will bypass the
 *  internal queue and be delivered to the application at the next event poll.
 */
void SDL_SetEventFilter (SDL_EventFilter filter, void* userdata);

/**
 *  Return the current event filter - can be used to "chain" filters.
 *  If there is no event filter set, this function returns SDL_FALSE.
 */
SDL_bool SDL_GetEventFilter (SDL_EventFilter* filter, void** userdata);

/**
 *  Add a function which is called when an event is added to the queue.
 */
void SDL_AddEventWatch (SDL_EventFilter filter, void* userdata);

/**
 *  Remove an event watch function added with SDL_AddEventWatch()
 */
void SDL_DelEventWatch (SDL_EventFilter filter, void* userdata);

/**
 *  Run the filter function on the current event queue, removing any
 *  events for which the filter returns 0.
 */
void SDL_FilterEvents (SDL_EventFilter filter, void* userdata);

/* @{ */

/**
 *  This function allows you to set the state of processing certain events.
 *   - If \c state is set to ::SDL_IGNORE, that event will be automatically
 *     dropped from the event queue and will not be filtered.
 *   - If \c state is set to ::SDL_ENABLE, that event will be processed
 *     normally.
 *   - If \c state is set to ::SDL_QUERY, SDL_EventState() will return the
 *     current processing state of the specified event.
 */
Uint8 SDL_EventState (Uint32 type, int state);
/* @} */

/**
 *  This function allocates a set of user-defined events, and returns
 *  the beginning event number for that set of events.
 *
 *  If there aren't enough user-defined events left, this function
 *  returns (Uint32)-1
 */
Uint32 SDL_RegisterEvents (int numevents);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_events_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_events.h ***/

/*** Start of inlined file: SDL_filesystem.h ***/
/**
 *  \file SDL_filesystem.h
 *
 *  \brief Include file for filesystem SDL API functions
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 * \brief Get the path where the application resides.
 *
 * Get the "base path". This is the directory where the application was run
 *  from, which is probably the installation directory, and may or may not
 *  be the process's current working directory.
 *
 * This returns an absolute path in UTF-8 encoding, and is guaranteed to
 *  end with a path separator ('\\' on Windows, '/' most other places).
 *
 * The pointer returned by this function is owned by you. Please call
 *  SDL_free() on the pointer when you are done with it, or it will be a
 *  memory leak. This is not necessarily a fast call, though, so you should
 *  call this once near startup and save the string if you need it.
 *
 * Some platforms can't determine the application's path, and on other
 *  platforms, this might be meaningless. In such cases, this function will
 *  return NULL.
 *
 *  \return String of base dir in UTF-8 encoding, or NULL on error.
 *
 * \sa SDL_GetPrefPath
 */
char* SDL_GetBasePath ();

/**
 * \brief Get the user-and-app-specific path where files can be written.
 *
 * Get the "pref dir". This is meant to be where users can write personal
 *  files (preferences and save games, etc) that are specific to your
 *  application. This directory is unique per user, per application.
 *
 * This function will decide the appropriate location in the native filesystem,
 *  create the directory if necessary, and return a string of the absolute
 *  path to the directory in UTF-8 encoding.
 *
 * On Windows, the string might look like:
 *  "C:\\Users\\bob\\AppData\\Roaming\\My Company\\My Program Name\\"
 *
 * On Linux, the string might look like:
 *  "/home/bob/.local/share/My Program Name/"
 *
 * On Mac OS X, the string might look like:
 *  "/Users/bob/Library/Application Support/My Program Name/"
 *
 * (etc.)
 *
 * You specify the name of your organization (if it's not a real organization,
 *  your name or an Internet domain you own might do) and the name of your
 *  application. These should be untranslated proper names.
 *
 * Both the org and app strings may become part of a directory name, so
 *  please follow these rules:
 *
 *    - Try to use the same org string (including case-sensitivity) for
 *      all your applications that use this function.
 *    - Always use a unique app string for each one, and make sure it never
 *      changes for an app once you've decided on it.
 *    - Unicode characters are legal, as long as it's UTF-8 encoded, but...
 *    - ...only use letters, numbers, and spaces. Avoid punctuation like
 *      "Game Name 2: Bad Guy's Revenge!" ... "Game Name 2" is sufficient.
 *
 * This returns an absolute path in UTF-8 encoding, and is guaranteed to
 *  end with a path separator ('\\' on Windows, '/' most other places).
 *
 * The pointer returned by this function is owned by you. Please call
 *  SDL_free() on the pointer when you are done with it, or it will be a
 *  memory leak. This is not necessarily a fast call, though, so you should
 *  call this once near startup and save the string if you need it.
 *
 * You should assume the path returned by this function is the only safe
 *  place to write files (and that SDL_GetBasePath(), while it might be
 *  writable, or even the parent of the returned path, aren't where you
 *  should be writing things).
 *
 * Some platforms can't determine the pref path, and on other
 *  platforms, this might be meaningless. In such cases, this function will
 *  return NULL.
 *
 *   \param org The name of your organization.
 *   \param app The name of your application.
 *  \return UTF-8 string of user dir in platform-dependent notation. NULL
 *          if there's a problem (creating directory failed, etc).
 *
 * \sa SDL_GetBasePath
 */
char* SDL_GetPrefPath (const(char)* org, const(char)* app);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_filesystem_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_filesystem.h ***/

/*** Start of inlined file: SDL_haptic.h ***/
/**
 *  \file SDL_haptic.h
 *
 *  \brief The SDL haptic subsystem allows you to control haptic (force feedback)
 *         devices.
 *
 *  The basic usage is as follows:
 *   - Initialize the subsystem (::SDL_INIT_HAPTIC).
 *   - Open a haptic device.
 *    - SDL_HapticOpen() to open from index.
 *    - SDL_HapticOpenFromJoystick() to open from an existing joystick.
 *   - Create an effect (::SDL_HapticEffect).
 *   - Upload the effect with SDL_HapticNewEffect().
 *   - Run the effect with SDL_HapticRunEffect().
 *   - (optional) Free the effect with SDL_HapticDestroyEffect().
 *   - Close the haptic device with SDL_HapticClose().
 *
 * \par Simple rumble example:
 * \code
 *    SDL_Haptic *haptic;
 *
 *    // Open the device
 *    haptic = SDL_HapticOpen( 0 );
 *    if (haptic == NULL)
 *       return -1;
 *
 *    // Initialize simple rumble
 *    if (SDL_HapticRumbleInit( haptic ) != 0)
 *       return -1;
 *
 *    // Play effect at 50% strength for 2 seconds
 *    if (SDL_HapticRumblePlay( haptic, 0.5, 2000 ) != 0)
 *       return -1;
 *    SDL_Delay( 2000 );
 *
 *    // Clean up
 *    SDL_HapticClose( haptic );
 * \endcode
 *
 * \par Complete example:
 * \code
 * int test_haptic( SDL_Joystick * joystick ) {
 *    SDL_Haptic *haptic;
 *    SDL_HapticEffect effect;
 *    int effect_id;
 *
 *    // Open the device
 *    haptic = SDL_HapticOpenFromJoystick( joystick );
 *    if (haptic == NULL) return -1; // Most likely joystick isn't haptic
 *
 *    // See if it can do sine waves
 *    if ((SDL_HapticQuery(haptic) & SDL_HAPTIC_SINE)==0) {
 *       SDL_HapticClose(haptic); // No sine effect
 *       return -1;
 *    }
 *
 *    // Create the effect
 *    memset( &effect, 0, sizeof(SDL_HapticEffect) ); // 0 is safe default
 *    effect.type = SDL_HAPTIC_SINE;
 *    effect.periodic.direction.type = SDL_HAPTIC_POLAR; // Polar coordinates
 *    effect.periodic.direction.dir[0] = 18000; // Force comes from south
 *    effect.periodic.period = 1000; // 1000 ms
 *    effect.periodic.magnitude = 20000; // 20000/32767 strength
 *    effect.periodic.length = 5000; // 5 seconds long
 *    effect.periodic.attack_length = 1000; // Takes 1 second to get max strength
 *    effect.periodic.fade_length = 1000; // Takes 1 second to fade away
 *
 *    // Upload the effect
 *    effect_id = SDL_HapticNewEffect( haptic, &effect );
 *
 *    // Test the effect
 *    SDL_HapticRunEffect( haptic, effect_id, 1 );
 *    SDL_Delay( 5000); // Wait for the effect to finish
 *
 *    // We destroy the effect, although closing the device also does this
 *    SDL_HapticDestroyEffect( haptic, effect_id );
 *
 *    // Close the device
 *    SDL_HapticClose(haptic);
 *
 *    return 0; // Success
 * }
 * \endcode
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* __cplusplus */

/* FIXME: For SDL 2.1, adjust all the magnitude variables to be Uint16 (0xFFFF).
 *
 * At the moment the magnitude variables are mixed between signed/unsigned, and
 * it is also not made clear that ALL of those variables expect a max of 0x7FFF.
 *
 * Some platforms may have higher precision than that (Linux FF, Windows XInput)
 * so we should fix the inconsistency in favor of higher possible precision,
 * adjusting for platforms that use different scales.
 * -flibit
 */

/**
 *  \typedef SDL_Haptic
 *
 *  \brief The haptic structure used to identify an SDL haptic.
 *
 *  \sa SDL_HapticOpen
 *  \sa SDL_HapticOpenFromJoystick
 *  \sa SDL_HapticClose
 */
struct _SDL_Haptic;
alias SDL_Haptic = _SDL_Haptic;

/**
 *  \name Haptic features
 *
 *  Different haptic features a device can have.
 */
/* @{ */

/**
 *  \name Haptic effects
 */
/* @{ */

/**
 *  \brief Constant effect supported.
 *
 *  Constant haptic effect.
 *
 *  \sa SDL_HapticCondition
 */

/**
 *  \brief Sine wave effect supported.
 *
 *  Periodic haptic effect that simulates sine waves.
 *
 *  \sa SDL_HapticPeriodic
 */

/**
 *  \brief Left/Right effect supported.
 *
 *  Haptic effect for direct control over high/low frequency motors.
 *
 *  \sa SDL_HapticLeftRight
 * \warning this value was SDL_HAPTIC_SQUARE right before 2.0.0 shipped. Sorry,
 *          we ran out of bits, and this is important for XInput devices.
 */

/* !!! FIXME: put this back when we have more bits in 2.1 */
/* #define SDL_HAPTIC_SQUARE     (1<<2) */

/**
 *  \brief Triangle wave effect supported.
 *
 *  Periodic haptic effect that simulates triangular waves.
 *
 *  \sa SDL_HapticPeriodic
 */

/**
 *  \brief Sawtoothup wave effect supported.
 *
 *  Periodic haptic effect that simulates saw tooth up waves.
 *
 *  \sa SDL_HapticPeriodic
 */

/**
 *  \brief Sawtoothdown wave effect supported.
 *
 *  Periodic haptic effect that simulates saw tooth down waves.
 *
 *  \sa SDL_HapticPeriodic
 */

/**
 *  \brief Ramp effect supported.
 *
 *  Ramp haptic effect.
 *
 *  \sa SDL_HapticRamp
 */

/**
 *  \brief Spring effect supported - uses axes position.
 *
 *  Condition haptic effect that simulates a spring.  Effect is based on the
 *  axes position.
 *
 *  \sa SDL_HapticCondition
 */

/**
 *  \brief Damper effect supported - uses axes velocity.
 *
 *  Condition haptic effect that simulates dampening.  Effect is based on the
 *  axes velocity.
 *
 *  \sa SDL_HapticCondition
 */

/**
 *  \brief Inertia effect supported - uses axes acceleration.
 *
 *  Condition haptic effect that simulates inertia.  Effect is based on the axes
 *  acceleration.
 *
 *  \sa SDL_HapticCondition
 */

/**
 *  \brief Friction effect supported - uses axes movement.
 *
 *  Condition haptic effect that simulates friction.  Effect is based on the
 *  axes movement.
 *
 *  \sa SDL_HapticCondition
 */

/**
 *  \brief Custom effect is supported.
 *
 *  User defined custom haptic effect.
 */

/* @} */ /* Haptic effects */

/* These last few are features the device has, not effects */

/**
 *  \brief Device can set global gain.
 *
 *  Device supports setting the global gain.
 *
 *  \sa SDL_HapticSetGain
 */

/**
 *  \brief Device can set autocenter.
 *
 *  Device supports setting autocenter.
 *
 *  \sa SDL_HapticSetAutocenter
 */

/**
 *  \brief Device can be queried for effect status.
 *
 *  Device supports querying effect status.
 *
 *  \sa SDL_HapticGetEffectStatus
 */

/**
 *  \brief Device can be paused.
 *
 *  Devices supports being paused.
 *
 *  \sa SDL_HapticPause
 *  \sa SDL_HapticUnpause
 */

/**
 * \name Direction encodings
 */
/* @{ */

/**
 *  \brief Uses polar coordinates for the direction.
 *
 *  \sa SDL_HapticDirection
 */

/**
 *  \brief Uses cartesian coordinates for the direction.
 *
 *  \sa SDL_HapticDirection
 */

/**
 *  \brief Uses spherical coordinates for the direction.
 *
 *  \sa SDL_HapticDirection
 */

/* @} */ /* Direction encodings */

/* @} */ /* Haptic features */

/*
 * Misc defines.
 */

/**
 * \brief Used to play a device an infinite number of times.
 *
 * \sa SDL_HapticRunEffect
 */

/**
 *  \brief Structure that represents a haptic direction.
 *
 *  This is the direction where the force comes from,
 *  instead of the direction in which the force is exerted.
 *
 *  Directions can be specified by:
 *   - ::SDL_HAPTIC_POLAR : Specified by polar coordinates.
 *   - ::SDL_HAPTIC_CARTESIAN : Specified by cartesian coordinates.
 *   - ::SDL_HAPTIC_SPHERICAL : Specified by spherical coordinates.
 *
 *  Cardinal directions of the haptic device are relative to the positioning
 *  of the device.  North is considered to be away from the user.
 *
 *  The following diagram represents the cardinal directions:
 *  \verbatim
				 .--.
				 |__| .-------.
				 |=.| |.-----.|
				 |--| ||     ||
				 |  | |'-----'|
				 |__|~')_____('
				   [ COMPUTER ]

					 North (0,-1)
						 ^
						 |
						 |
   (-1,0)  West <----[ HAPTIC ]----> East (1,0)
						 |
						 |
						 v
					  South (0,1)

					  [ USER ]
						\|||/
						(o o)
				  ---ooO-(_)-Ooo---
	\endverbatim
 *
 *  If type is ::SDL_HAPTIC_POLAR, direction is encoded by hundredths of a
 *  degree starting north and turning clockwise.  ::SDL_HAPTIC_POLAR only uses
 *  the first \c dir parameter.  The cardinal directions would be:
 *   - North: 0 (0 degrees)
 *   - East: 9000 (90 degrees)
 *   - South: 18000 (180 degrees)
 *   - West: 27000 (270 degrees)
 *
 *  If type is ::SDL_HAPTIC_CARTESIAN, direction is encoded by three positions
 *  (X axis, Y axis and Z axis (with 3 axes)).  ::SDL_HAPTIC_CARTESIAN uses
 *  the first three \c dir parameters.  The cardinal directions would be:
 *   - North:  0,-1, 0
 *   - East:   1, 0, 0
 *   - South:  0, 1, 0
 *   - West:  -1, 0, 0
 *
 *  The Z axis represents the height of the effect if supported, otherwise
 *  it's unused.  In cartesian encoding (1, 2) would be the same as (2, 4), you
 *  can use any multiple you want, only the direction matters.
 *
 *  If type is ::SDL_HAPTIC_SPHERICAL, direction is encoded by two rotations.
 *  The first two \c dir parameters are used.  The \c dir parameters are as
 *  follows (all values are in hundredths of degrees):
 *   - Degrees from (1, 0) rotated towards (0, 1).
 *   - Degrees towards (0, 0, 1) (device needs at least 3 axes).
 *
 *
 *  Example of force coming from the south with all encodings (force coming
 *  from the south means the user will have to pull the stick to counteract):
 *  \code
 *  SDL_HapticDirection direction;
 *
 *  // Cartesian directions
 *  direction.type = SDL_HAPTIC_CARTESIAN; // Using cartesian direction encoding.
 *  direction.dir[0] = 0; // X position
 *  direction.dir[1] = 1; // Y position
 *  // Assuming the device has 2 axes, we don't need to specify third parameter.
 *
 *  // Polar directions
 *  direction.type = SDL_HAPTIC_POLAR; // We'll be using polar direction encoding.
 *  direction.dir[0] = 18000; // Polar only uses first parameter
 *
 *  // Spherical coordinates
 *  direction.type = SDL_HAPTIC_SPHERICAL; // Spherical encoding
 *  direction.dir[0] = 9000; // Since we only have two axes we don't need more parameters.
 *  \endcode
 *
 *  \sa SDL_HAPTIC_POLAR
 *  \sa SDL_HAPTIC_CARTESIAN
 *  \sa SDL_HAPTIC_SPHERICAL
 *  \sa SDL_HapticEffect
 *  \sa SDL_HapticNumAxes
 */
struct SDL_HapticDirection
{
    Uint8 type; /**< The type of encoding. */
    Sint32[3] dir; /**< The encoded direction. */
}

/**
 *  \brief A structure containing a template for a Constant effect.
 *
 *  This struct is exclusively for the ::SDL_HAPTIC_CONSTANT effect.
 *
 *  A constant effect applies a constant force in the specified direction
 *  to the joystick.
 *
 *  \sa SDL_HAPTIC_CONSTANT
 *  \sa SDL_HapticEffect
 */
struct SDL_HapticConstant
{
    /* Header */
    Uint16 type; /**< ::SDL_HAPTIC_CONSTANT */
    SDL_HapticDirection direction; /**< Direction of the effect. */

    /* Replay */
    Uint32 length; /**< Duration of the effect. */
    Uint16 delay; /**< Delay before starting the effect. */

    /* Trigger */
    Uint16 button; /**< Button that triggers the effect. */
    Uint16 interval; /**< How soon it can be triggered again after button. */

    /* Constant */
    Sint16 level; /**< Strength of the constant effect. */

    /* Envelope */
    Uint16 attack_length; /**< Duration of the attack. */
    Uint16 attack_level; /**< Level at the start of the attack. */
    Uint16 fade_length; /**< Duration of the fade. */
    Uint16 fade_level; /**< Level at the end of the fade. */
}

/**
 *  \brief A structure containing a template for a Periodic effect.
 *
 *  The struct handles the following effects:
 *   - ::SDL_HAPTIC_SINE
 *   - ::SDL_HAPTIC_LEFTRIGHT
 *   - ::SDL_HAPTIC_TRIANGLE
 *   - ::SDL_HAPTIC_SAWTOOTHUP
 *   - ::SDL_HAPTIC_SAWTOOTHDOWN
 *
 *  A periodic effect consists in a wave-shaped effect that repeats itself
 *  over time.  The type determines the shape of the wave and the parameters
 *  determine the dimensions of the wave.
 *
 *  Phase is given by hundredth of a degree meaning that giving the phase a value
 *  of 9000 will displace it 25% of its period.  Here are sample values:
 *   -     0: No phase displacement.
 *   -  9000: Displaced 25% of its period.
 *   - 18000: Displaced 50% of its period.
 *   - 27000: Displaced 75% of its period.
 *   - 36000: Displaced 100% of its period, same as 0, but 0 is preferred.
 *
 *  Examples:
 *  \verbatim
	SDL_HAPTIC_SINE
	  __      __      __      __
	 /  \    /  \    /  \    /
	/    \__/    \__/    \__/

	SDL_HAPTIC_SQUARE
	 __    __    __    __    __
	|  |  |  |  |  |  |  |  |  |
	|  |__|  |__|  |__|  |__|  |

	SDL_HAPTIC_TRIANGLE
	  /\    /\    /\    /\    /\
	 /  \  /  \  /  \  /  \  /
	/    \/    \/    \/    \/

	SDL_HAPTIC_SAWTOOTHUP
	  /|  /|  /|  /|  /|  /|  /|
	 / | / | / | / | / | / | / |
	/  |/  |/  |/  |/  |/  |/  |

	SDL_HAPTIC_SAWTOOTHDOWN
	\  |\  |\  |\  |\  |\  |\  |
	 \ | \ | \ | \ | \ | \ | \ |
	  \|  \|  \|  \|  \|  \|  \|
	\endverbatim
 *
 *  \sa SDL_HAPTIC_SINE
 *  \sa SDL_HAPTIC_LEFTRIGHT
 *  \sa SDL_HAPTIC_TRIANGLE
 *  \sa SDL_HAPTIC_SAWTOOTHUP
 *  \sa SDL_HAPTIC_SAWTOOTHDOWN
 *  \sa SDL_HapticEffect
 */
struct SDL_HapticPeriodic
{
    /* Header */
    Uint16 type; /**< ::SDL_HAPTIC_SINE, ::SDL_HAPTIC_LEFTRIGHT,
    							 ::SDL_HAPTIC_TRIANGLE, ::SDL_HAPTIC_SAWTOOTHUP or
    							 ::SDL_HAPTIC_SAWTOOTHDOWN */
    SDL_HapticDirection direction; /**< Direction of the effect. */

    /* Replay */
    Uint32 length; /**< Duration of the effect. */
    Uint16 delay; /**< Delay before starting the effect. */

    /* Trigger */
    Uint16 button; /**< Button that triggers the effect. */
    Uint16 interval; /**< How soon it can be triggered again after button. */

    /* Periodic */
    Uint16 period; /**< Period of the wave. */
    Sint16 magnitude; /**< Peak value; if negative, equivalent to 180 degrees extra phase shift. */
    Sint16 offset; /**< Mean value of the wave. */
    Uint16 phase; /**< Positive phase shift given by hundredth of a degree. */

    /* Envelope */
    Uint16 attack_length; /**< Duration of the attack. */
    Uint16 attack_level; /**< Level at the start of the attack. */
    Uint16 fade_length; /**< Duration of the fade. */
    Uint16 fade_level; /**< Level at the end of the fade. */
}

/**
 *  \brief A structure containing a template for a Condition effect.
 *
 *  The struct handles the following effects:
 *   - ::SDL_HAPTIC_SPRING: Effect based on axes position.
 *   - ::SDL_HAPTIC_DAMPER: Effect based on axes velocity.
 *   - ::SDL_HAPTIC_INERTIA: Effect based on axes acceleration.
 *   - ::SDL_HAPTIC_FRICTION: Effect based on axes movement.
 *
 *  Direction is handled by condition internals instead of a direction member.
 *  The condition effect specific members have three parameters.  The first
 *  refers to the X axis, the second refers to the Y axis and the third
 *  refers to the Z axis.  The right terms refer to the positive side of the
 *  axis and the left terms refer to the negative side of the axis.  Please
 *  refer to the ::SDL_HapticDirection diagram for which side is positive and
 *  which is negative.
 *
 *  \sa SDL_HapticDirection
 *  \sa SDL_HAPTIC_SPRING
 *  \sa SDL_HAPTIC_DAMPER
 *  \sa SDL_HAPTIC_INERTIA
 *  \sa SDL_HAPTIC_FRICTION
 *  \sa SDL_HapticEffect
 */
struct SDL_HapticCondition
{
    /* Header */
    Uint16 type; /**< ::SDL_HAPTIC_SPRING, ::SDL_HAPTIC_DAMPER,
    								 ::SDL_HAPTIC_INERTIA or ::SDL_HAPTIC_FRICTION */
    SDL_HapticDirection direction; /**< Direction of the effect - Not used ATM. */

    /* Replay */
    Uint32 length; /**< Duration of the effect. */
    Uint16 delay; /**< Delay before starting the effect. */

    /* Trigger */
    Uint16 button; /**< Button that triggers the effect. */
    Uint16 interval; /**< How soon it can be triggered again after button. */

    /* Condition */
    Uint16[3] right_sat; /**< Level when joystick is to the positive side; max 0xFFFF. */
    Uint16[3] left_sat; /**< Level when joystick is to the negative side; max 0xFFFF. */
    Sint16[3] right_coeff; /**< How fast to increase the force towards the positive side. */
    Sint16[3] left_coeff; /**< How fast to increase the force towards the negative side. */
    Uint16[3] deadband; /**< Size of the dead zone; max 0xFFFF: whole axis-range when 0-centered. */
    Sint16[3] center; /**< Position of the dead zone. */
}

/**
 *  \brief A structure containing a template for a Ramp effect.
 *
 *  This struct is exclusively for the ::SDL_HAPTIC_RAMP effect.
 *
 *  The ramp effect starts at start strength and ends at end strength.
 *  It augments in linear fashion.  If you use attack and fade with a ramp
 *  the effects get added to the ramp effect making the effect become
 *  quadratic instead of linear.
 *
 *  \sa SDL_HAPTIC_RAMP
 *  \sa SDL_HapticEffect
 */
struct SDL_HapticRamp
{
    /* Header */
    Uint16 type; /**< ::SDL_HAPTIC_RAMP */
    SDL_HapticDirection direction; /**< Direction of the effect. */

    /* Replay */
    Uint32 length; /**< Duration of the effect. */
    Uint16 delay; /**< Delay before starting the effect. */

    /* Trigger */
    Uint16 button; /**< Button that triggers the effect. */
    Uint16 interval; /**< How soon it can be triggered again after button. */

    /* Ramp */
    Sint16 start; /**< Beginning strength level. */
    Sint16 end; /**< Ending strength level. */

    /* Envelope */
    Uint16 attack_length; /**< Duration of the attack. */
    Uint16 attack_level; /**< Level at the start of the attack. */
    Uint16 fade_length; /**< Duration of the fade. */
    Uint16 fade_level; /**< Level at the end of the fade. */
}

/**
 * \brief A structure containing a template for a Left/Right effect.
 *
 * This struct is exclusively for the ::SDL_HAPTIC_LEFTRIGHT effect.
 *
 * The Left/Right effect is used to explicitly control the large and small
 * motors, commonly found in modern game controllers. The small (right) motor
 * is high frequency, and the large (left) motor is low frequency.
 *
 * \sa SDL_HAPTIC_LEFTRIGHT
 * \sa SDL_HapticEffect
 */
struct SDL_HapticLeftRight
{
    /* Header */
    Uint16 type; /**< ::SDL_HAPTIC_LEFTRIGHT */

    /* Replay */
    Uint32 length; /**< Duration of the effect in milliseconds. */

    /* Rumble */
    Uint16 large_magnitude; /**< Control of the large controller motor. */
    Uint16 small_magnitude; /**< Control of the small controller motor. */
}

/**
 *  \brief A structure containing a template for the ::SDL_HAPTIC_CUSTOM effect.
 *
 *  This struct is exclusively for the ::SDL_HAPTIC_CUSTOM effect.
 *
 *  A custom force feedback effect is much like a periodic effect, where the
 *  application can define its exact shape.  You will have to allocate the
 *  data yourself.  Data should consist of channels * samples Uint16 samples.
 *
 *  If channels is one, the effect is rotated using the defined direction.
 *  Otherwise it uses the samples in data for the different axes.
 *
 *  \sa SDL_HAPTIC_CUSTOM
 *  \sa SDL_HapticEffect
 */
struct SDL_HapticCustom
{
    /* Header */
    Uint16 type; /**< ::SDL_HAPTIC_CUSTOM */
    SDL_HapticDirection direction; /**< Direction of the effect. */

    /* Replay */
    Uint32 length; /**< Duration of the effect. */
    Uint16 delay; /**< Delay before starting the effect. */

    /* Trigger */
    Uint16 button; /**< Button that triggers the effect. */
    Uint16 interval; /**< How soon it can be triggered again after button. */

    /* Custom */
    Uint8 channels; /**< Axes to use, minimum of one. */
    Uint16 period; /**< Sample periods. */
    Uint16 samples; /**< Amount of samples. */
    Uint16* data; /**< Should contain channels*samples items. */

    /* Envelope */
    Uint16 attack_length; /**< Duration of the attack. */
    Uint16 attack_level; /**< Level at the start of the attack. */
    Uint16 fade_length; /**< Duration of the fade. */
    Uint16 fade_level; /**< Level at the end of the fade. */
}

/**
 *  \brief The generic template for any haptic effect.
 *
 *  All values max at 32767 (0x7FFF).  Signed values also can be negative.
 *  Time values unless specified otherwise are in milliseconds.
 *
 *  You can also pass ::SDL_HAPTIC_INFINITY to length instead of a 0-32767
 *  value.  Neither delay, interval, attack_length nor fade_length support
 *  ::SDL_HAPTIC_INFINITY.  Fade will also not be used since effect never ends.
 *
 *  Additionally, the ::SDL_HAPTIC_RAMP effect does not support a duration of
 *  ::SDL_HAPTIC_INFINITY.
 *
 *  Button triggers may not be supported on all devices, it is advised to not
 *  use them if possible.  Buttons start at index 1 instead of index 0 like
 *  the joystick.
 *
 *  If both attack_length and fade_level are 0, the envelope is not used,
 *  otherwise both values are used.
 *
 *  Common parts:
 *  \code
 *  // Replay - All effects have this
 *  Uint32 length;        // Duration of effect (ms).
 *  Uint16 delay;         // Delay before starting effect.
 *
 *  // Trigger - All effects have this
 *  Uint16 button;        // Button that triggers effect.
 *  Uint16 interval;      // How soon before effect can be triggered again.
 *
 *  // Envelope - All effects except condition effects have this
 *  Uint16 attack_length; // Duration of the attack (ms).
 *  Uint16 attack_level;  // Level at the start of the attack.
 *  Uint16 fade_length;   // Duration of the fade out (ms).
 *  Uint16 fade_level;    // Level at the end of the fade.
 *  \endcode
 *
 *
 *  Here we have an example of a constant effect evolution in time:
 *  \verbatim
	Strength
	^
	|
	|    effect level -->  _________________
	|                     /                 \
	|                    /                   \
	|                   /                     \
	|                  /                       \
	| attack_level --> |                        \
	|                  |                        |  <---  fade_level
	|
	+--------------------------------------------------> Time
					   [--]                 [---]
					   attack_length        fade_length

	[------------------][-----------------------]
	delay               length
	\endverbatim
 *
 *  Note either the attack_level or the fade_level may be above the actual
 *  effect level.
 *
 *  \sa SDL_HapticConstant
 *  \sa SDL_HapticPeriodic
 *  \sa SDL_HapticCondition
 *  \sa SDL_HapticRamp
 *  \sa SDL_HapticLeftRight
 *  \sa SDL_HapticCustom
 */
union SDL_HapticEffect
{
    /* Common for all force feedback effects */
    Uint16 type; /**< Effect type. */
    SDL_HapticConstant constant; /**< Constant effect. */
    SDL_HapticPeriodic periodic; /**< Periodic effect. */
    SDL_HapticCondition condition; /**< Condition effect. */
    SDL_HapticRamp ramp; /**< Ramp effect. */
    SDL_HapticLeftRight leftright; /**< Left/Right effect. */
    SDL_HapticCustom custom; /**< Custom effect. */
}

/* Function prototypes */
/**
 *  \brief Count the number of haptic devices attached to the system.
 *
 *  \return Number of haptic devices detected on the system.
 */
int SDL_NumHaptics ();

/**
 *  \brief Get the implementation dependent name of a haptic device.
 *
 *  This can be called before any joysticks are opened.
 *  If no name can be found, this function returns NULL.
 *
 *  \param device_index Index of the device to get its name.
 *  \return Name of the device or NULL on error.
 *
 *  \sa SDL_NumHaptics
 */
const(char)* SDL_HapticName (int device_index);

/**
 *  \brief Opens a haptic device for use.
 *
 *  The index passed as an argument refers to the N'th haptic device on this
 *  system.
 *
 *  When opening a haptic device, its gain will be set to maximum and
 *  autocenter will be disabled.  To modify these values use
 *  SDL_HapticSetGain() and SDL_HapticSetAutocenter().
 *
 *  \param device_index Index of the device to open.
 *  \return Device identifier or NULL on error.
 *
 *  \sa SDL_HapticIndex
 *  \sa SDL_HapticOpenFromMouse
 *  \sa SDL_HapticOpenFromJoystick
 *  \sa SDL_HapticClose
 *  \sa SDL_HapticSetGain
 *  \sa SDL_HapticSetAutocenter
 *  \sa SDL_HapticPause
 *  \sa SDL_HapticStopAll
 */
SDL_Haptic* SDL_HapticOpen (int device_index);

/**
 *  \brief Checks if the haptic device at index has been opened.
 *
 *  \param device_index Index to check to see if it has been opened.
 *  \return 1 if it has been opened or 0 if it hasn't.
 *
 *  \sa SDL_HapticOpen
 *  \sa SDL_HapticIndex
 */
int SDL_HapticOpened (int device_index);

/**
 *  \brief Gets the index of a haptic device.
 *
 *  \param haptic Haptic device to get the index of.
 *  \return The index of the haptic device or -1 on error.
 *
 *  \sa SDL_HapticOpen
 *  \sa SDL_HapticOpened
 */
int SDL_HapticIndex (SDL_Haptic* haptic);

/**
 *  \brief Gets whether or not the current mouse has haptic capabilities.
 *
 *  \return SDL_TRUE if the mouse is haptic, SDL_FALSE if it isn't.
 *
 *  \sa SDL_HapticOpenFromMouse
 */
int SDL_MouseIsHaptic ();

/**
 *  \brief Tries to open a haptic device from the current mouse.
 *
 *  \return The haptic device identifier or NULL on error.
 *
 *  \sa SDL_MouseIsHaptic
 *  \sa SDL_HapticOpen
 */
SDL_Haptic* SDL_HapticOpenFromMouse ();

/**
 *  \brief Checks to see if a joystick has haptic features.
 *
 *  \param joystick Joystick to test for haptic capabilities.
 *  \return SDL_TRUE if the joystick is haptic, SDL_FALSE if it isn't
 *          or -1 if an error occurred.
 *
 *  \sa SDL_HapticOpenFromJoystick
 */
int SDL_JoystickIsHaptic (SDL_Joystick* joystick);

/**
 *  \brief Opens a haptic device for use from a joystick device.
 *
 *  You must still close the haptic device separately.  It will not be closed
 *  with the joystick.
 *
 *  When opening from a joystick you should first close the haptic device before
 *  closing the joystick device.  If not, on some implementations the haptic
 *  device will also get unallocated and you'll be unable to use force feedback
 *  on that device.
 *
 *  \param joystick Joystick to create a haptic device from.
 *  \return A valid haptic device identifier on success or NULL on error.
 *
 *  \sa SDL_HapticOpen
 *  \sa SDL_HapticClose
 */
SDL_Haptic* SDL_HapticOpenFromJoystick (SDL_Joystick* joystick);

/**
 *  \brief Closes a haptic device previously opened with SDL_HapticOpen().
 *
 *  \param haptic Haptic device to close.
 */
void SDL_HapticClose (SDL_Haptic* haptic);

/**
 *  \brief Returns the number of effects a haptic device can store.
 *
 *  On some platforms this isn't fully supported, and therefore is an
 *  approximation.  Always check to see if your created effect was actually
 *  created and do not rely solely on SDL_HapticNumEffects().
 *
 *  \param haptic The haptic device to query effect max.
 *  \return The number of effects the haptic device can store or
 *          -1 on error.
 *
 *  \sa SDL_HapticNumEffectsPlaying
 *  \sa SDL_HapticQuery
 */
int SDL_HapticNumEffects (SDL_Haptic* haptic);

/**
 *  \brief Returns the number of effects a haptic device can play at the same
 *         time.
 *
 *  This is not supported on all platforms, but will always return a value.
 *  Added here for the sake of completeness.
 *
 *  \param haptic The haptic device to query maximum playing effects.
 *  \return The number of effects the haptic device can play at the same time
 *          or -1 on error.
 *
 *  \sa SDL_HapticNumEffects
 *  \sa SDL_HapticQuery
 */
int SDL_HapticNumEffectsPlaying (SDL_Haptic* haptic);

/**
 *  \brief Gets the haptic device's supported features in bitwise manner.
 *
 *  Example:
 *  \code
 *  if (SDL_HapticQuery(haptic) & SDL_HAPTIC_CONSTANT) {
 *      printf("We have constant haptic effect!\n");
 *  }
 *  \endcode
 *
 *  \param haptic The haptic device to query.
 *  \return Haptic features in bitwise manner (OR'd).
 *
 *  \sa SDL_HapticNumEffects
 *  \sa SDL_HapticEffectSupported
 */
uint SDL_HapticQuery (SDL_Haptic* haptic);

/**
 *  \brief Gets the number of haptic axes the device has.
 *
 *  \sa SDL_HapticDirection
 */
int SDL_HapticNumAxes (SDL_Haptic* haptic);

/**
 *  \brief Checks to see if effect is supported by haptic.
 *
 *  \param haptic Haptic device to check on.
 *  \param effect Effect to check to see if it is supported.
 *  \return SDL_TRUE if effect is supported, SDL_FALSE if it isn't or -1 on error.
 *
 *  \sa SDL_HapticQuery
 *  \sa SDL_HapticNewEffect
 */
int SDL_HapticEffectSupported (SDL_Haptic* haptic, SDL_HapticEffect* effect);

/**
 *  \brief Creates a new haptic effect on the device.
 *
 *  \param haptic Haptic device to create the effect on.
 *  \param effect Properties of the effect to create.
 *  \return The identifier of the effect on success or -1 on error.
 *
 *  \sa SDL_HapticUpdateEffect
 *  \sa SDL_HapticRunEffect
 *  \sa SDL_HapticDestroyEffect
 */
int SDL_HapticNewEffect (SDL_Haptic* haptic, SDL_HapticEffect* effect);

/**
 *  \brief Updates the properties of an effect.
 *
 *  Can be used dynamically, although behavior when dynamically changing
 *  direction may be strange.  Specifically the effect may reupload itself
 *  and start playing from the start.  You cannot change the type either when
 *  running SDL_HapticUpdateEffect().
 *
 *  \param haptic Haptic device that has the effect.
 *  \param effect Identifier of the effect to update.
 *  \param data New effect properties to use.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticNewEffect
 *  \sa SDL_HapticRunEffect
 *  \sa SDL_HapticDestroyEffect
 */
int SDL_HapticUpdateEffect (
    SDL_Haptic* haptic,
    int effect,
    SDL_HapticEffect* data);

/**
 *  \brief Runs the haptic effect on its associated haptic device.
 *
 *  If iterations are ::SDL_HAPTIC_INFINITY, it'll run the effect over and over
 *  repeating the envelope (attack and fade) every time.  If you only want the
 *  effect to last forever, set ::SDL_HAPTIC_INFINITY in the effect's length
 *  parameter.
 *
 *  \param haptic Haptic device to run the effect on.
 *  \param effect Identifier of the haptic effect to run.
 *  \param iterations Number of iterations to run the effect. Use
 *         ::SDL_HAPTIC_INFINITY for infinity.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticStopEffect
 *  \sa SDL_HapticDestroyEffect
 *  \sa SDL_HapticGetEffectStatus
 */
int SDL_HapticRunEffect (SDL_Haptic* haptic, int effect, Uint32 iterations);

/**
 *  \brief Stops the haptic effect on its associated haptic device.
 *
 *  \param haptic Haptic device to stop the effect on.
 *  \param effect Identifier of the effect to stop.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticRunEffect
 *  \sa SDL_HapticDestroyEffect
 */
int SDL_HapticStopEffect (SDL_Haptic* haptic, int effect);

/**
 *  \brief Destroys a haptic effect on the device.
 *
 *  This will stop the effect if it's running.  Effects are automatically
 *  destroyed when the device is closed.
 *
 *  \param haptic Device to destroy the effect on.
 *  \param effect Identifier of the effect to destroy.
 *
 *  \sa SDL_HapticNewEffect
 */
void SDL_HapticDestroyEffect (SDL_Haptic* haptic, int effect);

/**
 *  \brief Gets the status of the current effect on the haptic device.
 *
 *  Device must support the ::SDL_HAPTIC_STATUS feature.
 *
 *  \param haptic Haptic device to query the effect status on.
 *  \param effect Identifier of the effect to query its status.
 *  \return 0 if it isn't playing, 1 if it is playing or -1 on error.
 *
 *  \sa SDL_HapticRunEffect
 *  \sa SDL_HapticStopEffect
 */
int SDL_HapticGetEffectStatus (SDL_Haptic* haptic, int effect);

/**
 *  \brief Sets the global gain of the device.
 *
 *  Device must support the ::SDL_HAPTIC_GAIN feature.
 *
 *  The user may specify the maximum gain by setting the environment variable
 *  SDL_HAPTIC_GAIN_MAX which should be between 0 and 100.  All calls to
 *  SDL_HapticSetGain() will scale linearly using SDL_HAPTIC_GAIN_MAX as the
 *  maximum.
 *
 *  \param haptic Haptic device to set the gain on.
 *  \param gain Value to set the gain to, should be between 0 and 100.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticQuery
 */
int SDL_HapticSetGain (SDL_Haptic* haptic, int gain);

/**
 *  \brief Sets the global autocenter of the device.
 *
 *  Autocenter should be between 0 and 100.  Setting it to 0 will disable
 *  autocentering.
 *
 *  Device must support the ::SDL_HAPTIC_AUTOCENTER feature.
 *
 *  \param haptic Haptic device to set autocentering on.
 *  \param autocenter Value to set autocenter to, 0 disables autocentering.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticQuery
 */
int SDL_HapticSetAutocenter (SDL_Haptic* haptic, int autocenter);

/**
 *  \brief Pauses a haptic device.
 *
 *  Device must support the ::SDL_HAPTIC_PAUSE feature.  Call
 *  SDL_HapticUnpause() to resume playback.
 *
 *  Do not modify the effects nor add new ones while the device is paused.
 *  That can cause all sorts of weird errors.
 *
 *  \param haptic Haptic device to pause.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticUnpause
 */
int SDL_HapticPause (SDL_Haptic* haptic);

/**
 *  \brief Unpauses a haptic device.
 *
 *  Call to unpause after SDL_HapticPause().
 *
 *  \param haptic Haptic device to unpause.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticPause
 */
int SDL_HapticUnpause (SDL_Haptic* haptic);

/**
 *  \brief Stops all the currently playing effects on a haptic device.
 *
 *  \param haptic Haptic device to stop.
 *  \return 0 on success or -1 on error.
 */
int SDL_HapticStopAll (SDL_Haptic* haptic);

/**
 *  \brief Checks to see if rumble is supported on a haptic device.
 *
 *  \param haptic Haptic device to check to see if it supports rumble.
 *  \return SDL_TRUE if effect is supported, SDL_FALSE if it isn't or -1 on error.
 *
 *  \sa SDL_HapticRumbleInit
 *  \sa SDL_HapticRumblePlay
 *  \sa SDL_HapticRumbleStop
 */
int SDL_HapticRumbleSupported (SDL_Haptic* haptic);

/**
 *  \brief Initializes the haptic device for simple rumble playback.
 *
 *  \param haptic Haptic device to initialize for simple rumble playback.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticOpen
 *  \sa SDL_HapticRumbleSupported
 *  \sa SDL_HapticRumblePlay
 *  \sa SDL_HapticRumbleStop
 */
int SDL_HapticRumbleInit (SDL_Haptic* haptic);

/**
 *  \brief Runs simple rumble on a haptic device
 *
 *  \param haptic Haptic device to play rumble effect on.
 *  \param strength Strength of the rumble to play as a 0-1 float value.
 *  \param length Length of the rumble to play in milliseconds.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticRumbleSupported
 *  \sa SDL_HapticRumbleInit
 *  \sa SDL_HapticRumbleStop
 */
int SDL_HapticRumblePlay (SDL_Haptic* haptic, float strength, Uint32 length);

/**
 *  \brief Stops the simple rumble on a haptic device.
 *
 *  \param haptic Haptic to stop the rumble on.
 *  \return 0 on success or -1 on error.
 *
 *  \sa SDL_HapticRumbleSupported
 *  \sa SDL_HapticRumbleInit
 *  \sa SDL_HapticRumblePlay
 */
int SDL_HapticRumbleStop (SDL_Haptic* haptic);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_haptic_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_haptic.h ***/

/*** Start of inlined file: SDL_hints.h ***/
/**
 *  \file SDL_hints.h
 *
 *  Official documentation for SDL configuration variables
 *
 *  This file contains functions to set and get configuration hints,
 *  as well as listing each of them alphabetically.
 *
 *  The convention for naming hints is SDL_HINT_X, where "SDL_X" is
 *  the environment variable that can be used to override the default.
 *
 *  In general these hints are just that - they may or may not be
 *  supported or applicable on any given platform, but they provide
 *  a way for an application or user to give the library a hint as
 *  to how they would like the library to work.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief  A variable controlling how 3D acceleration is used to accelerate the SDL screen surface.
 *
 *  SDL can try to accelerate the SDL screen surface by using streaming
 *  textures with a 3D rendering engine.  This variable controls whether and
 *  how this is done.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable 3D acceleration
 *    "1"       - Enable 3D acceleration, using the default renderer.
 *    "X"       - Enable 3D acceleration, using X where X is one of the valid rendering drivers.  (e.g. "direct3d", "opengl", etc.)
 *
 *  By default SDL tries to make a best guess for each platform whether
 *  to use acceleration or not.
 */

/**
 *  \brief  A variable specifying which render driver to use.
 *
 *  If the application doesn't pick a specific renderer to use, this variable
 *  specifies the name of the preferred renderer.  If the preferred renderer
 *  can't be initialized, the normal default renderer is used.
 *
 *  This variable is case insensitive and can be set to the following values:
 *    "direct3d"
 *    "opengl"
 *    "opengles2"
 *    "opengles"
 *    "metal"
 *    "software"
 *
 *  The default varies by platform, but it's the first one in the list that
 *  is available on the current platform.
 */

/**
 *  \brief  A variable controlling whether the OpenGL render driver uses shaders if they are available.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable shaders
 *    "1"       - Enable shaders
 *
 *  By default shaders are used if OpenGL supports them.
 */

/**
 *  \brief  A variable controlling whether the Direct3D device is initialized for thread-safe operations.
 *
 *  This variable can be set to the following values:
 *    "0"       - Thread-safety is not enabled (faster)
 *    "1"       - Thread-safety is enabled
 *
 *  By default the Direct3D device is created with thread-safety disabled.
 */

/**
 *  \brief  A variable controlling whether to enable Direct3D 11+'s Debug Layer.
 *
 *  This variable does not have any effect on the Direct3D 9 based renderer.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable Debug Layer use
 *    "1"       - Enable Debug Layer use
 *
 *  By default, SDL does not use Direct3D Debug Layer.
 */

/**
 *  \brief  A variable controlling the scaling policy for SDL_RenderSetLogicalSize.
 *
 *  This variable can be set to the following values:
 *    "0" or "letterbox" - Uses letterbox/sidebars to fit the entire rendering on screen
 *    "1" or "overscan"  - Will zoom the rendering so it fills the entire screen, allowing edges to be drawn offscreen
 *
 *  By default letterbox is used
 */

/**
 *  \brief  A variable controlling the scaling quality
 *
 *  This variable can be set to the following values:
 *    "0" or "nearest" - Nearest pixel sampling
 *    "1" or "linear"  - Linear filtering (supported by OpenGL and Direct3D)
 *    "2" or "best"    - Currently this is the same as "linear"
 *
 *  By default nearest pixel sampling is used
 */

/**
 *  \brief  A variable controlling whether updates to the SDL screen surface should be synchronized with the vertical refresh, to avoid tearing.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable vsync
 *    "1"       - Enable vsync
 *
 *  By default SDL does not sync screen surface updates with vertical refresh.
 */

/**
 *  \brief  A variable controlling whether the screensaver is enabled.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable screensaver
 *    "1"       - Enable screensaver
 *
 *  By default SDL will disable the screensaver.
 */

/**
 *  \brief  A variable controlling whether the X11 VidMode extension should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable XVidMode
 *    "1"       - Enable XVidMode
 *
 *  By default SDL will use XVidMode if it is available.
 */

/**
 *  \brief  A variable controlling whether the X11 Xinerama extension should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable Xinerama
 *    "1"       - Enable Xinerama
 *
 *  By default SDL will use Xinerama if it is available.
 */

/**
 *  \brief  A variable controlling whether the X11 XRandR extension should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable XRandR
 *    "1"       - Enable XRandR
 *
 *  By default SDL will not use XRandR because of window manager issues.
 */

/**
 *  \brief  A variable controlling whether the X11 _NET_WM_PING protocol should be supported.
 *
 *  This variable can be set to the following values:
 *    "0"       - Disable _NET_WM_PING
 *    "1"       - Enable _NET_WM_PING
 *
 *  By default SDL will use _NET_WM_PING, but for applications that know they
 *  will not always be able to respond to ping requests in a timely manner they can
 *  turn it off to avoid the window manager thinking the app is hung.
 *  The hint is checked in CreateWindow.
 */

/**
 * \brief A variable controlling whether the X11 _NET_WM_BYPASS_COMPOSITOR hint should be used.
 *
 * This variable can be set to the following values:
 * "0" - Disable _NET_WM_BYPASS_COMPOSITOR
 * "1" - Enable _NET_WM_BYPASS_COMPOSITOR
 *
 * By default SDL will use _NET_WM_BYPASS_COMPOSITOR
 *
 */

/**
 *  \brief  A variable controlling whether the window frame and title bar are interactive when the cursor is hidden
 *
 *  This variable can be set to the following values:
 *    "0"       - The window frame is not interactive when the cursor is hidden (no move, resize, etc)
 *    "1"       - The window frame is interactive when the cursor is hidden
 *
 *  By default SDL will allow interaction with the window frame when the cursor is hidden
 */

/**
 * \brief A variable to specify custom icon resource id from RC file on Windows platform
 */

/**
 *  \brief  A variable controlling whether the windows message loop is processed by SDL
 *
 *  This variable can be set to the following values:
 *    "0"       - The window message loop is not run
 *    "1"       - The window message loop is processed in SDL_PumpEvents()
 *
 *  By default SDL will process the windows message loop
 */

/**
 *  \brief  A variable controlling whether grabbing input grabs the keyboard
 *
 *  This variable can be set to the following values:
 *    "0"       - Grab will affect only the mouse
 *    "1"       - Grab will affect mouse and keyboard
 *
 *  By default SDL will not grab the keyboard so system shortcuts still work.
 */

/**
 *  \brief  A variable setting the double click time, in milliseconds.
 */

/**
 *  \brief  A variable setting the double click radius, in pixels.
 */

/**
 *  \brief  A variable setting the speed scale for mouse motion, in floating point, when the mouse is not in relative mode
 */

/**
 *  \brief  A variable setting the scale for mouse motion, in floating point, when the mouse is in relative mode
 */

/**
 *  \brief  A variable controlling whether relative mouse mode is implemented using mouse warping
 *
 *  This variable can be set to the following values:
 *    "0"       - Relative mouse mode uses raw input
 *    "1"       - Relative mouse mode uses mouse warping
 *
 *  By default SDL will use raw input for relative mouse mode
 */

/**
 *  \brief Allow mouse click events when clicking to focus an SDL window
 *
 *  This variable can be set to the following values:
 *    "0"       - Ignore mouse clicks that activate a window
 *    "1"       - Generate events for mouse clicks that activate a window
 *
 *  By default SDL will ignore mouse clicks that activate a window
 */

/**
 *  \brief  A variable controlling whether touch events should generate synthetic mouse events
 *
 *  This variable can be set to the following values:
 *    "0"       - Touch events will not generate mouse events
 *    "1"       - Touch events will generate mouse events
 *
 *  By default SDL will generate mouse events for touch events
 */

/**
 *  \brief Minimize your SDL_Window if it loses key focus when in fullscreen mode. Defaults to true.
 *
 */

/**
 *  \brief  A variable controlling whether the idle timer is disabled on iOS.
 *
 *  When an iOS app does not receive touches for some time, the screen is
 *  dimmed automatically. For games where the accelerometer is the only input
 *  this is problematic. This functionality can be disabled by setting this
 *  hint.
 *
 *  As of SDL 2.0.4, SDL_EnableScreenSaver() and SDL_DisableScreenSaver()
 *  accomplish the same thing on iOS. They should be preferred over this hint.
 *
 *  This variable can be set to the following values:
 *    "0"       - Enable idle timer
 *    "1"       - Disable idle timer
 */

/**
 *  \brief  A variable controlling which orientations are allowed on iOS/Android.
 *
 *  In some circumstances it is necessary to be able to explicitly control
 *  which UI orientations are allowed.
 *
 *  This variable is a space delimited list of the following values:
 *    "LandscapeLeft", "LandscapeRight", "Portrait" "PortraitUpsideDown"
 */

/**
 *  \brief  A variable controlling whether controllers used with the Apple TV
 *  generate UI events.
 *
 * When UI events are generated by controller input, the app will be
 * backgrounded when the Apple TV remote's menu button is pressed, and when the
 * pause or B buttons on gamepads are pressed.
 *
 * More information about properly making use of controllers for the Apple TV
 * can be found here:
 * https://developer.apple.com/tvos/human-interface-guidelines/remote-and-controllers/
 *
 *  This variable can be set to the following values:
 *    "0"       - Controller input does not generate UI events (the default).
 *    "1"       - Controller input generates UI events.
 */

/**
 * \brief  A variable controlling whether the Apple TV remote's joystick axes
 *         will automatically match the rotation of the remote.
 *
 *  This variable can be set to the following values:
 *    "0"       - Remote orientation does not affect joystick axes (the default).
 *    "1"       - Joystick axes are based on the orientation of the remote.
 */

/**
 * \brief  A variable controlling whether the home indicator bar on iPhone X
 *         should be hidden.
 *
 *  This variable can be set to the following values:
 *    "0"       - The indicator bar is not hidden (default for windowed applications)
 *    "1"       - The indicator bar is hidden and is shown when the screen is touched (useful for movie playback applications)
 *    "2"       - The indicator bar is dim and the first swipe makes it visible and the second swipe performs the "home" action (default for fullscreen applications)
 */

/**
 *  \brief  A variable controlling whether the Android / iOS built-in
 *  accelerometer should be listed as a joystick device.
 *
 *  This variable can be set to the following values:
 *    "0"       - The accelerometer is not listed as a joystick
 *    "1"       - The accelerometer is available as a 3 axis joystick (the default).
 */

/**
 *  \brief  A variable controlling whether the Android / tvOS remotes
 *  should be listed as joystick devices, instead of sending keyboard events.
 *
 *  This variable can be set to the following values:
 *    "0"       - Remotes send enter/escape/arrow key events
 *    "1"       - Remotes are available as 2 axis, 2 button joysticks (the default).
 */

/**
 *  \brief  A variable that lets you disable the detection and use of Xinput gamepad devices
 *
 *  The variable can be set to the following values:
 *    "0"       - Disable XInput detection (only uses direct input)
 *    "1"       - Enable XInput detection (the default)
 */

/**
 *  \brief  A variable that causes SDL to use the old axis and button mapping for XInput devices.
 *
 *  This hint is for backwards compatibility only and will be removed in SDL 2.1
 *
 *  The default value is "0".  This hint must be set before SDL_Init()
 */

/**
 *  \brief  A variable that lets you manually hint extra gamecontroller db entries.
 *
 *  The variable should be newline delimited rows of gamecontroller config data, see SDL_gamecontroller.h
 *
 *  This hint must be set before calling SDL_Init(SDL_INIT_GAMECONTROLLER)
 *  You can update mappings after the system is initialized with SDL_GameControllerMappingForGUID() and SDL_GameControllerAddMapping()
 */

/**
 *  \brief  A variable containing a list of devices to skip when scanning for game controllers.
 *
 *  The format of the string is a comma separated list of USB VID/PID pairs
 *  in hexadecimal form, e.g.
 *
 *      0xAAAA/0xBBBB,0xCCCC/0xDDDD
 *
 *  The variable can also take the form of @file, in which case the named
 *  file will be loaded and interpreted as the value of the variable.
 */

/**
 *  \brief  If set, all devices will be skipped when scanning for game controllers except for the ones listed in this variable.
 *
 *  The format of the string is a comma separated list of USB VID/PID pairs
 *  in hexadecimal form, e.g.
 *
 *      0xAAAA/0xBBBB,0xCCCC/0xDDDD
 *
 *  The variable can also take the form of @file, in which case the named
 *  file will be loaded and interpreted as the value of the variable.
 */

/**
 *  \brief  A variable that lets you enable joystick (and gamecontroller) events even when your app is in the background.
 *
 *  The variable can be set to the following values:
 *    "0"       - Disable joystick & gamecontroller input events when the
 *                application is in the background.
 *    "1"       - Enable joystick & gamecontroller input events when the
 *                application is in the background.
 *
 *  The default value is "0".  This hint may be set at any time.
 */

/**
 *  \brief  A variable controlling whether the HIDAPI joystick drivers should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - HIDAPI drivers are not used
 *    "1"       - HIDAPI drivers are used (the default)
 *
 *  This variable is the default for all drivers, but can be overridden by the hints for specific drivers below.
 */

/**
 *  \brief  A variable controlling whether the HIDAPI driver for PS4 controllers should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - HIDAPI driver is not used
 *    "1"       - HIDAPI driver is used
 *
 *  The default is the value of SDL_HINT_JOYSTICK_HIDAPI
 */

/**
 *  \brief  A variable controlling whether extended input reports should be used for PS4 controllers when using the HIDAPI driver.
 *
 *  This variable can be set to the following values:
 *    "0"       - extended reports are not enabled (the default)
 *    "1"       - extended reports
 *
 *  Extended input reports allow rumble on Bluetooth PS4 controllers, but
 *  break DirectInput handling for applications that don't use SDL.
 *
 *  Once extended reports are enabled, they can not be disabled without
 *  power cycling the controller.
 */

/**
 *  \brief  A variable controlling whether the HIDAPI driver for Steam Controllers should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - HIDAPI driver is not used
 *    "1"       - HIDAPI driver is used
 *
 *  The default is the value of SDL_HINT_JOYSTICK_HIDAPI
 */

/**
 *  \brief  A variable controlling whether the HIDAPI driver for Nintendo Switch controllers should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - HIDAPI driver is not used
 *    "1"       - HIDAPI driver is used
 *
 *  The default is the value of SDL_HINT_JOYSTICK_HIDAPI
 */

/**
 *  \brief  A variable controlling whether the HIDAPI driver for XBox controllers should be used.
 *
 *  This variable can be set to the following values:
 *    "0"       - HIDAPI driver is not used
 *    "1"       - HIDAPI driver is used
 *
 *  The default is the value of SDL_HINT_JOYSTICK_HIDAPI
 */

/**
 *  \brief  A variable that controls whether Steam Controllers should be exposed using the SDL joystick and game controller APIs
 *
 *  The variable can be set to the following values:
 *    "0"       - Do not scan for Steam Controllers
 *    "1"       - Scan for Steam Controllers (the default)
 *
 *  The default value is "1".  This hint must be set before initializing the joystick subsystem.
 */

/**
 *  \brief If set to "0" then never set the top most bit on a SDL Window, even if the video mode expects it.
 *      This is a debugging aid for developers and not expected to be used by end users. The default is "1"
 *
 *  This variable can be set to the following values:
 *    "0"       - don't allow topmost
 *    "1"       - allow topmost
 */

/**
 *  \brief A variable that controls the timer resolution, in milliseconds.
 *
 *  The higher resolution the timer, the more frequently the CPU services
 *  timer interrupts, and the more precise delays are, but this takes up
 *  power and CPU time.  This hint is only used on Windows 7 and earlier.
 *
 *  See this blog post for more information:
 *  http://randomascii.wordpress.com/2013/07/08/windows-timer-resolution-megawatts-wasted/
 *
 *  If this variable is set to "0", the system timer resolution is not set.
 *
 *  The default value is "1". This hint may be set at any time.
 */

/**
 *  \brief  A variable describing the content orientation on QtWayland-based platforms.
 *
 *  On QtWayland platforms, windows are rotated client-side to allow for custom
 *  transitions. In order to correctly position overlays (e.g. volume bar) and
 *  gestures (e.g. events view, close/minimize gestures), the system needs to
 *  know in which orientation the application is currently drawing its contents.
 *
 *  This does not cause the window to be rotated or resized, the application
 *  needs to take care of drawing the content in the right orientation (the
 *  framebuffer is always in portrait mode).
 *
 *  This variable can be one of the following values:
 *    "primary" (default), "portrait", "landscape", "inverted-portrait", "inverted-landscape"
 */

/**
 *  \brief  Flags to set on QtWayland windows to integrate with the native window manager.
 *
 *  On QtWayland platforms, this hint controls the flags to set on the windows.
 *  For example, on Sailfish OS "OverridesSystemGestures" disables swipe gestures.
 *
 *  This variable is a space-separated list of the following values (empty = no flags):
 *    "OverridesSystemGestures", "StaysOnTop", "BypassWindowManager"
 */

/**
*  \brief  A string specifying SDL's threads stack size in bytes or "0" for the backend's default size
*
*  Use this hint in case you need to set SDL's threads stack size to other than the default.
*  This is specially useful if you build SDL against a non glibc libc library (such as musl) which
*  provides a relatively small default thread stack size (a few kilobytes versus the default 8MB glibc uses).
*  Support for this hint is currently available only in the pthread, Windows, and PSP backend.
*
*  Instead of this hint, in 2.0.9 and later, you can use
*  SDL_CreateThreadWithStackSize(). This hint only works with the classic
*  SDL_CreateThread().
*/

/**
 *  \brief If set to 1, then do not allow high-DPI windows. ("Retina" on Mac and iOS)
 */

/**
 *  \brief A variable that determines whether ctrl+click should generate a right-click event on Mac
 *
 *  If present, holding ctrl while left clicking will generate a right click
 *  event when on Mac.
 */

/**
*  \brief  A variable specifying which shader compiler to preload when using the Chrome ANGLE binaries
*
*  SDL has EGL and OpenGL ES2 support on Windows via the ANGLE project. It
*  can use two different sets of binaries, those compiled by the user from source
*  or those provided by the Chrome browser. In the later case, these binaries require
*  that SDL loads a DLL providing the shader compiler.
*
*  This variable can be set to the following values:
*    "d3dcompiler_46.dll" - default, best for Vista or later.
*    "d3dcompiler_43.dll" - for XP support.
*    "none" - do not load any library, useful if you compiled ANGLE from source and included the compiler in your binaries.
*
*/

/**
*  \brief  A variable that is the address of another SDL_Window* (as a hex string formatted with "%p").
*
*  If this hint is set before SDL_CreateWindowFrom() and the SDL_Window* it is set to has
*  SDL_WINDOW_OPENGL set (and running on WGL only, currently), then two things will occur on the newly
*  created SDL_Window:
*
*  1. Its pixel format will be set to the same pixel format as this SDL_Window.  This is
*  needed for example when sharing an OpenGL context across multiple windows.
*
*  2. The flag SDL_WINDOW_OPENGL will be set on the new window so it can be used for
*  OpenGL rendering.
*
*  This variable can be set to the following values:
*    The address (as a string "%p") of the SDL_Window* that new windows created with SDL_CreateWindowFrom() should
*    share a pixel format with.
*/

/**
 *  \brief A URL to a WinRT app's privacy policy
 *
 *  All network-enabled WinRT apps must make a privacy policy available to its
 *  users.  On Windows 8, 8.1, and RT, Microsoft mandates that this policy be
 *  be available in the Windows Settings charm, as accessed from within the app.
 *  SDL provides code to add a URL-based link there, which can point to the app's
 *  privacy policy.
 *
 *  To setup a URL to an app's privacy policy, set SDL_HINT_WINRT_PRIVACY_POLICY_URL
 *  before calling any SDL_Init() functions.  The contents of the hint should
 *  be a valid URL.  For example, "http://www.example.com".
 *
 *  The default value is "", which will prevent SDL from adding a privacy policy
 *  link to the Settings charm.  This hint should only be set during app init.
 *
 *  The label text of an app's "Privacy Policy" link may be customized via another
 *  hint, SDL_HINT_WINRT_PRIVACY_POLICY_LABEL.
 *
 *  Please note that on Windows Phone, Microsoft does not provide standard UI
 *  for displaying a privacy policy link, and as such, SDL_HINT_WINRT_PRIVACY_POLICY_URL
 *  will not get used on that platform.  Network-enabled phone apps should display
 *  their privacy policy through some other, in-app means.
 */

/** \brief Label text for a WinRT app's privacy policy link
 *
 *  Network-enabled WinRT apps must include a privacy policy.  On Windows 8, 8.1, and RT,
 *  Microsoft mandates that this policy be available via the Windows Settings charm.
 *  SDL provides code to add a link there, with its label text being set via the
 *  optional hint, SDL_HINT_WINRT_PRIVACY_POLICY_LABEL.
 *
 *  Please note that a privacy policy's contents are not set via this hint.  A separate
 *  hint, SDL_HINT_WINRT_PRIVACY_POLICY_URL, is used to link to the actual text of the
 *  policy.
 *
 *  The contents of this hint should be encoded as a UTF8 string.
 *
 *  The default value is "Privacy Policy".  This hint should only be set during app
 *  initialization, preferably before any calls to SDL_Init().
 *
 *  For additional information on linking to a privacy policy, see the documentation for
 *  SDL_HINT_WINRT_PRIVACY_POLICY_URL.
 */

/** \brief Allows back-button-press events on Windows Phone to be marked as handled
 *
 *  Windows Phone devices typically feature a Back button.  When pressed,
 *  the OS will emit back-button-press events, which apps are expected to
 *  handle in an appropriate manner.  If apps do not explicitly mark these
 *  events as 'Handled', then the OS will invoke its default behavior for
 *  unhandled back-button-press events, which on Windows Phone 8 and 8.1 is to
 *  terminate the app (and attempt to switch to the previous app, or to the
 *  device's home screen).
 *
 *  Setting the SDL_HINT_WINRT_HANDLE_BACK_BUTTON hint to "1" will cause SDL
 *  to mark back-button-press events as Handled, if and when one is sent to
 *  the app.
 *
 *  Internally, Windows Phone sends back button events as parameters to
 *  special back-button-press callback functions.  Apps that need to respond
 *  to back-button-press events are expected to register one or more
 *  callback functions for such, shortly after being launched (during the
 *  app's initialization phase).  After the back button is pressed, the OS
 *  will invoke these callbacks.  If the app's callback(s) do not explicitly
 *  mark the event as handled by the time they return, or if the app never
 *  registers one of these callback, the OS will consider the event
 *  un-handled, and it will apply its default back button behavior (terminate
 *  the app).
 *
 *  SDL registers its own back-button-press callback with the Windows Phone
 *  OS.  This callback will emit a pair of SDL key-press events (SDL_KEYDOWN
 *  and SDL_KEYUP), each with a scancode of SDL_SCANCODE_AC_BACK, after which
 *  it will check the contents of the hint, SDL_HINT_WINRT_HANDLE_BACK_BUTTON.
 *  If the hint's value is set to "1", the back button event's Handled
 *  property will get set to 'true'.  If the hint's value is set to something
 *  else, or if it is unset, SDL will leave the event's Handled property
 *  alone.  (By default, the OS sets this property to 'false', to note.)
 *
 *  SDL apps can either set SDL_HINT_WINRT_HANDLE_BACK_BUTTON well before a
 *  back button is pressed, or can set it in direct-response to a back button
 *  being pressed.
 *
 *  In order to get notified when a back button is pressed, SDL apps should
 *  register a callback function with SDL_AddEventWatch(), and have it listen
 *  for SDL_KEYDOWN events that have a scancode of SDL_SCANCODE_AC_BACK.
 *  (Alternatively, SDL_KEYUP events can be listened-for.  Listening for
 *  either event type is suitable.)  Any value of SDL_HINT_WINRT_HANDLE_BACK_BUTTON
 *  set by such a callback, will be applied to the OS' current
 *  back-button-press event.
 *
 *  More details on back button behavior in Windows Phone apps can be found
 *  at the following page, on Microsoft's developer site:
 *  http://msdn.microsoft.com/en-us/library/windowsphone/develop/jj247550(v=vs.105).aspx
 */

/**
 *  \brief  A variable that dictates policy for fullscreen Spaces on Mac OS X.
 *
 *  This hint only applies to Mac OS X.
 *
 *  The variable can be set to the following values:
 *    "0"       - Disable Spaces support (FULLSCREEN_DESKTOP won't use them and
 *                SDL_WINDOW_RESIZABLE windows won't offer the "fullscreen"
 *                button on their titlebars).
 *    "1"       - Enable Spaces support (FULLSCREEN_DESKTOP will use them and
 *                SDL_WINDOW_RESIZABLE windows will offer the "fullscreen"
 *                button on their titlebars).
 *
 *  The default value is "1". Spaces are disabled regardless of this hint if
 *   the OS isn't at least Mac OS X Lion (10.7). This hint must be set before
 *   any windows are created.
 */

/**
*  \brief  When set don't force the SDL app to become a foreground process
*
*  This hint only applies to Mac OS X.
*
*/

/**
 * \brief Android APK expansion main file version. Should be a string number like "1", "2" etc.
 *
 * Must be set together with SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION.
 *
 * If both hints were set then SDL_RWFromFile() will look into expansion files
 * after a given relative path was not found in the internal storage and assets.
 *
 * By default this hint is not set and the APK expansion files are not searched.
 */

/**
 * \brief Android APK expansion patch file version. Should be a string number like "1", "2" etc.
 *
 * Must be set together with SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION.
 *
 * If both hints were set then SDL_RWFromFile() will look into expansion files
 * after a given relative path was not found in the internal storage and assets.
 *
 * By default this hint is not set and the APK expansion files are not searched.
 */

/**
 * \brief A variable to control whether certain IMEs should handle text editing internally instead of sending SDL_TEXTEDITING events.
 *
 * The variable can be set to the following values:
 *   "0"       - SDL_TEXTEDITING events are sent, and it is the application's
 *               responsibility to render the text from these events and
 *               differentiate it somehow from committed text. (default)
 *   "1"       - If supported by the IME then SDL_TEXTEDITING events are not sent,
 *               and text that is being composed will be rendered in its own UI.
 */

/**
* \brief A variable to control whether mouse and touch events are to be treated together or separately
*
* The variable can be set to the following values:
*   "0"       - Mouse events will be handled as touch events, and touch will raise fake mouse
*               events. This is the behaviour of SDL <= 2.0.3. (default)
*   "1"       - Mouse events will be handled separately from pure touch events.
*
* The value of this hint is used at runtime, so it can be changed at any time.
*/

/**
* \brief A variable to control whether we trap the Android back button to handle it manually.
*        This is necessary for the right mouse button to work on some Android devices, or
*        to be able to trap the back button for use in your code reliably.  If set to true,
*        the back button will show up as an SDL_KEYDOWN / SDL_KEYUP pair with a keycode of
*        SDL_SCANCODE_AC_BACK.
*
* The variable can be set to the following values:
*   "0"       - Back button will be handled as usual for system. (default)
*   "1"       - Back button will be trapped, allowing you to handle the key press
*               manually.  (This will also let right mouse click work on systems
*               where the right mouse button functions as back.)
*
* The value of this hint is used at runtime, so it can be changed at any time.
*/

/**
* \brief A variable to control whether the return key on the soft keyboard
*        should hide the soft keyboard on Android and iOS.
*
* The variable can be set to the following values:
*   "0"       - The return key will be handled as a key event. This is the behaviour of SDL <= 2.0.3. (default)
*   "1"       - The return key will hide the keyboard.
*
* The value of this hint is used at runtime, so it can be changed at any time.
*/

/**
 *  \brief override the binding element for keyboard inputs for Emscripten builds
 *
 * This hint only applies to the emscripten platform
 *
 * The variable can be one of
 *    "#window"      - The javascript window object (this is the default)
 *    "#document"    - The javascript document object
 *    "#screen"      - the javascript window.screen object
 *    "#canvas"      - the WebGL canvas element
 *    any other string without a leading # sign applies to the element on the page with that ID.
 */

/**
 *  \brief Tell SDL not to catch the SIGINT or SIGTERM signals.
 *
 * This hint only applies to Unix-like platforms.
 *
 * The variable can be set to the following values:
 *   "0"       - SDL will install a SIGINT and SIGTERM handler, and when it
 *               catches a signal, convert it into an SDL_QUIT event.
 *   "1"       - SDL will not install a signal handler at all.
 */

/**
 *  \brief Tell SDL not to generate window-close events for Alt+F4 on Windows.
 *
 * The variable can be set to the following values:
 *   "0"       - SDL will generate a window-close event when it sees Alt+F4.
 *   "1"       - SDL will only do normal key handling for Alt+F4.
 */

/**
 *  \brief Prevent SDL from using version 4 of the bitmap header when saving BMPs.
 *
 * The bitmap header version 4 is required for proper alpha channel support and
 * SDL will use it when required. Should this not be desired, this hint can
 * force the use of the 40 byte header version which is supported everywhere.
 *
 * The variable can be set to the following values:
 *   "0"       - Surfaces with a colorkey or an alpha channel are saved to a
 *               32-bit BMP file with an alpha mask. SDL will use the bitmap
 *               header version 4 and set the alpha mask accordingly.
 *   "1"       - Surfaces with a colorkey or an alpha channel are saved to a
 *               32-bit BMP file without an alpha mask. The alpha channel data
 *               will be in the file, but applications are going to ignore it.
 *
 * The default value is "0".
 */

/**
 * \brief Tell SDL not to name threads on Windows with the 0x406D1388 Exception.
 *        The 0x406D1388 Exception is a trick used to inform Visual Studio of a
 *        thread's name, but it tends to cause problems with other debuggers,
 *        and the .NET runtime. Note that SDL 2.0.6 and later will still use
 *        the (safer) SetThreadDescription API, introduced in the Windows 10
 *        Creators Update, if available.
 *
 * The variable can be set to the following values:
 *   "0"       - SDL will raise the 0x406D1388 Exception to name threads.
 *               This is the default behavior of SDL <= 2.0.4.
 *   "1"       - SDL will not raise this exception, and threads will be unnamed. (default)
 *               This is necessary with .NET languages or debuggers that aren't Visual Studio.
 */

/**
 * \brief Tell SDL which Dispmanx layer to use on a Raspberry PI
 *
 * Also known as Z-order. The variable can take a negative or positive value.
 * The default is 10000.
 */

/**
 * \brief Tell the video driver that we only want a double buffer.
 *
 * By default, most lowlevel 2D APIs will use a triple buffer scheme that
 * wastes no CPU time on waiting for vsync after issuing a flip, but
 * introduces a frame of latency. On the other hand, using a double buffer
 * scheme instead is recommended for cases where low latency is an important
 * factor because we save a whole frame of latency.
 * We do so by waiting for vsync immediately after issuing a flip, usually just
 * after eglSwapBuffers call in the backend's *_SwapWindow function.
 *
 * Since it's driver-specific, it's only supported where possible and
 * implemented. Currently supported the following drivers:
 * - KMSDRM (kmsdrm)
 * - Raspberry Pi (raspberrypi)
 */

/**
 *  \brief  A variable controlling what driver to use for OpenGL ES contexts.
 *
 *  On some platforms, currently Windows and X11, OpenGL drivers may support
 *  creating contexts with an OpenGL ES profile. By default SDL uses these
 *  profiles, when available, otherwise it attempts to load an OpenGL ES
 *  library, e.g. that provided by the ANGLE project. This variable controls
 *  whether SDL follows this default behaviour or will always load an
 *  OpenGL ES library.
 *
 *  Circumstances where this is useful include
 *  - Testing an app with a particular OpenGL ES implementation, e.g ANGLE,
 *    or emulator, e.g. those from ARM, Imagination or Qualcomm.
 *  - Resolving OpenGL ES function addresses at link time by linking with
 *    the OpenGL ES library instead of querying them at run time with
 *    SDL_GL_GetProcAddress().
 *
 *  Caution: for an application to work with the default behaviour across
 *  different OpenGL drivers it must query the OpenGL ES function
 *  addresses at run time using SDL_GL_GetProcAddress().
 *
 *  This variable is ignored on most platforms because OpenGL ES is native
 *  or not supported.
 *
 *  This variable can be set to the following values:
 *    "0"       - Use ES profile of OpenGL, if available. (Default when not set.)
 *    "1"       - Load OpenGL ES library using the default library names.
 *
 */

/**
 *  \brief  A variable controlling speed/quality tradeoff of audio resampling.
 *
 *  If available, SDL can use libsamplerate ( http://www.mega-nerd.com/SRC/ )
 *  to handle audio resampling. There are different resampling modes available
 *  that produce different levels of quality, using more CPU.
 *
 *  If this hint isn't specified to a valid setting, or libsamplerate isn't
 *  available, SDL will use the default, internal resampling algorithm.
 *
 *  Note that this is currently only applicable to resampling audio that is
 *  being written to a device for playback or audio being read from a device
 *  for capture. SDL_AudioCVT always uses the default resampler (although this
 *  might change for SDL 2.1).
 *
 *  This hint is currently only checked at audio subsystem initialization.
 *
 *  This variable can be set to the following values:
 *
 *    "0" or "default" - Use SDL's internal resampling (Default when not set - low quality, fast)
 *    "1" or "fast"    - Use fast, slightly higher quality resampling, if available
 *    "2" or "medium"  - Use medium quality resampling, if available
 *    "3" or "best"    - Use high quality resampling, if available
 */

/**
 *  \brief  A variable controlling the audio category on iOS and Mac OS X
 *
 *  This variable can be set to the following values:
 *
 *    "ambient"     - Use the AVAudioSessionCategoryAmbient audio category, will be muted by the phone mute switch (default)
 *    "playback"    - Use the AVAudioSessionCategoryPlayback category
 *
 *  For more information, see Apple's documentation:
 *  https://developer.apple.com/library/content/documentation/Audio/Conceptual/AudioSessionProgrammingGuide/AudioSessionCategoriesandModes/AudioSessionCategoriesandModes.html
 */

/**
 *  \brief  An enumeration of hint priorities
 */
enum SDL_HintPriority
{
    SDL_HINT_DEFAULT = 0,
    SDL_HINT_NORMAL = 1,
    SDL_HINT_OVERRIDE = 2
}

/**
 *  \brief Set a hint with a specific priority
 *
 *  The priority controls the behavior when setting a hint that already
 *  has a value.  Hints will replace existing hints of their priority and
 *  lower.  Environment variables are considered to have override priority.
 *
 *  \return SDL_TRUE if the hint was set, SDL_FALSE otherwise
 */
SDL_bool SDL_SetHintWithPriority (
    const(char)* name,
    const(char)* value,
    SDL_HintPriority priority);

/**
 *  \brief Set a hint with normal priority
 *
 *  \return SDL_TRUE if the hint was set, SDL_FALSE otherwise
 */
SDL_bool SDL_SetHint (const(char)* name, const(char)* value);

/**
 *  \brief Get a hint
 *
 *  \return The string value of a hint variable.
 */
const(char)* SDL_GetHint (const(char)* name);

/**
 *  \brief Get a hint
 *
 *  \return The boolean value of a hint variable.
 */
SDL_bool SDL_GetHintBoolean (const(char)* name, SDL_bool default_value);

/**
 * \brief type definition of the hint callback function.
 */
alias SDL_HintCallback = void function (void* userdata, const(char)* name, const(char)* oldValue, const(char)* newValue);

/**
 *  \brief Add a function to watch a particular hint
 *
 *  \param name The hint to watch
 *  \param callback The function to call when the hint value changes
 *  \param userdata A pointer to pass to the callback function
 */
void SDL_AddHintCallback (
    const(char)* name,
    SDL_HintCallback callback,
    void* userdata);

/**
 *  \brief Remove a function watching a particular hint
 *
 *  \param name The hint being watched
 *  \param callback The function being called when the hint value changes
 *  \param userdata A pointer being passed to the callback function
 */
void SDL_DelHintCallback (
    const(char)* name,
    SDL_HintCallback callback,
    void* userdata);

/**
 *  \brief  Clear all hints
 *
 *  This function is called during SDL_Quit() to free stored hints.
 */
void SDL_ClearHints ();

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_hints_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_hints.h ***/

/*** Start of inlined file: SDL_loadso.h ***/
/**
 *  \file SDL_loadso.h
 *
 *  System dependent library loading routines
 *
 *  Some things to keep in mind:
 *  \li These functions only work on C function names.  Other languages may
 *      have name mangling and intrinsic language support that varies from
 *      compiler to compiler.
 *  \li Make sure you declare your function pointers with the same calling
 *      convention as the actual library function.  Your code will crash
 *      mysteriously if you do not do this.
 *  \li Avoid namespace collisions.  If you load a symbol from the library,
 *      it is not defined whether or not it goes into the global symbol
 *      namespace for the application.  If it does and it conflicts with
 *      symbols in your code or other shared libraries, you will not get
 *      the results you expect. :)
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  This function dynamically loads a shared object and returns a pointer
 *  to the object handle (or NULL if there was an error).
 *  The 'sofile' parameter is a system dependent name of the object file.
 */
void* SDL_LoadObject (const(char)* sofile);

/**
 *  Given an object handle, this function looks up the address of the
 *  named function in the shared object and returns it.  This address
 *  is no longer valid after calling SDL_UnloadObject().
 */
void* SDL_LoadFunction (void* handle, const(char)* name);

/**
 *  Unload a shared object from memory.
 */
void SDL_UnloadObject (void* handle);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_loadso_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_loadso.h ***/

/*** Start of inlined file: SDL_log.h ***/
/**
 *  \file SDL_log.h
 *
 *  Simple log messages with categories and priorities.
 *
 *  By default logs are quiet, but if you're debugging SDL you might want:
 *
 *      SDL_LogSetAllPriority(SDL_LOG_PRIORITY_WARN);
 *
 *  Here's where the messages go on different platforms:
 *      Windows: debug output stream
 *      Android: log output
 *      Others: standard error output (stderr)
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief The maximum size of a log message
 *
 *  Messages longer than the maximum size will be truncated
 */

/**
 *  \brief The predefined log categories
 *
 *  By default the application category is enabled at the INFO level,
 *  the assert category is enabled at the WARN level, test is enabled
 *  at the VERBOSE level and all other categories are enabled at the
 *  CRITICAL level.
 */
enum
{
    SDL_LOG_CATEGORY_APPLICATION = 0,
    SDL_LOG_CATEGORY_ERROR = 1,
    SDL_LOG_CATEGORY_ASSERT = 2,
    SDL_LOG_CATEGORY_SYSTEM = 3,
    SDL_LOG_CATEGORY_AUDIO = 4,
    SDL_LOG_CATEGORY_VIDEO = 5,
    SDL_LOG_CATEGORY_RENDER = 6,
    SDL_LOG_CATEGORY_INPUT = 7,
    SDL_LOG_CATEGORY_TEST = 8,

    /* Reserved for future SDL library use */
    SDL_LOG_CATEGORY_RESERVED1 = 9,
    SDL_LOG_CATEGORY_RESERVED2 = 10,
    SDL_LOG_CATEGORY_RESERVED3 = 11,
    SDL_LOG_CATEGORY_RESERVED4 = 12,
    SDL_LOG_CATEGORY_RESERVED5 = 13,
    SDL_LOG_CATEGORY_RESERVED6 = 14,
    SDL_LOG_CATEGORY_RESERVED7 = 15,
    SDL_LOG_CATEGORY_RESERVED8 = 16,
    SDL_LOG_CATEGORY_RESERVED9 = 17,
    SDL_LOG_CATEGORY_RESERVED10 = 18,

    /* Beyond this point is reserved for application use, e.g.
    	   enum {
    		   MYAPP_CATEGORY_AWESOME1 = SDL_LOG_CATEGORY_CUSTOM,
    		   MYAPP_CATEGORY_AWESOME2,
    		   MYAPP_CATEGORY_AWESOME3,
    		   ...
    	   };
    	 */
    SDL_LOG_CATEGORY_CUSTOM = 19
}

/**
 *  \brief The predefined log priorities
 */
enum SDL_LogPriority
{
    SDL_LOG_PRIORITY_VERBOSE = 1,
    SDL_LOG_PRIORITY_DEBUG = 2,
    SDL_LOG_PRIORITY_INFO = 3,
    SDL_LOG_PRIORITY_WARN = 4,
    SDL_LOG_PRIORITY_ERROR = 5,
    SDL_LOG_PRIORITY_CRITICAL = 6,
    SDL_NUM_LOG_PRIORITIES = 7
}

/**
 *  \brief Set the priority of all log categories
 */
void SDL_LogSetAllPriority (SDL_LogPriority priority);

/**
 *  \brief Set the priority of a particular log category
 */
void SDL_LogSetPriority (int category, SDL_LogPriority priority);

/**
 *  \brief Get the priority of a particular log category
 */
SDL_LogPriority SDL_LogGetPriority (int category);

/**
 *  \brief Reset all priorities to default.
 *
 *  \note This is called in SDL_Quit().
 */
void SDL_LogResetPriorities ();

/**
 *  \brief Log a message with SDL_LOG_CATEGORY_APPLICATION and SDL_LOG_PRIORITY_INFO
 */
void SDL_Log (const(char)* fmt, ...);

/**
 *  \brief Log a message with SDL_LOG_PRIORITY_VERBOSE
 */
void SDL_LogVerbose (int category, const(char)* fmt, ...);

/**
 *  \brief Log a message with SDL_LOG_PRIORITY_DEBUG
 */
void SDL_LogDebug (int category, const(char)* fmt, ...);

/**
 *  \brief Log a message with SDL_LOG_PRIORITY_INFO
 */
void SDL_LogInfo (int category, const(char)* fmt, ...);

/**
 *  \brief Log a message with SDL_LOG_PRIORITY_WARN
 */
void SDL_LogWarn (int category, const(char)* fmt, ...);

/**
 *  \brief Log a message with SDL_LOG_PRIORITY_ERROR
 */
void SDL_LogError (int category, const(char)* fmt, ...);

/**
 *  \brief Log a message with SDL_LOG_PRIORITY_CRITICAL
 */
void SDL_LogCritical (int category, const(char)* fmt, ...);

/**
 *  \brief Log a message with the specified category and priority.
 */
void SDL_LogMessage (
    int category,
    SDL_LogPriority priority,
    const(char)* fmt,
    ...);

/**
 *  \brief Log a message with the specified category and priority.
 */
//void SDL_LogMessageV (
    //int category,
    //SDL_LogPriority priority,
    //const(char)* fmt,
    //va_list ap);

/**
 *  \brief The prototype for the log output function
 */
alias SDL_LogOutputFunction = void function (void* userdata, int category, SDL_LogPriority priority, const(char)* message);

/**
 *  \brief Get the current log output function.
 */
void SDL_LogGetOutputFunction (SDL_LogOutputFunction* callback, void** userdata);

/**
 *  \brief This function allows you to replace the default log output
 *         function with one of your own.
 */
void SDL_LogSetOutputFunction (SDL_LogOutputFunction callback, void* userdata);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_log_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_log.h ***/

/*** Start of inlined file: SDL_messagebox.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 * \brief SDL_MessageBox flags. If supported will display warning icon, etc.
 */
enum SDL_MessageBoxFlags
{
    SDL_MESSAGEBOX_ERROR = 0x00000010, /**< error dialog */
    SDL_MESSAGEBOX_WARNING = 0x00000020, /**< warning dialog */
    SDL_MESSAGEBOX_INFORMATION = 0x00000040 /**< informational dialog */
}

/**
 * \brief Flags for SDL_MessageBoxButtonData.
 */
enum SDL_MessageBoxButtonFlags
{
    SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 0x00000001, /**< Marks the default button when return is hit */
    SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 0x00000002 /**< Marks the default button when escape is hit */
}

/**
 *  \brief Individual button data.
 */
struct SDL_MessageBoxButtonData
{
    Uint32 flags; /**< ::SDL_MessageBoxButtonFlags */
    int buttonid; /**< User defined button id (value returned via SDL_ShowMessageBox) */
    const(char)* text; /**< The UTF-8 button text */
}

/**
 * \brief RGB value used in a message box color scheme
 */
struct SDL_MessageBoxColor
{
    Uint8 r;
    Uint8 g;
    Uint8 b;
}

enum SDL_MessageBoxColorType
{
    SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
    SDL_MESSAGEBOX_COLOR_TEXT = 1,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
    SDL_MESSAGEBOX_COLOR_MAX = 5
}

/**
 * \brief A set of colors to use for message box dialogs
 */
struct SDL_MessageBoxColorScheme
{
    //SDL_MessageBoxColor[SDL_MESSAGEBOX_COLOR_MAX] colors;
    SDL_MessageBoxColor[5] colors;
}

/**
 *  \brief MessageBox structure containing title, text, window, etc.
 */
struct SDL_MessageBoxData
{
    Uint32 flags; /**< ::SDL_MessageBoxFlags */
    SDL_Window* window; /**< Parent window, can be NULL */
    const(char)* title; /**< UTF-8 title */
    const(char)* message; /**< UTF-8 message text */

    int numbuttons;
    const(SDL_MessageBoxButtonData)* buttons;

    const(SDL_MessageBoxColorScheme)* colorScheme; /**< ::SDL_MessageBoxColorScheme, can be NULL to use system settings */
}

/**
 *  \brief Create a modal message box.
 *
 *  \param messageboxdata The SDL_MessageBoxData structure with title, text, etc.
 *  \param buttonid The pointer to which user id of hit button should be copied.
 *
 *  \return -1 on error, otherwise 0 and buttonid contains user id of button
 *          hit or -1 if dialog was closed.
 *
 *  \note This function should be called on the thread that created the parent
 *        window, or on the main thread if the messagebox has no parent.  It will
 *        block execution of that thread until the user clicks a button or
 *        closes the messagebox.
 */
int SDL_ShowMessageBox (const(SDL_MessageBoxData)* messageboxdata, int* buttonid);

/**
 *  \brief Create a simple modal message box
 *
 *  \param flags    ::SDL_MessageBoxFlags
 *  \param title    UTF-8 title text
 *  \param message  UTF-8 message text
 *  \param window   The parent window, or NULL for no parent
 *
 *  \return 0 on success, -1 on error
 *
 *  \sa SDL_ShowMessageBox
 */
int SDL_ShowSimpleMessageBox (Uint32 flags, const(char)* title, const(char)* message, SDL_Window* window);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_messagebox_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_messagebox.h ***/

/*** Start of inlined file: SDL_power.h ***/

/**
 *  \file SDL_power.h
 *
 *  Header for the SDL power management routines.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief The basic state for the system's power supply.
 */
enum SDL_PowerState
{
    SDL_POWERSTATE_UNKNOWN = 0, /**< cannot determine power status */
    SDL_POWERSTATE_ON_BATTERY = 1, /**< Not plugged in, running on the battery */
    SDL_POWERSTATE_NO_BATTERY = 2, /**< Plugged in, no battery available */
    SDL_POWERSTATE_CHARGING = 3, /**< Plugged in, charging battery */
    SDL_POWERSTATE_CHARGED = 4 /**< Plugged in, battery charged */
}

/**
 *  \brief Get the current power supply details.
 *
 *  \param secs Seconds of battery life left. You can pass a NULL here if
 *              you don't care. Will return -1 if we can't determine a
 *              value, or we're not running on a battery.
 *
 *  \param pct Percentage of battery life left, between 0 and 100. You can
 *             pass a NULL here if you don't care. Will return -1 if we
 *             can't determine a value, or we're not running on a battery.
 *
 *  \return The state of the battery (if any).
 */
SDL_PowerState SDL_GetPowerInfo (int* secs, int* pct);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_power_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_power.h ***/

/*** Start of inlined file: SDL_render.h ***/
/**
 *  \file SDL_render.h
 *
 *  Header file for SDL 2D rendering functions.
 *
 *  This API supports the following features:
 *      * single pixel points
 *      * single pixel lines
 *      * filled rectangles
 *      * texture images
 *
 *  The primitives may be drawn in opaque, blended, or additive modes.
 *
 *  The texture images may be drawn in opaque, blended, or additive modes.
 *  They can have an additional color tint or alpha modulation applied to
 *  them, and may also be stretched with linear interpolation.
 *
 *  This API is designed to accelerate simple 2D operations. You may
 *  want more functionality such as polygons and particle effects and
 *  in that case you should use SDL's OpenGL/Direct3D support or one
 *  of the many good 3D engines.
 *
 *  These functions must be called from the main thread.
 *  See this bug for details: http://bugzilla.libsdl.org/show_bug.cgi?id=1995
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief Flags used when creating a rendering context
 */
enum SDL_RendererFlags
{
    SDL_RENDERER_SOFTWARE = 0x00000001, /**< The renderer is a software fallback */
    SDL_RENDERER_ACCELERATED = 0x00000002, /**< The renderer uses hardware
    													 acceleration */
    SDL_RENDERER_PRESENTVSYNC = 0x00000004, /**< Present is synchronized
    													 with the refresh rate */
    SDL_RENDERER_TARGETTEXTURE = 0x00000008 /**< The renderer supports
    													 rendering to texture */
}

/**
 *  \brief Information on the capabilities of a render driver or context.
 */
struct SDL_RendererInfo
{
    const(char)* name; /**< The name of the renderer */
    Uint32 flags; /**< Supported ::SDL_RendererFlags */
    Uint32 num_texture_formats; /**< The number of available texture formats */
    Uint32[16] texture_formats; /**< The available texture formats */
    int max_texture_width; /**< The maximum texture width */
    int max_texture_height; /**< The maximum texture height */
}

/**
 *  \brief The access pattern allowed for a texture.
 */
enum SDL_TextureAccess
{
    SDL_TEXTUREACCESS_STATIC = 0, /**< Changes rarely, not lockable */
    SDL_TEXTUREACCESS_STREAMING = 1, /**< Changes frequently, lockable */
    SDL_TEXTUREACCESS_TARGET = 2 /**< Texture can be used as a render target */
}

/**
 *  \brief The texture channel modulation used in SDL_RenderCopy().
 */
enum SDL_TextureModulate
{
    SDL_TEXTUREMODULATE_NONE = 0x00000000, /**< No modulation */
    SDL_TEXTUREMODULATE_COLOR = 0x00000001, /**< srcC = srcC * color */
    SDL_TEXTUREMODULATE_ALPHA = 0x00000002 /**< srcA = srcA * alpha */
}

/**
 *  \brief Flip constants for SDL_RenderCopyEx
 */
enum SDL_RendererFlip
{
    SDL_FLIP_NONE = 0x00000000, /**< Do not flip */
    SDL_FLIP_HORIZONTAL = 0x00000001, /**< flip horizontally */
    SDL_FLIP_VERTICAL = 0x00000002 /**< flip vertically */
}

/**
 *  \brief A structure representing rendering state
 */
struct SDL_Renderer;

/**
 *  \brief An efficient driver-specific representation of pixel data
 */
struct SDL_Texture;

/* Function prototypes */

/**
 *  \brief Get the number of 2D rendering drivers available for the current
 *         display.
 *
 *  A render driver is a set of code that handles rendering and texture
 *  management on a particular display.  Normally there is only one, but
 *  some drivers may have several available with different capabilities.
 *
 *  \sa SDL_GetRenderDriverInfo()
 *  \sa SDL_CreateRenderer()
 */
int SDL_GetNumRenderDrivers ();

/**
 *  \brief Get information about a specific 2D rendering driver for the current
 *         display.
 *
 *  \param index The index of the driver to query information about.
 *  \param info  A pointer to an SDL_RendererInfo struct to be filled with
 *               information on the rendering driver.
 *
 *  \return 0 on success, -1 if the index was out of range.
 *
 *  \sa SDL_CreateRenderer()
 */
int SDL_GetRenderDriverInfo (int index, SDL_RendererInfo* info);

/**
 *  \brief Create a window and default renderer
 *
 *  \param width    The width of the window
 *  \param height   The height of the window
 *  \param window_flags The flags used to create the window
 *  \param window   A pointer filled with the window, or NULL on error
 *  \param renderer A pointer filled with the renderer, or NULL on error
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_CreateWindowAndRenderer (
    int width,
    int height,
    Uint32 window_flags,
    SDL_Window** window,
    SDL_Renderer** renderer);

/**
 *  \brief Create a 2D rendering context for a window.
 *
 *  \param window The window where rendering is displayed.
 *  \param index    The index of the rendering driver to initialize, or -1 to
 *                  initialize the first one supporting the requested flags.
 *  \param flags    ::SDL_RendererFlags.
 *
 *  \return A valid rendering context or NULL if there was an error.
 *
 *  \sa SDL_CreateSoftwareRenderer()
 *  \sa SDL_GetRendererInfo()
 *  \sa SDL_DestroyRenderer()
 */
SDL_Renderer* SDL_CreateRenderer (SDL_Window* window, int index, Uint32 flags);

/**
 *  \brief Create a 2D software rendering context for a surface.
 *
 *  \param surface The surface where rendering is done.
 *
 *  \return A valid rendering context or NULL if there was an error.
 *
 *  \sa SDL_CreateRenderer()
 *  \sa SDL_DestroyRenderer()
 */
SDL_Renderer* SDL_CreateSoftwareRenderer (SDL_Surface* surface);

/**
 *  \brief Get the renderer associated with a window.
 */
SDL_Renderer* SDL_GetRenderer (SDL_Window* window);

/**
 *  \brief Get information about a rendering context.
 */
int SDL_GetRendererInfo (SDL_Renderer* renderer, SDL_RendererInfo* info);

/**
 *  \brief Get the output size in pixels of a rendering context.
 */
int SDL_GetRendererOutputSize (SDL_Renderer* renderer, int* w, int* h);

/**
 *  \brief Create a texture for a rendering context.
 *
 *  \param renderer The renderer.
 *  \param format The format of the texture.
 *  \param access One of the enumerated values in ::SDL_TextureAccess.
 *  \param w      The width of the texture in pixels.
 *  \param h      The height of the texture in pixels.
 *
 *  \return The created texture is returned, or NULL if no rendering context was
 *          active,  the format was unsupported, or the width or height were out
 *          of range.
 *
 *  \note The contents of the texture are not defined at creation.
 *
 *  \sa SDL_QueryTexture()
 *  \sa SDL_UpdateTexture()
 *  \sa SDL_DestroyTexture()
 */
SDL_Texture* SDL_CreateTexture (
    SDL_Renderer* renderer,
    Uint32 format,
    int access,
    int w,
    int h);

/**
 *  \brief Create a texture from an existing surface.
 *
 *  \param renderer The renderer.
 *  \param surface The surface containing pixel data used to fill the texture.
 *
 *  \return The created texture is returned, or NULL on error.
 *
 *  \note The surface is not modified or freed by this function.
 *
 *  \sa SDL_QueryTexture()
 *  \sa SDL_DestroyTexture()
 */
SDL_Texture* SDL_CreateTextureFromSurface (SDL_Renderer* renderer, SDL_Surface* surface);

/**
 *  \brief Query the attributes of a texture
 *
 *  \param texture A texture to be queried.
 *  \param format  A pointer filled in with the raw format of the texture.  The
 *                 actual format may differ, but pixel transfers will use this
 *                 format.
 *  \param access  A pointer filled in with the actual access to the texture.
 *  \param w       A pointer filled in with the width of the texture in pixels.
 *  \param h       A pointer filled in with the height of the texture in pixels.
 *
 *  \return 0 on success, or -1 if the texture is not valid.
 */
int SDL_QueryTexture (
    SDL_Texture* texture,
    Uint32* format,
    int* access,
    int* w,
    int* h);

/**
 *  \brief Set an additional color value used in render copy operations.
 *
 *  \param texture The texture to update.
 *  \param r       The red color value multiplied into copy operations.
 *  \param g       The green color value multiplied into copy operations.
 *  \param b       The blue color value multiplied into copy operations.
 *
 *  \return 0 on success, or -1 if the texture is not valid or color modulation
 *          is not supported.
 *
 *  \sa SDL_GetTextureColorMod()
 */
int SDL_SetTextureColorMod (SDL_Texture* texture, Uint8 r, Uint8 g, Uint8 b);

/**
 *  \brief Get the additional color value used in render copy operations.
 *
 *  \param texture The texture to query.
 *  \param r         A pointer filled in with the current red color value.
 *  \param g         A pointer filled in with the current green color value.
 *  \param b         A pointer filled in with the current blue color value.
 *
 *  \return 0 on success, or -1 if the texture is not valid.
 *
 *  \sa SDL_SetTextureColorMod()
 */
int SDL_GetTextureColorMod (SDL_Texture* texture, Uint8* r, Uint8* g, Uint8* b);

/**
 *  \brief Set an additional alpha value used in render copy operations.
 *
 *  \param texture The texture to update.
 *  \param alpha     The alpha value multiplied into copy operations.
 *
 *  \return 0 on success, or -1 if the texture is not valid or alpha modulation
 *          is not supported.
 *
 *  \sa SDL_GetTextureAlphaMod()
 */
int SDL_SetTextureAlphaMod (SDL_Texture* texture, Uint8 alpha);

/**
 *  \brief Get the additional alpha value used in render copy operations.
 *
 *  \param texture The texture to query.
 *  \param alpha     A pointer filled in with the current alpha value.
 *
 *  \return 0 on success, or -1 if the texture is not valid.
 *
 *  \sa SDL_SetTextureAlphaMod()
 */
int SDL_GetTextureAlphaMod (SDL_Texture* texture, Uint8* alpha);

/**
 *  \brief Set the blend mode used for texture copy operations.
 *
 *  \param texture The texture to update.
 *  \param blendMode ::SDL_BlendMode to use for texture blending.
 *
 *  \return 0 on success, or -1 if the texture is not valid or the blend mode is
 *          not supported.
 *
 *  \note If the blend mode is not supported, the closest supported mode is
 *        chosen.
 *
 *  \sa SDL_GetTextureBlendMode()
 */
int SDL_SetTextureBlendMode (SDL_Texture* texture, SDL_BlendMode blendMode);

/**
 *  \brief Get the blend mode used for texture copy operations.
 *
 *  \param texture   The texture to query.
 *  \param blendMode A pointer filled in with the current blend mode.
 *
 *  \return 0 on success, or -1 if the texture is not valid.
 *
 *  \sa SDL_SetTextureBlendMode()
 */
int SDL_GetTextureBlendMode (SDL_Texture* texture, SDL_BlendMode* blendMode);

/**
 *  \brief Update the given texture rectangle with new pixel data.
 *
 *  \param texture   The texture to update
 *  \param rect      A pointer to the rectangle of pixels to update, or NULL to
 *                   update the entire texture.
 *  \param pixels    The raw pixel data in the format of the texture.
 *  \param pitch     The number of bytes in a row of pixel data, including padding between lines.
 *
 *  The pixel data must be in the format of the texture. The pixel format can be
 *  queried with SDL_QueryTexture.
 *
 *  \return 0 on success, or -1 if the texture is not valid.
 *
 *  \note This is a fairly slow function.
 */
int SDL_UpdateTexture (
    SDL_Texture* texture,
    const(SDL_Rect)* rect,
    const(void)* pixels,
    int pitch);

/**
 *  \brief Update a rectangle within a planar YV12 or IYUV texture with new pixel data.
 *
 *  \param texture   The texture to update
 *  \param rect      A pointer to the rectangle of pixels to update, or NULL to
 *                   update the entire texture.
 *  \param Yplane    The raw pixel data for the Y plane.
 *  \param Ypitch    The number of bytes between rows of pixel data for the Y plane.
 *  \param Uplane    The raw pixel data for the U plane.
 *  \param Upitch    The number of bytes between rows of pixel data for the U plane.
 *  \param Vplane    The raw pixel data for the V plane.
 *  \param Vpitch    The number of bytes between rows of pixel data for the V plane.
 *
 *  \return 0 on success, or -1 if the texture is not valid.
 *
 *  \note You can use SDL_UpdateTexture() as long as your pixel data is
 *        a contiguous block of Y and U/V planes in the proper order, but
 *        this function is available if your pixel data is not contiguous.
 */
int SDL_UpdateYUVTexture (
    SDL_Texture* texture,
    const(SDL_Rect)* rect,
    const(Uint8)* Yplane,
    int Ypitch,
    const(Uint8)* Uplane,
    int Upitch,
    const(Uint8)* Vplane,
    int Vpitch);

/**
 *  \brief Lock a portion of the texture for write-only pixel access.
 *
 *  \param texture   The texture to lock for access, which was created with
 *                   ::SDL_TEXTUREACCESS_STREAMING.
 *  \param rect      A pointer to the rectangle to lock for access. If the rect
 *                   is NULL, the entire texture will be locked.
 *  \param pixels    This is filled in with a pointer to the locked pixels,
 *                   appropriately offset by the locked area.
 *  \param pitch     This is filled in with the pitch of the locked pixels.
 *
 *  \return 0 on success, or -1 if the texture is not valid or was not created with ::SDL_TEXTUREACCESS_STREAMING.
 *
 *  \sa SDL_UnlockTexture()
 */
int SDL_LockTexture (
    SDL_Texture* texture,
    const(SDL_Rect)* rect,
    void** pixels,
    int* pitch);

/**
 *  \brief Unlock a texture, uploading the changes to video memory, if needed.
 *
 *  \sa SDL_LockTexture()
 */
void SDL_UnlockTexture (SDL_Texture* texture);

/**
 * \brief Determines whether a window supports the use of render targets
 *
 * \param renderer The renderer that will be checked
 *
 * \return SDL_TRUE if supported, SDL_FALSE if not.
 */
SDL_bool SDL_RenderTargetSupported (SDL_Renderer* renderer);

/**
 * \brief Set a texture as the current rendering target.
 *
 * \param renderer The renderer.
 * \param texture The targeted texture, which must be created with the SDL_TEXTUREACCESS_TARGET flag, or NULL for the default render target
 *
 * \return 0 on success, or -1 on error
 *
 *  \sa SDL_GetRenderTarget()
 */
int SDL_SetRenderTarget (SDL_Renderer* renderer, SDL_Texture* texture);

/**
 * \brief Get the current render target or NULL for the default render target.
 *
 * \return The current render target
 *
 *  \sa SDL_SetRenderTarget()
 */
SDL_Texture* SDL_GetRenderTarget (SDL_Renderer* renderer);

/**
 *  \brief Set device independent resolution for rendering
 *
 *  \param renderer The renderer for which resolution should be set.
 *  \param w      The width of the logical resolution
 *  \param h      The height of the logical resolution
 *
 *  This function uses the viewport and scaling functionality to allow a fixed logical
 *  resolution for rendering, regardless of the actual output resolution.  If the actual
 *  output resolution doesn't have the same aspect ratio the output rendering will be
 *  centered within the output display.
 *
 *  If the output display is a window, mouse events in the window will be filtered
 *  and scaled so they seem to arrive within the logical resolution.
 *
 *  \note If this function results in scaling or subpixel drawing by the
 *        rendering backend, it will be handled using the appropriate
 *        quality hints.
 *
 *  \sa SDL_RenderGetLogicalSize()
 *  \sa SDL_RenderSetScale()
 *  \sa SDL_RenderSetViewport()
 */
int SDL_RenderSetLogicalSize (SDL_Renderer* renderer, int w, int h);

/**
 *  \brief Get device independent resolution for rendering
 *
 *  \param renderer The renderer from which resolution should be queried.
 *  \param w      A pointer filled with the width of the logical resolution
 *  \param h      A pointer filled with the height of the logical resolution
 *
 *  \sa SDL_RenderSetLogicalSize()
 */
void SDL_RenderGetLogicalSize (SDL_Renderer* renderer, int* w, int* h);

/**
 *  \brief Set whether to force integer scales for resolution-independent rendering
 *
 *  \param renderer The renderer for which integer scaling should be set.
 *  \param enable   Enable or disable integer scaling
 *
 *  This function restricts the logical viewport to integer values - that is, when
 *  a resolution is between two multiples of a logical size, the viewport size is
 *  rounded down to the lower multiple.
 *
 *  \sa SDL_RenderSetLogicalSize()
 */
int SDL_RenderSetIntegerScale (SDL_Renderer* renderer, SDL_bool enable);

/**
 *  \brief Get whether integer scales are forced for resolution-independent rendering
 *
 *  \param renderer The renderer from which integer scaling should be queried.
 *
 *  \sa SDL_RenderSetIntegerScale()
 */
SDL_bool SDL_RenderGetIntegerScale (SDL_Renderer* renderer);

/**
 *  \brief Set the drawing area for rendering on the current target.
 *
 *  \param renderer The renderer for which the drawing area should be set.
 *  \param rect The rectangle representing the drawing area, or NULL to set the viewport to the entire target.
 *
 *  The x,y of the viewport rect represents the origin for rendering.
 *
 *  \return 0 on success, or -1 on error
 *
 *  \note If the window associated with the renderer is resized, the viewport is automatically reset.
 *
 *  \sa SDL_RenderGetViewport()
 *  \sa SDL_RenderSetLogicalSize()
 */
int SDL_RenderSetViewport (SDL_Renderer* renderer, const(SDL_Rect)* rect);

/**
 *  \brief Get the drawing area for the current target.
 *
 *  \sa SDL_RenderSetViewport()
 */
void SDL_RenderGetViewport (SDL_Renderer* renderer, SDL_Rect* rect);

/**
 *  \brief Set the clip rectangle for the current target.
 *
 *  \param renderer The renderer for which clip rectangle should be set.
 *  \param rect   A pointer to the rectangle to set as the clip rectangle, or
 *                NULL to disable clipping.
 *
 *  \return 0 on success, or -1 on error
 *
 *  \sa SDL_RenderGetClipRect()
 */
int SDL_RenderSetClipRect (SDL_Renderer* renderer, const(SDL_Rect)* rect);

/**
 *  \brief Get the clip rectangle for the current target.
 *
 *  \param renderer The renderer from which clip rectangle should be queried.
 *  \param rect   A pointer filled in with the current clip rectangle, or
 *                an empty rectangle if clipping is disabled.
 *
 *  \sa SDL_RenderSetClipRect()
 */
void SDL_RenderGetClipRect (SDL_Renderer* renderer, SDL_Rect* rect);

/**
 *  \brief Get whether clipping is enabled on the given renderer.
 *
 *  \param renderer The renderer from which clip state should be queried.
 *
 *  \sa SDL_RenderGetClipRect()
 */
SDL_bool SDL_RenderIsClipEnabled (SDL_Renderer* renderer);

/**
 *  \brief Set the drawing scale for rendering on the current target.
 *
 *  \param renderer The renderer for which the drawing scale should be set.
 *  \param scaleX The horizontal scaling factor
 *  \param scaleY The vertical scaling factor
 *
 *  The drawing coordinates are scaled by the x/y scaling factors
 *  before they are used by the renderer.  This allows resolution
 *  independent drawing with a single coordinate system.
 *
 *  \note If this results in scaling or subpixel drawing by the
 *        rendering backend, it will be handled using the appropriate
 *        quality hints.  For best results use integer scaling factors.
 *
 *  \sa SDL_RenderGetScale()
 *  \sa SDL_RenderSetLogicalSize()
 */
int SDL_RenderSetScale (SDL_Renderer* renderer, float scaleX, float scaleY);

/**
 *  \brief Get the drawing scale for the current target.
 *
 *  \param renderer The renderer from which drawing scale should be queried.
 *  \param scaleX A pointer filled in with the horizontal scaling factor
 *  \param scaleY A pointer filled in with the vertical scaling factor
 *
 *  \sa SDL_RenderSetScale()
 */
void SDL_RenderGetScale (SDL_Renderer* renderer, float* scaleX, float* scaleY);

/**
 *  \brief Set the color used for drawing operations (Rect, Line and Clear).
 *
 *  \param renderer The renderer for which drawing color should be set.
 *  \param r The red value used to draw on the rendering target.
 *  \param g The green value used to draw on the rendering target.
 *  \param b The blue value used to draw on the rendering target.
 *  \param a The alpha value used to draw on the rendering target, usually
 *           ::SDL_ALPHA_OPAQUE (255).
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_SetRenderDrawColor (
    SDL_Renderer* renderer,
    Uint8 r,
    Uint8 g,
    Uint8 b,
    Uint8 a);

/**
 *  \brief Get the color used for drawing operations (Rect, Line and Clear).
 *
 *  \param renderer The renderer from which drawing color should be queried.
 *  \param r A pointer to the red value used to draw on the rendering target.
 *  \param g A pointer to the green value used to draw on the rendering target.
 *  \param b A pointer to the blue value used to draw on the rendering target.
 *  \param a A pointer to the alpha value used to draw on the rendering target,
 *           usually ::SDL_ALPHA_OPAQUE (255).
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_GetRenderDrawColor (
    SDL_Renderer* renderer,
    Uint8* r,
    Uint8* g,
    Uint8* b,
    Uint8* a);

/**
 *  \brief Set the blend mode used for drawing operations (Fill and Line).
 *
 *  \param renderer The renderer for which blend mode should be set.
 *  \param blendMode ::SDL_BlendMode to use for blending.
 *
 *  \return 0 on success, or -1 on error
 *
 *  \note If the blend mode is not supported, the closest supported mode is
 *        chosen.
 *
 *  \sa SDL_GetRenderDrawBlendMode()
 */
int SDL_SetRenderDrawBlendMode (
    SDL_Renderer* renderer,
    SDL_BlendMode blendMode);

/**
 *  \brief Get the blend mode used for drawing operations.
 *
 *  \param renderer The renderer from which blend mode should be queried.
 *  \param blendMode A pointer filled in with the current blend mode.
 *
 *  \return 0 on success, or -1 on error
 *
 *  \sa SDL_SetRenderDrawBlendMode()
 */
int SDL_GetRenderDrawBlendMode (
    SDL_Renderer* renderer,
    SDL_BlendMode* blendMode);

/**
 *  \brief Clear the current rendering target with the drawing color
 *
 *  This function clears the entire rendering target, ignoring the viewport and
 *  the clip rectangle.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderClear (SDL_Renderer* renderer);

/**
 *  \brief Draw a point on the current rendering target.
 *
 *  \param renderer The renderer which should draw a point.
 *  \param x The x coordinate of the point.
 *  \param y The y coordinate of the point.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderDrawPoint (SDL_Renderer* renderer, int x, int y);

/**
 *  \brief Draw multiple points on the current rendering target.
 *
 *  \param renderer The renderer which should draw multiple points.
 *  \param points The points to draw
 *  \param count The number of points to draw
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderDrawPoints (
    SDL_Renderer* renderer,
    const(SDL_Point)* points,
    int count);

/**
 *  \brief Draw a line on the current rendering target.
 *
 *  \param renderer The renderer which should draw a line.
 *  \param x1 The x coordinate of the start point.
 *  \param y1 The y coordinate of the start point.
 *  \param x2 The x coordinate of the end point.
 *  \param y2 The y coordinate of the end point.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderDrawLine (SDL_Renderer* renderer, int x1, int y1, int x2, int y2);

/**
 *  \brief Draw a series of connected lines on the current rendering target.
 *
 *  \param renderer The renderer which should draw multiple lines.
 *  \param points The points along the lines
 *  \param count The number of points, drawing count-1 lines
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderDrawLines (
    SDL_Renderer* renderer,
    const(SDL_Point)* points,
    int count);

/**
 *  \brief Draw a rectangle on the current rendering target.
 *
 *  \param renderer The renderer which should draw a rectangle.
 *  \param rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderDrawRect (SDL_Renderer* renderer, const(SDL_Rect)* rect);

/**
 *  \brief Draw some number of rectangles on the current rendering target.
 *
 *  \param renderer The renderer which should draw multiple rectangles.
 *  \param rects A pointer to an array of destination rectangles.
 *  \param count The number of rectangles.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderDrawRects (
    SDL_Renderer* renderer,
    const(SDL_Rect)* rects,
    int count);

/**
 *  \brief Fill a rectangle on the current rendering target with the drawing color.
 *
 *  \param renderer The renderer which should fill a rectangle.
 *  \param rect A pointer to the destination rectangle, or NULL for the entire
 *              rendering target.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderFillRect (SDL_Renderer* renderer, const(SDL_Rect)* rect);

/**
 *  \brief Fill some number of rectangles on the current rendering target with the drawing color.
 *
 *  \param renderer The renderer which should fill multiple rectangles.
 *  \param rects A pointer to an array of destination rectangles.
 *  \param count The number of rectangles.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderFillRects (
    SDL_Renderer* renderer,
    const(SDL_Rect)* rects,
    int count);

/**
 *  \brief Copy a portion of the texture to the current rendering target.
 *
 *  \param renderer The renderer which should copy parts of a texture.
 *  \param texture The source texture.
 *  \param srcrect   A pointer to the source rectangle, or NULL for the entire
 *                   texture.
 *  \param dstrect   A pointer to the destination rectangle, or NULL for the
 *                   entire rendering target.
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderCopy (
    SDL_Renderer* renderer,
    SDL_Texture* texture,
    const(SDL_Rect)* srcrect,
    const(SDL_Rect)* dstrect);

/**
 *  \brief Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center
 *
 *  \param renderer The renderer which should copy parts of a texture.
 *  \param texture The source texture.
 *  \param srcrect   A pointer to the source rectangle, or NULL for the entire
 *                   texture.
 *  \param dstrect   A pointer to the destination rectangle, or NULL for the
 *                   entire rendering target.
 *  \param angle    An angle in degrees that indicates the rotation that will be applied to dstrect, rotating it in a clockwise direction
 *  \param center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done around dstrect.w/2, dstrect.h/2).
 *  \param flip     An SDL_RendererFlip value stating which flipping actions should be performed on the texture
 *
 *  \return 0 on success, or -1 on error
 */
int SDL_RenderCopyEx (
    SDL_Renderer* renderer,
    SDL_Texture* texture,
    const(SDL_Rect)* srcrect,
    const(SDL_Rect)* dstrect,
    const double angle,
    const(SDL_Point)* center,
    const SDL_RendererFlip flip);

/**
 *  \brief Read pixels from the current rendering target.
 *
 *  \param renderer The renderer from which pixels should be read.
 *  \param rect   A pointer to the rectangle to read, or NULL for the entire
 *                render target.
 *  \param format The desired format of the pixel data, or 0 to use the format
 *                of the rendering target
 *  \param pixels A pointer to be filled in with the pixel data
 *  \param pitch  The pitch of the pixels parameter.
 *
 *  \return 0 on success, or -1 if pixel reading is not supported.
 *
 *  \warning This is a very slow operation, and should not be used frequently.
 */
int SDL_RenderReadPixels (
    SDL_Renderer* renderer,
    const(SDL_Rect)* rect,
    Uint32 format,
    void* pixels,
    int pitch);

/**
 *  \brief Update the screen with rendering performed.
 */
void SDL_RenderPresent (SDL_Renderer* renderer);

/**
 *  \brief Destroy the specified texture.
 *
 *  \sa SDL_CreateTexture()
 *  \sa SDL_CreateTextureFromSurface()
 */
void SDL_DestroyTexture (SDL_Texture* texture);

/**
 *  \brief Destroy the rendering context for a window and free associated
 *         textures.
 *
 *  \sa SDL_CreateRenderer()
 */
void SDL_DestroyRenderer (SDL_Renderer* renderer);

/**
 *  \brief Bind the texture to the current OpenGL/ES/ES2 context for use with
 *         OpenGL instructions.
 *
 *  \param texture  The SDL texture to bind
 *  \param texw     A pointer to a float that will be filled with the texture width
 *  \param texh     A pointer to a float that will be filled with the texture height
 *
 *  \return 0 on success, or -1 if the operation is not supported
 */
int SDL_GL_BindTexture (SDL_Texture* texture, float* texw, float* texh);

/**
 *  \brief Unbind a texture from the current OpenGL/ES/ES2 context.
 *
 *  \param texture  The SDL texture to unbind
 *
 *  \return 0 on success, or -1 if the operation is not supported
 */
int SDL_GL_UnbindTexture (SDL_Texture* texture);

/**
 *  \brief Get the CAMetalLayer associated with the given Metal renderer
 *
 *  \param renderer The renderer to query
 *
 *  \return CAMetalLayer* on success, or NULL if the renderer isn't a Metal renderer
 *
 *  \sa SDL_RenderGetMetalCommandEncoder()
 */
void* SDL_RenderGetMetalLayer (SDL_Renderer* renderer);

/**
 *  \brief Get the Metal command encoder for the current frame
 *
 *  \param renderer The renderer to query
 *
 *  \return id<MTLRenderCommandEncoder> on success, or NULL if the renderer isn't a Metal renderer
 *
 *  \sa SDL_RenderGetMetalLayer()
 */
void* SDL_RenderGetMetalCommandEncoder (SDL_Renderer* renderer);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_render_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_render.h ***/

/*** Start of inlined file: SDL_sensor.h ***/
/**
 *  \file SDL_sensor.h
 *
 *  Include file for SDL sensor event handling
 *
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* *INDENT-OFF* */

/* *INDENT-ON* */

/**
 *  \brief SDL_sensor.h
 *
 *  In order to use these functions, SDL_Init() must have been called
 *  with the ::SDL_INIT_SENSOR flag.  This causes SDL to scan the system
 *  for sensors, and load appropriate drivers.
 */

struct _SDL_Sensor;
alias SDL_Sensor = _SDL_Sensor;

/**
 * This is a unique ID for a sensor for the time it is connected to the system,
 * and is never reused for the lifetime of the application.
 *
 * The ID value starts at 0 and increments from there. The value -1 is an invalid ID.
 */
alias SDL_SensorID = int;

/* The different sensors defined by SDL
 *
 * Additional sensors may be available, using platform dependent semantics.
 *
 * Hare are the additional Android sensors:
 * https://developer.android.com/reference/android/hardware/SensorEvent.html#values
 */
enum SDL_SensorType
{
    SDL_SENSOR_INVALID = -1, /**< Returned for an invalid sensor */
    SDL_SENSOR_UNKNOWN = 0, /**< Unknown sensor type */
    SDL_SENSOR_ACCEL = 1, /**< Accelerometer */
    SDL_SENSOR_GYRO = 2 /**< Gyroscope */
}

/**
 * Accelerometer sensor
 *
 * The accelerometer returns the current acceleration in SI meters per
 * second squared. This includes gravity, so a device at rest will have
 * an acceleration of SDL_STANDARD_GRAVITY straight down.
 *
 * values[0]: Acceleration on the x axis
 * values[1]: Acceleration on the y axis
 * values[2]: Acceleration on the z axis
 *
 * For phones held in portrait mode, the axes are defined as follows:
 * -X ... +X : left ... right
 * -Y ... +Y : bottom ... top
 * -Z ... +Z : farther ... closer
 *
 * The axis data is not changed when the phone is rotated.
 *
 * \sa SDL_GetDisplayOrientation()
 */

/**
 * Gyroscope sensor
 *
 * The gyroscope returns the current rate of rotation in radians per second.
 * The rotation is positive in the counter-clockwise direction. That is,
 * an observer looking from a positive location on one of the axes would
 * see positive rotation on that axis when it appeared to be rotating
 * counter-clockwise.
 *
 * values[0]: Angular speed around the x axis
 * values[1]: Angular speed around the y axis
 * values[2]: Angular speed around the z axis
 *
 * For phones held in portrait mode, the axes are defined as follows:
 * -X ... +X : left ... right
 * -Y ... +Y : bottom ... top
 * -Z ... +Z : farther ... closer
 *
 * The axis data is not changed when the phone is rotated.
 *
 * \sa SDL_GetDisplayOrientation()
 */

/* Function prototypes */

/**
 *  \brief Count the number of sensors attached to the system right now
 */
int SDL_NumSensors ();

/**
 *  \brief Get the implementation dependent name of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor name, or NULL if device_index is out of range.
 */
const(char)* SDL_SensorGetDeviceName (int device_index);

/**
 *  \brief Get the type of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor type, or SDL_SENSOR_INVALID if device_index is out of range.
 */
SDL_SensorType SDL_SensorGetDeviceType (int device_index);

/**
 *  \brief Get the platform dependent type of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor platform dependent type, or -1 if device_index is out of range.
 */
int SDL_SensorGetDeviceNonPortableType (int device_index);

/**
 *  \brief Get the instance ID of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor instance ID, or -1 if device_index is out of range.
 */
SDL_SensorID SDL_SensorGetDeviceInstanceID (int device_index);

/**
 *  \brief Open a sensor for use.
 *
 *  The index passed as an argument refers to the N'th sensor on the system.
 *
 *  \return A sensor identifier, or NULL if an error occurred.
 */
SDL_Sensor* SDL_SensorOpen (int device_index);

/**
 * Return the SDL_Sensor associated with an instance id.
 */
SDL_Sensor* SDL_SensorFromInstanceID (SDL_SensorID instance_id);

/**
 *  \brief Get the implementation dependent name of a sensor.
 *
 *  \return The sensor name, or NULL if the sensor is NULL.
 */
const(char)* SDL_SensorGetName (SDL_Sensor* sensor);

/**
 *  \brief Get the type of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor type, or SDL_SENSOR_INVALID if the sensor is NULL.
 */
SDL_SensorType SDL_SensorGetType (SDL_Sensor* sensor);

/**
 *  \brief Get the platform dependent type of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor platform dependent type, or -1 if the sensor is NULL.
 */
int SDL_SensorGetNonPortableType (SDL_Sensor* sensor);

/**
 *  \brief Get the instance ID of a sensor.
 *
 *  This can be called before any sensors are opened.
 *
 *  \return The sensor instance ID, or -1 if the sensor is NULL.
 */
SDL_SensorID SDL_SensorGetInstanceID (SDL_Sensor* sensor);

/**
 *  Get the current state of an opened sensor.
 *
 *  The number of values and interpretation of the data is sensor dependent.
 *
 *  \param sensor The sensor to query
 *  \param data A pointer filled with the current sensor state
 *  \param num_values The number of values to write to data
 *
 *  \return 0 or -1 if an error occurred.
 */
int SDL_SensorGetData (SDL_Sensor* sensor, float* data, int num_values);

/**
 *  Close a sensor previously opened with SDL_SensorOpen()
 */
void SDL_SensorClose (SDL_Sensor* sensor);

/**
 *  Update the current state of the open sensors.
 *
 *  This is called automatically by the event loop if sensor events are enabled.
 *
 *  This needs to be called from the thread that initialized the sensor subsystem.
 */
void SDL_SensorUpdate ();

/* Ends C function definitions when using C++ */

/* *INDENT-OFF* */

/* *INDENT-ON* */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* _SDL_sensor_h */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_sensor.h ***/

/*** Start of inlined file: SDL_shape.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/** \file SDL_shape.h
 *
 * Header file for the shaped window API.
 */

/**
 *  \brief Create a window that can be shaped with the specified position, dimensions, and flags.
 *
 *  \param title The title of the window, in UTF-8 encoding.
 *  \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
 *               ::SDL_WINDOWPOS_UNDEFINED.
 *  \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
 *               ::SDL_WINDOWPOS_UNDEFINED.
 *  \param w     The width of the window.
 *  \param h     The height of the window.
 *  \param flags The flags for the window, a mask of SDL_WINDOW_BORDERLESS with any of the following:
 *               ::SDL_WINDOW_OPENGL,     ::SDL_WINDOW_INPUT_GRABBED,
 *               ::SDL_WINDOW_HIDDEN,     ::SDL_WINDOW_RESIZABLE,
 *               ::SDL_WINDOW_MAXIMIZED,  ::SDL_WINDOW_MINIMIZED,
 *       ::SDL_WINDOW_BORDERLESS is always set, and ::SDL_WINDOW_FULLSCREEN is always unset.
 *
 *  \return The window created, or NULL if window creation failed.
 *
 *  \sa SDL_DestroyWindow()
 */
SDL_Window* SDL_CreateShapedWindow (const(char)* title, uint x, uint y, uint w, uint h, Uint32 flags);

/**
 * \brief Return whether the given window is a shaped window.
 *
 * \param window The window to query for being shaped.
 *
 * \return SDL_TRUE if the window is a window that can be shaped, SDL_FALSE if the window is unshaped or NULL.
 *
 * \sa SDL_CreateShapedWindow
 */
SDL_bool SDL_IsShapedWindow (const(SDL_Window)* window);

/** \brief An enum denoting the specific type of contents present in an SDL_WindowShapeParams union. */
enum WindowShapeMode
{
    /** \brief The default mode, a binarized alpha cutoff of 1. */
    ShapeModeDefault = 0,
    /** \brief A binarized alpha cutoff with a given integer value. */
    ShapeModeBinarizeAlpha = 1,
    /** \brief A binarized alpha cutoff with a given integer value, but with the opposite comparison. */
    ShapeModeReverseBinarizeAlpha = 2,
    /** \brief A color key is applied. */
    ShapeModeColorKey = 3
}

/** \brief A union containing parameters for shaped windows. */
union SDL_WindowShapeParams
{
    /** \brief A cutoff alpha value for binarization of the window shape's alpha channel. */
    Uint8 binarizationCutoff;
    SDL_Color colorKey;
}

/** \brief A struct that tags the SDL_WindowShapeParams union with an enum describing the type of its contents. */
struct SDL_WindowShapeMode
{
    /** \brief The mode of these window-shape parameters. */
    WindowShapeMode mode;
    /** \brief Window-shape parameters. */
    SDL_WindowShapeParams parameters;
}

/**
 * \brief Set the shape and parameters of a shaped window.
 *
 * \param window The shaped window whose parameters should be set.
 * \param shape A surface encoding the desired shape for the window.
 * \param shape_mode The parameters to set for the shaped window.
 *
 * \return 0 on success, SDL_INVALID_SHAPE_ARGUMENT on an invalid shape argument, or SDL_NONSHAPEABLE_WINDOW
 *           if the SDL_Window given does not reference a valid shaped window.
 *
 * \sa SDL_WindowShapeMode
 * \sa SDL_GetShapedWindowMode.
 */
int SDL_SetWindowShape (SDL_Window* window, SDL_Surface* shape, SDL_WindowShapeMode* shape_mode);

/**
 * \brief Get the shape parameters of a shaped window.
 *
 * \param window The shaped window whose parameters should be retrieved.
 * \param shape_mode An empty shape-mode structure to fill, or NULL to check whether the window has a shape.
 *
 * \return 0 if the window has a shape and, provided shape_mode was not NULL, shape_mode has been filled with the mode
 *           data, SDL_NONSHAPEABLE_WINDOW if the SDL_Window given is not a shaped window, or SDL_WINDOW_LACKS_SHAPE if
 *           the SDL_Window given is a shapeable window currently lacking a shape.
 *
 * \sa SDL_WindowShapeMode
 * \sa SDL_SetWindowShape
 */
int SDL_GetShapedWindowMode (SDL_Window* window, SDL_WindowShapeMode* shape_mode);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_shape_h_ */

/*** End of inlined file: SDL_shape.h ***/

/*** Start of inlined file: SDL_system.h ***/
/**
 *  \file SDL_system.h
 *
 *  Include file for platform specific SDL API functions
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* Platform specific functions for Windows */

/**
   \brief Set a function that is called for every windows message, before TranslateMessage()
*/

/**
   \brief Returns the D3D9 adapter index that matches the specified display index.

   This adapter index can be passed to IDirect3D9::CreateDevice and controls
   on which monitor a full screen application will appear.
*/

/**
   \brief Returns the D3D device associated with a renderer, or NULL if it's not a D3D renderer.

   Once you are done using the device, you should release it to avoid a resource leak.
 */

/**
   \brief Returns the DXGI Adapter and Output indices for the specified display index.

   These can be passed to EnumAdapters and EnumOutputs respectively to get the objects
   required to create a DX10 or DX11 device and swap chain.
 */

/* __WIN32__ */

/* Platform specific functions for Linux */

/**
   \brief Sets the UNIX nice value for a thread, using setpriority() if possible, and RealtimeKit if available.

   \return 0 on success, or -1 on error.
 */
int SDL_LinuxSetThreadPriority (Sint64 threadID, int priority);

/* __LINUX__ */

/* Platform specific functions for iOS */

/* __IPHONEOS__ */

/* Platform specific functions for Android */

/**
   \brief Get the JNI environment for the current thread

   This returns JNIEnv*, but the prototype is void* so we don't need jni.h
 */

/**
   \brief Get the SDL Activity object for the application

   This returns jobject, but the prototype is void* so we don't need jni.h
   The jobject returned by SDL_AndroidGetActivity is a local reference.
   It is the caller's responsibility to properly release it
   (using env->Push/PopLocalFrame or manually with env->DeleteLocalRef)
 */

/**
   \brief Return true if the application is running on Android TV
 */

/**
   \brief Return true if the application is running on a Chromebook
 */

/**
  \brief Return true is the application is running on a Samsung DeX docking station
 */

/**
 \brief Trigger the Android system back button behavior.
 */

/**
   See the official Android developer guide for more information:
   http://developer.android.com/guide/topics/data/data-storage.html
*/

/**
   \brief Get the path used for internal storage for this application.

   This path is unique to your application and cannot be written to
   by other applications.
 */

/**
   \brief Get the current state of external storage, a bitmask of these values:
	SDL_ANDROID_EXTERNAL_STORAGE_READ
	SDL_ANDROID_EXTERNAL_STORAGE_WRITE

   If external storage is currently unavailable, this will return 0.
*/

/**
   \brief Get the path used for external storage for this application.

   This path is unique to your application, but is public and can be
   written to by other applications.
 */

/* __ANDROID__ */

/* Platform specific functions for WinRT */

/**
 *  \brief WinRT / Windows Phone path types
 */

/** \brief The installed app's root directory.
		Files here are likely to be read-only. */

/** \brief The app's local data store.  Files may be written here */

/** \brief The app's roaming data store.  Unsupported on Windows Phone.
		Files written here may be copied to other machines via a network
		connection.
	*/

/** \brief The app's temporary data store.  Unsupported on Windows Phone.
		Files written here may be deleted at any time. */

/**
 *  \brief WinRT Device Family
 */

/** \brief Unknown family  */

/** \brief Desktop family*/

/** \brief Mobile family (for example smartphone) */

/** \brief XBox family */

/**
 *  \brief Retrieves a WinRT defined path on the local file system
 *
 *  \note Documentation on most app-specific path types on WinRT
 *      can be found on MSDN, at the URL:
 *      http://msdn.microsoft.com/en-us/library/windows/apps/hh464917.aspx
 *
 *  \param pathType The type of path to retrieve.
 *  \return A UCS-2 string (16-bit, wide-char) containing the path, or NULL
 *      if the path is not available for any reason.  Not all paths are
 *      available on all versions of Windows.  This is especially true on
 *      Windows Phone.  Check the documentation for the given
 *      SDL_WinRT_Path for more information on which path types are
 *      supported where.
 */

/**
 *  \brief Retrieves a WinRT defined path on the local file system
 *
 *  \note Documentation on most app-specific path types on WinRT
 *      can be found on MSDN, at the URL:
 *      http://msdn.microsoft.com/en-us/library/windows/apps/hh464917.aspx
 *
 *  \param pathType The type of path to retrieve.
 *  \return A UTF-8 string (8-bit, multi-byte) containing the path, or NULL
 *      if the path is not available for any reason.  Not all paths are
 *      available on all versions of Windows.  This is especially true on
 *      Windows Phone.  Check the documentation for the given
 *      SDL_WinRT_Path for more information on which path types are
 *      supported where.
 */

/**
 *  \brief Detects the device family of WinRT plattform on runtime
 *
 *  \return Device family
 */

/* __WINRT__ */

/**
 \brief Return true if the current device is a tablet.
 */
SDL_bool SDL_IsTablet ();

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_system_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_system.h ***/

/*** Start of inlined file: SDL_timer.h ***/

/**
 *  \file SDL_timer.h
 *
 *  Header for the SDL time management routines.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 * \brief Get the number of milliseconds since the SDL library initialization.
 *
 * \note This value wraps if the program runs for more than ~49 days.
 */
Uint32 SDL_GetTicks ();

/**
 * \brief Compare SDL ticks values, and return true if A has passed B
 *
 * e.g. if you want to wait 100 ms, you could do this:
 *  Uint32 timeout = SDL_GetTicks() + 100;
 *  while (!SDL_TICKS_PASSED(SDL_GetTicks(), timeout)) {
 *      ... do work until timeout has elapsed
 *  }
 */

/**
 * \brief Get the current value of the high resolution counter
 */
Uint64 SDL_GetPerformanceCounter ();

/**
 * \brief Get the count per second of the high resolution counter
 */
Uint64 SDL_GetPerformanceFrequency ();

/**
 * \brief Wait a specified number of milliseconds before returning.
 */
void SDL_Delay (Uint32 ms);

/**
 *  Function prototype for the timer callback function.
 *
 *  The callback function is passed the current timer interval and returns
 *  the next timer interval.  If the returned value is the same as the one
 *  passed in, the periodic alarm continues, otherwise a new alarm is
 *  scheduled.  If the callback returns 0, the periodic alarm is cancelled.
 */
alias SDL_TimerCallback = uint function (Uint32 interval, void* param);

/**
 * Definition of the timer ID type.
 */
alias SDL_TimerID = int;

/**
 * \brief Add a new timer to the pool of timers already running.
 *
 * \return A timer ID, or 0 when an error occurs.
 */
SDL_TimerID SDL_AddTimer (
    Uint32 interval,
    SDL_TimerCallback callback,
    void* param);

/**
 * \brief Remove a timer knowing its ID.
 *
 * \return A boolean value indicating success or failure.
 *
 * \warning It is not safe to remove a timer multiple times.
 */
SDL_bool SDL_RemoveTimer (SDL_TimerID id);

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_timer_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_timer.h ***/

/*** Start of inlined file: SDL_version.h ***/
/**
 *  \file SDL_version.h
 *
 *  This header defines the current SDL version.
 */

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/**
 *  \brief Information the version of SDL in use.
 *
 *  Represents the library's version as three levels: major revision
 *  (increments with massive changes, additions, and enhancements),
 *  minor revision (increments with backwards-compatible changes to the
 *  major revision), and patchlevel (increments with fixes to the minor
 *  revision).
 *
 *  \sa SDL_VERSION
 *  \sa SDL_GetVersion
 */
struct SDL_version
{
    Uint8 major; /**< major version */
    Uint8 minor; /**< minor version */
    Uint8 patch; /**< update version */
}

/* Printable format: "%d.%d.%d", MAJOR, MINOR, PATCHLEVEL
*/

/**
 *  \brief Macro to determine SDL version program was compiled against.
 *
 *  This macro fills in a SDL_version structure with the version of the
 *  library you compiled against. This is determined by what header the
 *  compiler uses. Note that if you dynamically linked the library, you might
 *  have a slightly newer or older version at runtime. That version can be
 *  determined with SDL_GetVersion(), which, unlike SDL_VERSION(),
 *  is not a macro.
 *
 *  \param x A pointer to a SDL_version struct to initialize.
 *
 *  \sa SDL_version
 *  \sa SDL_GetVersion
 */

template SDL_VERSION() {
void SDL_VERSION(SDL_version* x) {
    x.major = SDL_MAJOR_VERSION;
    x.minor = SDL_MINOR_VERSION;
    x.patch = SDL_PATCHLEVEL;
}
}

/**
 *  This macro turns the version numbers into a numeric value:
 *  \verbatim
	(1,2,3) -> (1203)
	\endverbatim
 *
 *  This assumes that there will never be more than 100 patchlevels.
 */

/**
 *  This is the version number macro for the current SDL version.
 */

/**
 *  This macro will evaluate to true if compiled with SDL at least X.Y.Z.
 */

/**
 *  \brief Get the version of SDL that is linked against your program.
 *
 *  If you are linking to SDL dynamically, then it is possible that the
 *  current version will be different than the version you compiled against.
 *  This function returns the current version, while SDL_VERSION() is a
 *  macro that tells you what version you compiled with.
 *
 *  \code
 *  SDL_version compiled;
 *  SDL_version linked;
 *
 *  SDL_VERSION(&compiled);
 *  SDL_GetVersion(&linked);
 *  printf("We compiled against SDL version %d.%d.%d ...\n",
 *         compiled.major, compiled.minor, compiled.patch);
 *  printf("But we linked against SDL version %d.%d.%d.\n",
 *         linked.major, linked.minor, linked.patch);
 *  \endcode
 *
 *  This function may be called safely at any time, even before SDL_Init().
 *
 *  \sa SDL_VERSION
 */
void SDL_GetVersion (SDL_version* ver);

/**
 *  \brief Get the code revision of SDL that is linked against your program.
 *
 *  Returns an arbitrary string (a hash value) uniquely identifying the
 *  exact revision of the SDL library in use, and is only useful in comparing
 *  against other revisions. It is NOT an incrementing number.
 */
const(char)* SDL_GetRevision ();

/**
 *  \brief Get the revision number of SDL that is linked against your program.
 *
 *  Returns a number uniquely identifying the exact revision of the SDL
 *  library in use. It is an incrementing number based on commits to
 *  hg.libsdl.org.
 */
int SDL_GetRevisionNumber ();

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_version_h_ */

/* vi: set ts=4 sw=4 expandtab: */

/*** End of inlined file: SDL_version.h ***/

/*** Start of inlined file: begin_code.h ***/
/**
 *  \file begin_code.h
 *
 *  This file sets things up for C dynamic library function definitions,
 *  static inlined functions, and structures aligned at 4-byte alignment.
 *  If you don't like ugly C preprocessor code, don't look at this file. :)
 */

/* This shouldn't be nested -- included it around code only. */

/* technically, this arrived in gcc 3.1, but oh well. */

/* Some compilers use a special export keyword */

/* By default SDL uses the C calling convention */

/* for old EMX/GCC compat.  */

/* SDLCALL */

/* Removed DECLSPEC on Symbian OS because SDL cannot be a DLL in EPOC */

/* __SYMBIAN32__ */

/* Force structure packing at 4 byte alignment.
   This is necessary if the header is included in code which has structure
   packing set to an alternate value, say for loading structures from disk.
   The packing is reset to the previous value in close_code.h
 */

/* Use 8-byte alignment on 64-bit architectures, so pointers are aligned */

/* Compiler needs structure packing set */

/* SDL_INLINE not defined */

/* SDL_FORCE_INLINE not defined */

/* SDL_NORETURN not defined */

/* Apparently this is needed by several Windows compilers */

/* NULL */
/* ! Mac OS X - breaks precompiled headers */

/*** End of inlined file: begin_code.h ***/

/* Set up for C function definitions, even when using C++ */

/* As of version 0.5, SDL is loaded dynamically into the application */

/**
 *  \name SDL_INIT_*
 *
 *  These are the flags which may be passed to SDL_Init().  You should
 *  specify the subsystems which you will be using in your application.
 */
/* @{ */

/**< SDL_INIT_VIDEO implies SDL_INIT_EVENTS */
/**< SDL_INIT_JOYSTICK implies SDL_INIT_EVENTS */

/**< SDL_INIT_GAMECONTROLLER implies SDL_INIT_JOYSTICK */

/**< compatibility; this flag is ignored. */

/* @} */

/**
 *  This function initializes  the subsystems specified by \c flags
 */
int SDL_Init (Uint32 flags);

/**
 *  This function initializes specific SDL subsystems
 *
 *  Subsystem initialization is ref-counted, you must call
 *  SDL_QuitSubSystem() for each SDL_InitSubSystem() to correctly
 *  shutdown a subsystem manually (or call SDL_Quit() to force shutdown).
 *  If a subsystem is already loaded then this call will
 *  increase the ref-count and return.
 */
int SDL_InitSubSystem (Uint32 flags);

/**
 *  This function cleans up specific SDL subsystems
 */
void SDL_QuitSubSystem (Uint32 flags);

/**
 *  This function returns a mask of the specified subsystems which have
 *  previously been initialized.
 *
 *  If \c flags is 0, it returns a mask of all initialized subsystems.
 */
Uint32 SDL_WasInit (Uint32 flags);

/**
 *  This function cleans up all initialized subsystems. You should
 *  call it upon all exit conditions.
 */
void SDL_Quit ();

extern (D) size_t SDL_arraysize(T)(auto ref T array)
{
    return array.sizeof / (array[0]).sizeof;
}

alias SDL_TABLESIZE = SDL_arraysize;

extern (D) string SDL_STRINGIFY_ARG(T)(auto ref T arg)
{
    import std.conv : to;

    return to!string(arg);
}

extern (D) auto SDL_reinterpret_cast(T0, T1)(auto ref T0 type, auto ref T1 expression)
{
    return type(expression);
}

extern (D) auto SDL_static_cast(T0, T1)(auto ref T0 type, auto ref T1 expression)
{
    return type(expression);
}

extern (D) auto SDL_const_cast(T0, T1)(auto ref T0 type, auto ref T1 expression)
{
    return type(expression);
}

extern (D) auto SDL_FOURCC(T0, T1, T2, T3)(auto ref T0 A, auto ref T1 B, auto ref T2 C, auto ref T3 D)
{
    return (SDL_static_cast(Uint32, SDL_static_cast(Uint8, A)) << 0) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, B)) << 8) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, C)) << 16) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, D)) << 24);
}

enum SDL_MAX_SINT8 = cast(Sint8) 0x7F;
enum SDL_MIN_SINT8 = cast(Sint8) ~0x7F;
enum SDL_MAX_UINT8 = cast(Uint8) 0xFF;
enum SDL_MIN_UINT8 = cast(Uint8) 0x00;
enum SDL_MAX_SINT16 = cast(Sint16) 0x7FFF;
enum SDL_MIN_SINT16 = cast(Sint16) ~0x7FFF;
enum SDL_MAX_UINT16 = cast(Uint16) 0xFFFF;
enum SDL_MIN_UINT16 = cast(Uint16) 0x0000;
enum SDL_MAX_SINT32 = cast(Sint32) 0x7FFFFFFF;
enum SDL_MIN_SINT32 = cast(Sint32) ~0x7FFFFFFF;
enum SDL_MAX_UINT32 = cast(Uint32) 0xFFFFFFFFu;
enum SDL_MIN_UINT32 = cast(Uint32) 0x00000000;
enum SDL_MAX_SINT64 = cast(Sint64) 0x7FFFFFFFFFFFFFFFL;
enum SDL_MIN_SINT64 = cast(Sint64) ~0x7FFFFFFFFFFFFFFFL;
enum SDL_MAX_UINT64 = cast(Uint64) 0xFFFFFFFFFFFFFFFFuL;
enum SDL_MIN_UINT64 = cast(Uint64) 0x0000000000000000uL;
enum SDL_PRIs64 = "ld";
enum SDL_PRIu64 = PRIu64;
enum SDL_PRIx64 = PRIx64;
enum SDL_PRIX64 = PRIX64;

extern (D) auto SDL_min(T0, T1)(auto ref T0 x, auto ref T1 y)
{
    return (x < y) ? x : y;
}

extern (D) auto SDL_max(T0, T1)(auto ref T0 x, auto ref T1 y)
{
    return (x > y) ? x : y;
}

extern (D) auto SDL_zero(T)(auto ref T x)
{
    return SDL_memset(&x, 0, (x).sizeof);
}

extern (D) auto SDL_zerop(T)(auto ref T x)
{
    return SDL_memset(x, 0, (*x).sizeof);
}

enum SDL_ICONV_ERROR = cast(size_t) -1;
enum SDL_ICONV_E2BIG = cast(size_t) -2;
enum SDL_ICONV_EILSEQ = cast(size_t) -3;
enum SDL_ICONV_EINVAL = cast(size_t) -4;

extern (D) auto SDL_iconv_utf8_locale(T)(auto ref T S)
{
    return SDL_iconv_string("", "UTF-8", S, SDL_strlen(S) + 1);
}

extern (D) auto SDL_iconv_utf8_ucs2(T)(auto ref T S)
{
    return cast(Uint16*) SDL_iconv_string("UCS-2-INTERNAL", "UTF-8", S, SDL_strlen(S) + 1);
}

extern (D) auto SDL_iconv_utf8_ucs4(T)(auto ref T S)
{
    return cast(Uint32*) SDL_iconv_string("UCS-4-INTERNAL", "UTF-8", S, SDL_strlen(S) + 1);
}

enum SDL_ASSERT_LEVEL = 2;
enum SDL_FILE = __FILE__;
enum SDL_LINE = __LINE__;
enum SDL_NULL_WHILE_LOOP_CONDITION = 0;

extern (D) auto SDL_AtomicIncRef(T)(auto ref T a)
{
    return SDL_AtomicAdd(a, 1);
}

extern (D) auto SDL_AtomicDecRef(T)(auto ref T a)
{
    return SDL_AtomicAdd(a, -1) == 1;
}

extern (D) auto SDL_OutOfMemory()
{
    return SDL_Error(SDL_errorcode.SDL_ENOMEM);
}

extern (D) auto SDL_Unsupported()
{
    return SDL_Error(SDL_errorcode.SDL_UNSUPPORTED);
}

extern (D) auto SDL_InvalidParamError(T)(auto ref T param)
{
    return SDL_SetError("Parameter '%s' is invalid", param);
}

enum SDL_LIL_ENDIAN = 1234;
enum SDL_BIG_ENDIAN = 4321;
//enum SDL_BYTEORDER = __BYTE_ORDER;

extern (D) auto SDL_SwapLE16(T)(auto ref T X)
{
    return X;
}

extern (D) auto SDL_SwapLE32(T)(auto ref T X)
{
    return X;
}

extern (D) auto SDL_SwapLE64(T)(auto ref T X)
{
    return X;
}

extern (D) auto SDL_SwapFloatLE(T)(auto ref T X)
{
    return X;
}

alias SDL_SwapBE16 = SDL_Swap16;
alias SDL_SwapBE32 = SDL_Swap32;
alias SDL_SwapBE64 = SDL_Swap64;
alias SDL_SwapFloatBE = SDL_SwapFloat;
enum SDL_MUTEX_TIMEDOUT = 1;
enum SDL_MUTEX_MAXWAIT = ~cast(Uint32) 0;
alias SDL_mutexP = SDL_LockMutex;
alias SDL_mutexV = SDL_UnlockMutex;
enum SDL_RWOPS_UNKNOWN = 0U;
enum SDL_RWOPS_WINFILE = 1U;
enum SDL_RWOPS_STDFILE = 2U;
enum SDL_RWOPS_JNIFILE = 3U;
enum SDL_RWOPS_MEMORY = 4U;
enum SDL_RWOPS_MEMORY_RO = 5U;
enum RW_SEEK_SET = 0;
enum RW_SEEK_CUR = 1;
enum RW_SEEK_END = 2;

extern (D) auto SDL_RWsize(T)(auto ref T ctx)
{
    return ctx.size(ctx);
}

extern (D) auto SDL_RWseek(T0, T1, T2)(auto ref T0 ctx, auto ref T1 offset, auto ref T2 whence)
{
    return ctx.seek(ctx, offset, whence);
}

extern (D) auto SDL_RWtell(T)(auto ref T ctx)
{
    return ctx.seek(ctx, 0, RW_SEEK_CUR);
}

extern (D) auto SDL_RWread(T0, T1, T2, T3)(auto ref T0 ctx, auto ref T1 ptr, auto ref T2 size, auto ref T3 n)
{
    return ctx.read(ctx, ptr, size, n);
}

extern (D) auto SDL_RWwrite(T0, T1, T2, T3)(auto ref T0 ctx, auto ref T1 ptr, auto ref T2 size, auto ref T3 n)
{
    return ctx.write(ctx, ptr, size, n);
}

extern (D) auto SDL_RWclose(T)(auto ref T ctx)
{
    return ctx.close(ctx);
}

extern (D) auto SDL_LoadFile(T0, T1)(auto ref T0 file, auto ref T1 datasize)
{
    return SDL_LoadFile_RW(SDL_RWFromFile(file, "rb"), datasize, 1);
}

enum SDL_AUDIO_MASK_BITSIZE = 0xFF;
enum SDL_AUDIO_MASK_DATATYPE = 1 << 8;
enum SDL_AUDIO_MASK_ENDIAN = 1 << 12;
enum SDL_AUDIO_MASK_SIGNED = 1 << 15;

extern (D) auto SDL_AUDIO_BITSIZE(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_BITSIZE;
}

extern (D) auto SDL_AUDIO_ISFLOAT(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_DATATYPE;
}

extern (D) auto SDL_AUDIO_ISBIGENDIAN(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_ENDIAN;
}

extern (D) auto SDL_AUDIO_ISSIGNED(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_SIGNED;
}

extern (D) auto SDL_AUDIO_ISINT(T)(auto ref T x)
{
    return !SDL_AUDIO_ISFLOAT(x);
}

extern (D) auto SDL_AUDIO_ISLITTLEENDIAN(T)(auto ref T x)
{
    return !SDL_AUDIO_ISBIGENDIAN(x);
}

extern (D) auto SDL_AUDIO_ISUNSIGNED(T)(auto ref T x)
{
    return !SDL_AUDIO_ISSIGNED(x);
}

enum AUDIO_U8 = 0x0008;
enum AUDIO_S8 = 0x8008;
enum AUDIO_U16LSB = 0x0010;
enum AUDIO_S16LSB = 0x8010;
enum AUDIO_U16MSB = 0x1010;
enum AUDIO_S16MSB = 0x9010;
enum AUDIO_U16 = AUDIO_U16LSB;
enum AUDIO_S16 = AUDIO_S16LSB;
enum AUDIO_S32LSB = 0x8020;
enum AUDIO_S32MSB = 0x9020;
enum AUDIO_S32 = AUDIO_S32LSB;
enum AUDIO_F32LSB = 0x8120;
enum AUDIO_F32MSB = 0x9120;
enum AUDIO_F32 = AUDIO_F32LSB;
enum AUDIO_U16SYS = AUDIO_U16LSB;
enum AUDIO_S16SYS = AUDIO_S16LSB;
enum AUDIO_S32SYS = AUDIO_S32LSB;
enum AUDIO_F32SYS = AUDIO_F32LSB;
enum SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = 0x00000001;
enum SDL_AUDIO_ALLOW_FORMAT_CHANGE = 0x00000002;
enum SDL_AUDIO_ALLOW_CHANNELS_CHANGE = 0x00000004;
enum SDL_AUDIO_ALLOW_SAMPLES_CHANGE = 0x00000008;
enum SDL_AUDIO_ALLOW_ANY_CHANGE = SDL_AUDIO_ALLOW_FREQUENCY_CHANGE | SDL_AUDIO_ALLOW_FORMAT_CHANGE | SDL_AUDIO_ALLOW_CHANNELS_CHANGE | SDL_AUDIO_ALLOW_SAMPLES_CHANGE;
enum SDL_AUDIOCVT_MAX_FILTERS = 9;

extern (D) auto SDL_LoadWAV(T0, T1, T2, T3)(auto ref T0 file, auto ref T1 spec, auto ref T2 audio_buf, auto ref T3 audio_len)
{
    return SDL_LoadWAV_RW(SDL_RWFromFile(file, "rb"), 1, spec, audio_buf, audio_len);
}

enum SDL_MIX_MAXVOLUME = 128;
enum SDL_CACHELINE_SIZE = 128;
enum SDL_ALPHA_OPAQUE = 255;
enum SDL_ALPHA_TRANSPARENT = 0;
alias SDL_DEFINE_PIXELFOURCC = SDL_FOURCC;

extern (D) auto SDL_DEFINE_PIXELFORMAT(T0, T1, T2, T3, T4)(auto ref T0 type, auto ref T1 order, auto ref T2 layout, auto ref T3 bits, auto ref T4 bytes)
{
    return (1 << 28) | (type << 24) | (order << 20) | (layout << 16) | (bits << 8) | (bytes << 0);
}

extern (D) auto SDL_PIXELFLAG(T)(auto ref T X)
{
    return (X >> 28) & 0x0F;
}

extern (D) auto SDL_PIXELTYPE(T)(auto ref T X)
{
    return (X >> 24) & 0x0F;
}

extern (D) auto SDL_PIXELORDER(T)(auto ref T X)
{
    return (X >> 20) & 0x0F;
}

extern (D) auto SDL_PIXELLAYOUT(T)(auto ref T X)
{
    return (X >> 16) & 0x0F;
}

extern (D) auto SDL_BITSPERPIXEL(T)(auto ref T X)
{
    return (X >> 8) & 0xFF;
}

extern (D) auto SDL_BYTESPERPIXEL(T)(auto ref T X)
{
    return SDL_ISPIXELFORMAT_FOURCC(X) ? (((X == .SDL_PIXELFORMAT_YUY2) || (X == .SDL_PIXELFORMAT_UYVY) || (X == .SDL_PIXELFORMAT_YVYU)) ? 2 : 1) : ((X >> 0) & 0xFF);
}

extern (D) auto SDL_ISPIXELFORMAT_INDEXED(T)(auto ref T format)
{
    return !SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_INDEX1) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_INDEX4) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_INDEX8));
}

extern (D) auto SDL_ISPIXELFORMAT_PACKED(T)(auto ref T format)
{
    return !SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_PACKED8) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_PACKED16) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_PACKED32));
}

extern (D) auto SDL_ISPIXELFORMAT_ARRAY(T)(auto ref T format)
{
    return !SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_ARRAYU8) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_ARRAYU16) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_ARRAYU32) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_ARRAYF16) || (SDL_PIXELTYPE(format) == .SDL_PIXELTYPE_ARRAYF32));
}

extern (D) auto SDL_ISPIXELFORMAT_ALPHA(T)(auto ref T format)
{
    return (SDL_ISPIXELFORMAT_PACKED(format) && ((SDL_PIXELORDER(format) == .SDL_PACKEDORDER_ARGB) || (SDL_PIXELORDER(format) == .SDL_PACKEDORDER_RGBA) || (SDL_PIXELORDER(format) == .SDL_PACKEDORDER_ABGR) || (SDL_PIXELORDER(format) == .SDL_PACKEDORDER_BGRA))) || (SDL_ISPIXELFORMAT_ARRAY(format) && ((SDL_PIXELORDER(format) == .SDL_ARRAYORDER_ARGB) || (SDL_PIXELORDER(format) == .SDL_ARRAYORDER_RGBA) || (SDL_PIXELORDER(format) == .SDL_ARRAYORDER_ABGR) || (SDL_PIXELORDER(format) == .SDL_ARRAYORDER_BGRA)));
}

extern (D) auto SDL_ISPIXELFORMAT_FOURCC(T)(auto ref T format)
{
    return format && (SDL_PIXELFLAG(format) != 1);
}

alias SDL_Colour = SDL_Color;
enum SDL_SWSURFACE = 0;
enum SDL_PREALLOC = 0x00000001;
enum SDL_RLEACCEL = 0x00000002;
enum SDL_DONTFREE = 0x00000004;

extern (D) auto SDL_MUSTLOCK(T)(auto ref T S)
{
    return (S.flags & SDL_RLEACCEL) != 0;
}

extern (D) auto SDL_LoadBMP(T)(auto ref T file)
{
    return SDL_LoadBMP_RW(SDL_RWFromFile(file, "rb"), 1);
}

extern (D) auto SDL_SaveBMP(T0, T1)(auto ref T0 surface, auto ref T1 file)
{
    return SDL_SaveBMP_RW(surface, SDL_RWFromFile(file, "wb"), 1);
}

//enum SDL_BlitSurface = SDL_UpperBlit;
//enum SDL_BlitScaled = SDL_UpperBlitScaled;
enum SDL_WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000u;

extern (D) auto SDL_WINDOWPOS_UNDEFINED_DISPLAY(T)(auto ref T X)
{
    return SDL_WINDOWPOS_UNDEFINED_MASK | X;
}

enum SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);

extern (D) auto SDL_WINDOWPOS_ISUNDEFINED(T)(auto ref T X)
{
    return (X & 0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK;
}

enum SDL_WINDOWPOS_CENTERED_MASK = 0x2FFF0000u;

extern (D) auto SDL_WINDOWPOS_CENTERED_DISPLAY(T)(auto ref T X)
{
    return SDL_WINDOWPOS_CENTERED_MASK | X;
}

enum SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0);

extern (D) auto SDL_WINDOWPOS_ISCENTERED(T)(auto ref T X)
{
    return (X & 0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK;
}

enum SDLK_SCANCODE_MASK = 1 << 30;

extern (D) auto SDL_SCANCODE_TO_KEYCODE(T)(auto ref T X)
{
    return X | SDLK_SCANCODE_MASK;
}

enum KMOD_CTRL = SDL_Keymod.KMOD_LCTRL | SDL_Keymod.KMOD_RCTRL;
enum KMOD_SHIFT = SDL_Keymod.KMOD_LSHIFT | SDL_Keymod.KMOD_RSHIFT;
enum KMOD_ALT = SDL_Keymod.KMOD_LALT | SDL_Keymod.KMOD_RALT;
enum KMOD_GUI = SDL_Keymod.KMOD_LGUI | SDL_Keymod.KMOD_RGUI;

extern (D) auto SDL_BUTTON(T)(auto ref T X)
{
    return 1 << (X - 1);
}

enum SDL_BUTTON_LEFT = 1;
enum SDL_BUTTON_MIDDLE = 2;
enum SDL_BUTTON_RIGHT = 3;
enum SDL_BUTTON_X1 = 4;
enum SDL_BUTTON_X2 = 5;
enum SDL_BUTTON_LMASK = SDL_BUTTON(SDL_BUTTON_LEFT);
enum SDL_BUTTON_MMASK = SDL_BUTTON(SDL_BUTTON_MIDDLE);
enum SDL_BUTTON_RMASK = SDL_BUTTON(SDL_BUTTON_RIGHT);
enum SDL_BUTTON_X1MASK = SDL_BUTTON(SDL_BUTTON_X1);
enum SDL_BUTTON_X2MASK = SDL_BUTTON(SDL_BUTTON_X2);
enum SDL_JOYSTICK_AXIS_MAX = 32767;
enum SDL_JOYSTICK_AXIS_MIN = -32768;
enum SDL_HAT_CENTERED = 0x00;
enum SDL_HAT_UP = 0x01;
enum SDL_HAT_RIGHT = 0x02;
enum SDL_HAT_DOWN = 0x04;
enum SDL_HAT_LEFT = 0x08;
enum SDL_HAT_RIGHTUP = SDL_HAT_RIGHT | SDL_HAT_UP;
enum SDL_HAT_RIGHTDOWN = SDL_HAT_RIGHT | SDL_HAT_DOWN;
enum SDL_HAT_LEFTUP = SDL_HAT_LEFT | SDL_HAT_UP;
enum SDL_HAT_LEFTDOWN = SDL_HAT_LEFT | SDL_HAT_DOWN;

extern (D) auto SDL_GameControllerAddMappingsFromFile(T)(auto ref T file)
{
    return SDL_GameControllerAddMappingsFromRW(SDL_RWFromFile(file, "rb"), 1);
}

enum SDL_TOUCH_MOUSEID = cast(Uint32) -1;
enum SDL_RELEASED = 0;
enum SDL_PRESSED = 1;
enum SDL_TEXTEDITINGEVENT_TEXT_SIZE = 32;
enum SDL_TEXTINPUTEVENT_TEXT_SIZE = 32;
enum SDL_QUERY = -1;
enum SDL_IGNORE = 0;
enum SDL_DISABLE = 0;
enum SDL_ENABLE = 1;

extern (D) auto SDL_GetEventState(T)(auto ref T type)
{
    return SDL_EventState(type, SDL_QUERY);
}

enum SDL_HAPTIC_CONSTANT = 1u << 0;
enum SDL_HAPTIC_SINE = 1u << 1;
enum SDL_HAPTIC_LEFTRIGHT = 1u << 2;
enum SDL_HAPTIC_TRIANGLE = 1u << 3;
enum SDL_HAPTIC_SAWTOOTHUP = 1u << 4;
enum SDL_HAPTIC_SAWTOOTHDOWN = 1u << 5;
enum SDL_HAPTIC_RAMP = 1u << 6;
enum SDL_HAPTIC_SPRING = 1u << 7;
enum SDL_HAPTIC_DAMPER = 1u << 8;
enum SDL_HAPTIC_INERTIA = 1u << 9;
enum SDL_HAPTIC_FRICTION = 1u << 10;
enum SDL_HAPTIC_CUSTOM = 1u << 11;
enum SDL_HAPTIC_GAIN = 1u << 12;
enum SDL_HAPTIC_AUTOCENTER = 1u << 13;
enum SDL_HAPTIC_STATUS = 1u << 14;
enum SDL_HAPTIC_PAUSE = 1u << 15;
enum SDL_HAPTIC_POLAR = 0;
enum SDL_HAPTIC_CARTESIAN = 1;
enum SDL_HAPTIC_SPHERICAL = 2;
enum SDL_HAPTIC_INFINITY = 4294967295U;
enum SDL_HINT_FRAMEBUFFER_ACCELERATION = "SDL_FRAMEBUFFER_ACCELERATION";
enum SDL_HINT_RENDER_DRIVER = "SDL_RENDER_DRIVER";
enum SDL_HINT_RENDER_OPENGL_SHADERS = "SDL_RENDER_OPENGL_SHADERS";
enum SDL_HINT_RENDER_DIRECT3D_THREADSAFE = "SDL_RENDER_DIRECT3D_THREADSAFE";
enum SDL_HINT_RENDER_DIRECT3D11_DEBUG = "SDL_RENDER_DIRECT3D11_DEBUG";
enum SDL_HINT_RENDER_LOGICAL_SIZE_MODE = "SDL_RENDER_LOGICAL_SIZE_MODE";
enum SDL_HINT_RENDER_SCALE_QUALITY = "SDL_RENDER_SCALE_QUALITY";
enum SDL_HINT_RENDER_VSYNC = "SDL_RENDER_VSYNC";
enum SDL_HINT_VIDEO_ALLOW_SCREENSAVER = "SDL_VIDEO_ALLOW_SCREENSAVER";
enum SDL_HINT_VIDEO_X11_XVIDMODE = "SDL_VIDEO_X11_XVIDMODE";
enum SDL_HINT_VIDEO_X11_XINERAMA = "SDL_VIDEO_X11_XINERAMA";
enum SDL_HINT_VIDEO_X11_XRANDR = "SDL_VIDEO_X11_XRANDR";
enum SDL_HINT_VIDEO_X11_NET_WM_PING = "SDL_VIDEO_X11_NET_WM_PING";
enum SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR";
enum SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN";
enum SDL_HINT_WINDOWS_INTRESOURCE_ICON = "SDL_WINDOWS_INTRESOURCE_ICON";
enum SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL = "SDL_WINDOWS_INTRESOURCE_ICON_SMALL";
enum SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP = "SDL_WINDOWS_ENABLE_MESSAGELOOP";
enum SDL_HINT_GRAB_KEYBOARD = "SDL_GRAB_KEYBOARD";
enum SDL_HINT_MOUSE_DOUBLE_CLICK_TIME = "SDL_MOUSE_DOUBLE_CLICK_TIME";
enum SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS = "SDL_MOUSE_DOUBLE_CLICK_RADIUS";
enum SDL_HINT_MOUSE_NORMAL_SPEED_SCALE = "SDL_MOUSE_NORMAL_SPEED_SCALE";
enum SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE = "SDL_MOUSE_RELATIVE_SPEED_SCALE";
enum SDL_HINT_MOUSE_RELATIVE_MODE_WARP = "SDL_MOUSE_RELATIVE_MODE_WARP";
enum SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH = "SDL_MOUSE_FOCUS_CLICKTHROUGH";
enum SDL_HINT_TOUCH_MOUSE_EVENTS = "SDL_TOUCH_MOUSE_EVENTS";
enum SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS";
enum SDL_HINT_IDLE_TIMER_DISABLED = "SDL_IOS_IDLE_TIMER_DISABLED";
enum SDL_HINT_ORIENTATIONS = "SDL_IOS_ORIENTATIONS";
enum SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "SDL_APPLE_TV_CONTROLLER_UI_EVENTS";
enum SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION";
enum SDL_HINT_IOS_HIDE_HOME_INDICATOR = "SDL_IOS_HIDE_HOME_INDICATOR";
enum SDL_HINT_ACCELEROMETER_AS_JOYSTICK = "SDL_ACCELEROMETER_AS_JOYSTICK";
enum SDL_HINT_TV_REMOTE_AS_JOYSTICK = "SDL_TV_REMOTE_AS_JOYSTICK";
enum SDL_HINT_XINPUT_ENABLED = "SDL_XINPUT_ENABLED";
enum SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = "SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING";
enum SDL_HINT_GAMECONTROLLERCONFIG = "SDL_GAMECONTROLLERCONFIG";
enum SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES = "SDL_GAMECONTROLLER_IGNORE_DEVICES";
enum SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT";
enum SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS";
enum SDL_HINT_JOYSTICK_HIDAPI = "SDL_JOYSTICK_HIDAPI";
enum SDL_HINT_JOYSTICK_HIDAPI_PS4 = "SDL_JOYSTICK_HIDAPI_PS4";
enum SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = "SDL_JOYSTICK_HIDAPI_PS4_RUMBLE";
enum SDL_HINT_JOYSTICK_HIDAPI_STEAM = "SDL_JOYSTICK_HIDAPI_STEAM";
enum SDL_HINT_JOYSTICK_HIDAPI_SWITCH = "SDL_JOYSTICK_HIDAPI_SWITCH";
enum SDL_HINT_JOYSTICK_HIDAPI_XBOX = "SDL_JOYSTICK_HIDAPI_XBOX";
enum SDL_HINT_ENABLE_STEAM_CONTROLLERS = "SDL_ENABLE_STEAM_CONTROLLERS";
enum SDL_HINT_ALLOW_TOPMOST = "SDL_ALLOW_TOPMOST";
enum SDL_HINT_TIMER_RESOLUTION = "SDL_TIMER_RESOLUTION";
enum SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION = "SDL_QTWAYLAND_CONTENT_ORIENTATION";
enum SDL_HINT_QTWAYLAND_WINDOW_FLAGS = "SDL_QTWAYLAND_WINDOW_FLAGS";
enum SDL_HINT_THREAD_STACK_SIZE = "SDL_THREAD_STACK_SIZE";
enum SDL_HINT_VIDEO_HIGHDPI_DISABLED = "SDL_VIDEO_HIGHDPI_DISABLED";
enum SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK";
enum SDL_HINT_VIDEO_WIN_D3DCOMPILER = "SDL_VIDEO_WIN_D3DCOMPILER";
enum SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT";
enum SDL_HINT_WINRT_PRIVACY_POLICY_URL = "SDL_WINRT_PRIVACY_POLICY_URL";
enum SDL_HINT_WINRT_PRIVACY_POLICY_LABEL = "SDL_WINRT_PRIVACY_POLICY_LABEL";
enum SDL_HINT_WINRT_HANDLE_BACK_BUTTON = "SDL_WINRT_HANDLE_BACK_BUTTON";
enum SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES = "SDL_VIDEO_MAC_FULLSCREEN_SPACES";
enum SDL_HINT_MAC_BACKGROUND_APP = "SDL_MAC_BACKGROUND_APP";
enum SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION";
enum SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION";
enum SDL_HINT_IME_INTERNAL_EDITING = "SDL_IME_INTERNAL_EDITING";
enum SDL_HINT_ANDROID_SEPARATE_MOUSE_AND_TOUCH = "SDL_ANDROID_SEPARATE_MOUSE_AND_TOUCH";
enum SDL_HINT_ANDROID_TRAP_BACK_BUTTON = "SDL_ANDROID_TRAP_BACK_BUTTON";
enum SDL_HINT_RETURN_KEY_HIDES_IME = "SDL_RETURN_KEY_HIDES_IME";
enum SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT";
enum SDL_HINT_NO_SIGNAL_HANDLERS = "SDL_NO_SIGNAL_HANDLERS";
enum SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = "SDL_WINDOWS_NO_CLOSE_ON_ALT_F4";
enum SDL_HINT_BMP_SAVE_LEGACY_FORMAT = "SDL_BMP_SAVE_LEGACY_FORMAT";
enum SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING = "SDL_WINDOWS_DISABLE_THREAD_NAMING";
enum SDL_HINT_RPI_VIDEO_LAYER = "SDL_RPI_VIDEO_LAYER";
enum SDL_HINT_VIDEO_DOUBLE_BUFFER = "SDL_VIDEO_DOUBLE_BUFFER";
enum SDL_HINT_OPENGL_ES_DRIVER = "SDL_OPENGL_ES_DRIVER";
enum SDL_HINT_AUDIO_RESAMPLING_MODE = "SDL_AUDIO_RESAMPLING_MODE";
enum SDL_HINT_AUDIO_CATEGORY = "SDL_AUDIO_CATEGORY";
enum SDL_MAX_LOG_MESSAGE = 4096;
enum SDL_STANDARD_GRAVITY = 9.80665f;
enum SDL_NONSHAPEABLE_WINDOW = -1;
enum SDL_INVALID_SHAPE_ARGUMENT = -2;
enum SDL_WINDOW_LACKS_SHAPE = -3;

extern (D) auto SDL_SHAPEMODEALPHA(T)(auto ref T mode)
{
    return mode == WindowShapeMode.ShapeModeDefault || mode == WindowShapeMode.ShapeModeBinarizeAlpha || mode == WindowShapeMode.ShapeModeReverseBinarizeAlpha;
}

extern (D) auto SDL_TICKS_PASSED(T0, T1)(auto ref T0 A, auto ref T1 B)
{
    return cast(Sint32) B - A <= 0;
}

enum SDL_MAJOR_VERSION = 2;
enum SDL_MINOR_VERSION = 0;
enum SDL_PATCHLEVEL = 9;

extern (D) auto SDL_VERSIONNUM(T0, T1, T2)(auto ref T0 X, auto ref T1 Y, auto ref T2 Z)
{
    return X * 1000 + Y * 100 + Z;
}

enum SDL_COMPILEDVERSION = SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);

extern (D) auto SDL_VERSION_ATLEAST(T0, T1, T2)(auto ref T0 X, auto ref T1 Y, auto ref T2 Z)
{
    return SDL_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z);
}

enum SDL_INIT_TIMER = 0x00000001u;
enum SDL_INIT_AUDIO = 0x00000010u;
enum SDL_INIT_VIDEO = 0x00000020u;
enum SDL_INIT_JOYSTICK = 0x00000200u;
enum SDL_INIT_HAPTIC = 0x00001000u;
enum SDL_INIT_GAMECONTROLLER = 0x00002000u;
enum SDL_INIT_EVENTS = 0x00004000u;
enum SDL_INIT_SENSOR = 0x00008000u;
enum SDL_INIT_NOPARACHUTE = 0x00100000u;
enum SDL_INIT_EVERYTHING = SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER | SDL_INIT_SENSOR;

/* Ends C function definitions when using C++ */

/*** Start of inlined file: close_code.h ***/
/**
 *  \file close_code.h
 *
 *  This file reverses the effects of begin_code.h and should be included
 *  after you finish any function and structure declarations in your headers
 */

/* Reset structure packing at previous byte alignment */

/* Compiler needs structure packing set */

/*** End of inlined file: close_code.h ***/

/* SDL_h_ */

/* vi: set ts=4 sw=4 expandtab: */
