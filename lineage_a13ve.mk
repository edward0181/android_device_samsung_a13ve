# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a13ve device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a13ve
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a13ve
PRODUCT_MODEL := SM-A137F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a13ve
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a13vensxx-user 13 TP1A.220624.014 A137FXXU1BVL1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a13vensxx/a13ve:12/SP1A.210812.016/A137FXXU1BVL1:user/release-keys
