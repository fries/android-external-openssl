LOCAL_PATH := $(call my-dir)

# build with openssl utility
#subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
#		crypto \
#		ssl \
#		apps \
#	))

# build without openssl utility
subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		crypto \
		ssl \
	))

include $(subdirs)

# static library
# =====================================================

include $(CLEAR_VARS)
LOCAL_SRC_FILES:=
LOCAL_C_INCLUDES:= 
LOCAL_WHOLE_STATIC_LIBRARIES += libcrypto-static libssl-static
LOCAL_MODULE:= libopenssl-static
include $(BUILD_STATIC_LIBRARY)
