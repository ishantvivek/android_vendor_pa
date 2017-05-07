# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_js01ltedcm,$(TARGET_PRODUCT))

$(call inherit-product, vendor/pa/main.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/js01ltedcm/full_js01ltedcm.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8974

PRODUCT_NAME := pa_js01ltedcm
BOARD_VENDOR := samsung
PRODUCT_DEVICE := js01ltedcm

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=SC-02F PRODUCT_NAME=SC-02F

endif
