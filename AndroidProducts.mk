#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_msm8937.mk \
    $(LOCAL_DIR)/twrp_msm8937_4_19.mk

COMMON_LUNCH_CHOICES := \
    twrp_msm8937-user \
    twrp_msm8937-userdebug \
    twrp_msm8937-eng \
    twrp_msm8937_4_19-user \
    twrp_msm8937_4_19-userdebug \
    twrp_msm8937_4_19-eng
