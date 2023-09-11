#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := msm8937

# Kernel
TARGET_KERNEL_VERSION := 4.9

# Inherit from msm8937 device
$(call inherit-product, device/qualcomm/msm8937/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
BOARD_VENDOR := Qualcomm
PRODUCT_BRAND := Qualcomm
PRODUCT_MODEL := MSM8937
PRODUCT_MANUFACTURER := Qualcomm
TARGET_VENDOR := Qualcomm
