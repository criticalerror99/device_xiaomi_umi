LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := lights.xiaomi_kona
LOCAL_MODULE_PATH_32 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/lib
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/lib64
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INSTALLED_MODULE_STEM := lights.kona.so

LOCAL_CFLAGS := -DLOG_TAG=\"qdlights\"
LOCAL_CLANG  := true

LOCAL_SRC_FILES := \
    lights.c

LOCAL_SHARED_LIBRARIES := \
    liblog

LOCAL_HEADER_LIBRARIES := \
    libhardware_headers

include $(BUILD_SHARED_LIBRARY)
