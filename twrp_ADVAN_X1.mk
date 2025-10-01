#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from ADVAN_X1 device
$(call inherit-product, device/advan/ADVAN_X1/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_ADVAN_X1
PRODUCT_DEVICE := ADVAN_X1
PRODUCT_BRAND := ADVAN
PRODUCT_MODEL := 6781
PRODUCT_MANUFACTURER := ADVAN

PRODUCT_GMS_CLIENTID_BASE := android-advan
