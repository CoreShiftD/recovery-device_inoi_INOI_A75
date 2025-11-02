#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from ADVAN_TAB_V8 device
$(call inherit-product, device/advan/ADVAN_TAB_V8/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_ADVAN_TAB_V8
PRODUCT_DEVICE := ADVAN_TAB_V8
PRODUCT_BRAND := ADVAN
PRODUCT_MODEL := 8004
PRODUCT_MANUFACTURER := ADVAN

PRODUCT_GMS_CLIENTID_BASE := android-advan

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ADVAN_TAB_V8 \
    PRIVATE_BUILD_DESC="ADVAN/ADVAN_TAB_V8/ADVAN_TAB_V8:14/UP1A.231005.007/1739868894:user/release-keys"