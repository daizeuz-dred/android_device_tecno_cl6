#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/tecno/CL6/device.mk)

# Inherit AxionOS common config
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionOS required
TARGET_DISABLE_EPPE := true

# Device identifier
PRODUCT_NAME := lineage_CL6
PRODUCT_DEVICE := CL6
PRODUCT_MANUFACTURER := Tecno
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := CL6

PRODUCT_GMS_CLIENTID_BASE := android-tecno

# AxionOS Device Properties
AXION_MAINTAINER := DΞΞZNUTZ
AXION_PROCESSOR := Mediatek Helio G99
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 8

# --- AxionOS Flags ---
TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_AXFX := true
TARGET_IS_LOW_RAM := false
TARGET_INCLUDES_LOS_PREBUILTS := false
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_DISABLES_LIBPERF := true

# Bypass charging
BYPASS_CHARGE_SUPPORTED := false
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/power_supply/battery/input_suspend

# High Brightness Mode
HBM_SUPPORTED := false
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# CPU Governor
PERF_GOV_SUPPORTED := false
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := false

# Doze
TARGET_NEEDS_DOZE_FIX := false
TARGET_DOZE_TAP_PULSE_SUPPORTED := false
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := false
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := false
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := false
