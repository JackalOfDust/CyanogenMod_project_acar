#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

include device/acar/bcm21553-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_PLATFORM := bcm21553
TARGET_BOOTLOADER_BOARD_NAME := acar
TARGET_OTA_ASSERT_DEVICE := acar,Vodafone_Smart_II_gsm

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 5120000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5120000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 134144000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10854400
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_RECOVERY_INITRC := device/alcatel/acar/recovery.rc
BOARD_LDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/alcatel/acar/recovery/recovery_ui.c

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/alcatel/bcm21553-common/prebuilt/kernel

## Enable if you build a kernel, then disable the prebuilt kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_acar_defconfig
