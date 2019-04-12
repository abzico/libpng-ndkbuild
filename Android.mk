LOCAL_PATH := $(call my-dir)

###################################
#
# shared library
#
##################################

include $(CLEAR_VARS)

LOCAL_MODULE := png

LOCAL_SRC_FILES := png.c \
	pngerror.c \
	pngget.c \
	pngmem.c \
	pngpread.c \
	pngread.c \
	pngrio.c \
	pngrtran.c \
	pngrutil.c \
	pngset.c \
	pngtest.c \
	pngtrans.c \
	pngwio.c \
	pngwrite.c \
	pngwtran.c \
	pngwutil.c \
	arm/arm_init.c \
	arm/filter_neon.S \
	arm/filter_neon_intrinsics.c \
	arm/palette_neon_intrinsics.c

LOCAL_CFLAGS :=
LOCAL_LDFLAGS := -lz
LOCAL_EXPORT_LDLIBS := $(LOCAL_LDFLAGS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)

###################################
#
# static library
#
##################################
include $(CLEAR_VARS)

LOCAL_MODULE := png_static
LOCAL_MODULE_FILENAME := libpng

LOCAL_LDFLAGS :=

include $(BUILD_STATIC_LIBRARY)
