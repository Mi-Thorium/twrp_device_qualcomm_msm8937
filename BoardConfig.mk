#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mithorium-common
include device/xiaomi/mithorium-common/BoardConfigCommon.mk

DEVICE_PATH := device/qualcomm/msm8937
USES_DEVICE_QUALCOMM_MSM8937 := true

# Kernel
ifeq ($(TARGET_KERNEL_VERSION),4.19)
TARGET_PREBUILT_KERNEL := device/qualcomm/kernel-msm8937/msm8937_4_19/Image.gz-dtb
else
TARGET_PREBUILT_KERNEL := device/qualcomm/kernel-msm8937/msm8937/Image.gz-dtb
endif

# Partitions
BOARD_USES_METADATA_PARTITION := true

# Partitions - dynamic
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3221225472
BOARD_SUPER_PARTITION_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_CUST_DEVICE_SIZE) + $(BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE) )

BOARD_SUPER_PARTITION_GROUPS := msm8937_dynpart
BOARD_MSM8937_DYNPART_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304 )
BOARD_MSM8937_DYNPART_PARTITION_LIST := system system_ext product vendor odm

# Ramdisk
BOARD_RECOVERYIMAGE_MAX_RAMDISK_SIZE := 20971520
BOARD_RAMDISK_USE_LZMA := true
LZMA_RAMDISK_TARGETS := recovery

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

# TWRP - Crypto - FBE
ifeq ($(TARGET_KERNEL_VERSION),4.19)
TW_USE_FSCRYPT_POLICY := 2
endif
