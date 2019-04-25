LOCAL_PATH := $(call my-dir)

ifneq ($(filter a5ltexx a5lte a5ultexx a5ulte a53g a53gxx, $(TARGET_DEVICE)),)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
