#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/a52q/device.mk)

TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_BUILD_GAPPS := true

# Exclude QCOM powerhal manifest
TARGET_PROVIDES_POWERHAL := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := yaap_a52q
PRODUCT_DEVICE := a52q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A525F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a52qnsxx-user 11 RP1A.200720.012 A525FXXSBFYC1 release-keys" \
    BuildFingerprint=samsung/a52qnsxx/a52q:11/RP1A.200720.012/A525FXXSBFYC1:user/release-keys

# Security patch
VENDOR_SECURITY_PATCH := 2025-03-01
