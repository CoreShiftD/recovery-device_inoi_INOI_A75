#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/advan/ADVAN_TAB_V8

# Inherit from mt6789-common
include device/alldocube/mt6789-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := ADVAN_TAB_V8,8005,8004

# Init
TARGET_INIT_VENDOR_LIB := libinit_ADVAN_TAB_V8
TARGET_RECOVERY_DEVICE_MODULES := libinit_ADVAN_TAB_V8

# TWRP Configs
TW_DEVICE_VERSION := ADVAN_TAB_V8 v1.0

# Trustkernel TEE
override PLATFORM_SECURITY_PATCH := 2025-06-05
override PLATFORM_VERSION := 12

# Device Resolution
override TARGET_SCREEN_WIDTH := 1200
override TARGET_SCREEN_HEIGHT := 1920

# CPU Temp
override TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone28/temp

# Brightness
override TW_DEFAULT_BRIGHTNESS := 102
override TW_MAX_BRIGHTNESS := 255
