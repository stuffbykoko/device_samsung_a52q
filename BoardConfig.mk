#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a52q

include device/samsung/sm7125-common/BoardConfigCommon.mk

# Kernel
KERNEL_DEFCONFIG        := vendor/pixelos-a52q_defconfig
BOARD_NAME                  := SRPTH31C002

# Display
TARGET_SCREEN_DENSITY := 420

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a52q

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
