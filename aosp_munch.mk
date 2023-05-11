#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/munch/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Rom Specific Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

# VoidUI Maintainer Flags
VOID_MAINTAINER := decoder
CUSTOM_BUILD_TYPE := BETA


PRODUCT_NAME := aosp_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.1.0.TLMMIXM:user/release-keys
