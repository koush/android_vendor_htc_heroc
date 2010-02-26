LOCAL_PATH := $(call my-dir)

# Use PRODUCT_COPY_FILES to override the build target.
PRODUCT_COPY_FILES += $(LOCAL_PATH)/proprietary/libopencorehw.so:/system/lib/libopencorehw.so

include $(CLEAR_VARS)
LOCAL_MODULE := libopencorehw.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
#include $(BUILD_PREBUILT)
