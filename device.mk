#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/a5ultexx/a5ultexx-vendor-blobs.mk)

# Inherit from common
$(call inherit-product, device/samsung/a5ultexx/common.mk)

LOCAL_PATH := device/samsung/a5ultexx
