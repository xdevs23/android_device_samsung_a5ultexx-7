# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy A5 2015

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 720
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common HavocOS stuff.
$(call inherit-product, vendor/havoc/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_GMS_CLIENTID_BASE := android-samsung
