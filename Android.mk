LOCAL_PATH := $(call my-dir)

ifneq ($(filter a5ltexx a5lte a5ultexx a5ulte a53g a53gxx, $(TARGET_DEVICE)),)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE := InputDisabler
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

endif
