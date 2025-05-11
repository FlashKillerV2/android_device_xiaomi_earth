#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/earth/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Infinity Build Flags
INFINITY_MAINTAINER := FlashKillerV2
INFINITY_BUILD_TYPE := UNOFFICIAL

# Blur
TARGET_SUPPORTS_BLUR := true
# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# GMS
WITH_GMS := true
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true

# Aperture
PRODUCT_NO_CAMERA := true
# AudioFX
TARGET_SHIPS_AUDIOFX := true
#Motorola Calculator
USE_MOTO_CALCULATOR := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_HEIGHT := 1650
TARGET_SCREEN_WIDTH := 720

PRODUCT_NAME := infinity_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C

PRODUCT_SYSTEM_NAME := earth_global
PRODUCT_SYSTEM_DEVICE := earth

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="earth-user 14 UP1A.230105.007 V816.0.7.0.UCVMIXM release-keys" \
    BuildFingerprint=Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.7.0.UCVMIXM:user/release-keys
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
