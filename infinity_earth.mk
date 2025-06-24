#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ice device
$(call inherit-product, device/xiaomi/earth/device.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C
PRODUCT_SYSTEM_NAME := earth_global
PRODUCT_SYSTEM_DEVICE := earth
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Disable OMX Service
TARGET_SUPPORTS_OMX_SERVICE := false

# Boot animation resolution, choose from 480, 720, 1080, 1440.
# Default is 1080
TARGET_BOOT_ANIMATION_RES := 720

# InfinityX Flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := FlashKillerV2
TARGET_SUPPORTS_BLUR := false
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
USE_MOTO_CALCULATOR := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "earth-user 14 UP1A.230105.007 V816.0.2.0.UCVMIXM release-keys") \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    BuildFingerprint=Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.2.0.UCVMIXM:user/release-keys
    SystemDevice=earth \
    SystemName=earth_global
