#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sweetin device
$(call inherit-product, device/xiaomi/sweetin/device.mk)

PRODUCT_DEVICE := sweetin
PRODUCT_NAME := lineage_sweetin
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K6I
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweetin-user 11 RKQ1.200826.002 V12.5.4.0.RKFINXM release-keys"

BUILD_FINGERPRINT := Redmi/sweetin/sweetin:11/RKQ1.200826.002/V12.5.4.0.RKFINXM:user/release-keys
