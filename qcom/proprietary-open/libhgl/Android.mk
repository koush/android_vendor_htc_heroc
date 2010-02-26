LOCAL_PATH:= $(call my-dir)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libhgl.so:/system/lib/libhgl.so \

include $(CLEAR_VARS)
LOCAL_MODULE := libhgl.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
#include $(BUILD_PREBUILT)

# not on hero
#PRODUCT_COPY_FILES += \
#        $(LOCAL_PATH)/proprietary/set_grp_id:system/bin/set_grp_id
