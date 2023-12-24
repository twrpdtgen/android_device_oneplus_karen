#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from karen device
$(call inherit-product, device/oneplus/karen/device.mk)

PRODUCT_DEVICE := karen
PRODUCT_NAME := omni_karen
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2401
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2401IND-user 11 RP1A.200720.011 1627567766349 release-keys"

BUILD_FINGERPRINT := OnePlus/CPH2401IND/OP515BL1:11/RP1A.200720.011/1627567766349:user/release-keys
