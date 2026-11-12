#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts6lwifi device
$(call inherit-product, device/samsung/gts6lwifi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_gts6lwifi
PRODUCT_DEVICE := gts6lwifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T860
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gts6lwifixx-user 12 SP2A.220305.013 T860XXU5DXJ1 release-keys" \
    BuildFingerprint=samsung/gts6lwifixx/gts6lwifi:11/RP1A.200720.012/T860XXU5DXJ1:user/release-keys \
    DeviceProduct=gts6lwifixx \
    SystemName=gts6lwifixx
