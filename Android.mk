LOCAL_PATH := $(call my-dir)

XCB_SOURCES := \
    xcb/bigreq.c		\
    xcb/composite.c	\
    xcb/damage.c		\
    xcb/dpms.c		\
    xcb/dri2.c		\
    xcb/glx.c			\
    xcb/randr.c		\
    xcb/record.c		\
    xcb/render.c		\
    xcb/res.c			\
    xcb/screensaver.c	\
    xcb/shape.c		\
    xcb/shm.c			\
    xcb/sync.c		\
    xcb/xcb_auth.c	\
    xcb/xcb_conn.c	\
    xcb/xcb_ext.c		\
    xcb/xcb_in.c		\
    xcb/xcb_list.c	\
    xcb/xcb_out.c		\
    xcb/xcb_util.c	\
    xcb/xcb_xid.c		\
    xcb/xc_misc.c		\
    xcb/xevie.c		\
    xcb/xf86dri.c		\
    xcb/xfixes.c		\
    xcb/xinerama.c	\
    xcb/xinput.c		\
    xcb/xkb.c			\
    xcb/xprint.c		\
    xcb/xproto.c		\
    xcb/xselinux.c	\
    xcb/xtest.c		\
    xcb/xv.c			\
    xcb/xvmc.c

include $(CLEAR_VARS)

LOCAL_MODULE    := libxcb
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)	\
	$(LOCAL_PATH)/xcb \
	external/libXau/include	\
	external/xorgproto/include
LOCAL_CFLAGS    := -DHAVE_CONFIG_H -std=gnu99
LOCAL_LDFLAGS   := 
LOCAL_SRC_FILES := $(XCB_SOURCES)
LOCAL_STATIC_LIBRARIES := libXau libpthread-stubs

include $(BUILD_STATIC_LIBRARY)
