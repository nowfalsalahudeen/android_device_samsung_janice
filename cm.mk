# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-I9070

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# If the boot animation is not automatically selected, we chose it here :)

PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip


# Inherit device configuration
$(call inherit-product, device/samsung/janice/full_janice.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := janice
PRODUCT_NAME := cm_janice
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9070
PRODUCT_MANUFACTURER := samsung
TARGET_CPU_VARIANT := cortex-a9

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=GT-I9070
