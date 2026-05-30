#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Inherit from CL6 device
$(call inherit-product, device/tecno/CL6/device.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_CL6
PRODUCT_DEVICE := CL6
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CL6

PRODUCT_GMS_CLIENTID_BASE := android-transsion
PRODUCT_SYSTEM_NAME := CL6-OP
PRODUCT_SYSTEM_DEVICE := CL6
    
BUILD_FINGERPRINT := TECNO/CL6-OP/TECNO-CL6:12/SP1A.210812.016/240805V2125:user/release-keys

PERF_ANIM_OVERRIDE := true
TARGET_DISABLE_EPPE := true

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
