#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, packages/services/Car/car_product/build/car.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, device/lineage/car/lineage_car_vendor.mk)
$(call inherit-product, vendor/lineage/config/common_car.mk)

# Inherit from device
$(call inherit-product, device/virt/virtio_x86_64_car/device.mk)

PRODUCT_NAME := lineage_virtio_x86_64_car
PRODUCT_DEVICE := virtio_x86_64_car
PRODUCT_BRAND := VirtIO
PRODUCT_MANUFACTURER := VirtIO
PRODUCT_MODEL := VirtIO x86_64

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)

# Workaround build fingerprint too long
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="virtio_x86_64_car-eng 14 AP2A.240705.005 0 test-keys"

BUILD_FINGERPRINT := virtio/virtio_x86_64_car/virtio_x86_64_car:14/AP2A.240705.005/0:eng/test-keys
