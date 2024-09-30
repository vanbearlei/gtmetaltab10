#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from GT_METAL_TAB10 device
$(call inherit-product, device/goldentec/GT_METAL_TAB10/device.mk)

PRODUCT_DEVICE := GT_METAL_TAB10
PRODUCT_NAME := omni_GT_METAL_TAB10
PRODUCT_BRAND := Goldentec
PRODUCT_MODEL := GT_METAL_TAB10
PRODUCT_MANUFACTURER := goldentec

PRODUCT_GMS_CLIENTID_BASE := android-goldentec

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k62v1_64_bsp-user 12 SP1A.210812.016 1668761545 release-keys"

BUILD_FINGERPRINT := Goldentec/GT_METAL_TAB10/GT_METAL_TAB10:12/SP1A.210812.016/1668761545:user/release-keys
