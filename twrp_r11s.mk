#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from r11s device
$(call inherit-product, device/samsung/r11s/device.mk)

PRODUCT_DEVICE := r11s
PRODUCT_NAME := twrp_r11s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S711B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r11sxxx-user 12 SP1A.210812.016 S711BXXS2CXD1 release-keys"

BUILD_FINGERPRINT := samsung/r11sxxx/r11s:12/SP1A.210812.016/S711BXXS2CXD1:user/release-keys
