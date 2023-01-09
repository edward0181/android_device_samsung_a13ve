#
# Copyright (C) 2020 The Android Open Source Project
# Credit to afaneh92 @ GitHub
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
#

DEVICE_PATH := device/samsung/a13ve

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6768
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

# 2nd Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_NTFS_3G := true

# Platform
TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := mt6768
TARGET_BOARD_PLATFORM_GPU := mali-g52

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64

# Boot
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_SECOND_OFFSET := 0xbff88000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_MKBOOTIMG_ARGS := \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--second_offset $(BOARD_KERNEL_SECOND_OFFSET) \
	--header_version $(BOARD_BOOT_HEADER_VERSION) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--board "SRPVD04A001" \
	--dtb $(TARGET_PREBUILT_DTB) --dtb_offset $(BOARD_DTB_OFFSET) \
	--recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)

#TARGET_KERNEL_CLANG_COMPILE := true
#TARGET_KERNEL_CONFIG := a13ve_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/a13ve

#TARGET_KERNEL_ADDITIONAL_FLAGS := \
#    HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 6417285120
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6413090816
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

# System as root
BOARD_ROOT_EXTRA_FOLDERS := cache carrier data_mirror efs keyrefuge linkerconfig metadata omr optics prism spu
BOARD_SUPPRESS_SECURE_ERASE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a13ve a13vensxx
AB_OTA_UPDATER := false

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1


# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 11

# Crypto
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false
BOARD_USES_METADATA_PARTITION := true

# TWRP specific build flags
TW_DEVICE_VERSION := Edward0181-test
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 306
TW_DEFAULT_BRIGHTNESS := 200
TW_Y_OFFSET := 50
TW_H_OFFSET := -50
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_USE_NEW_MINADBD := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_TOOLBOX := true
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_NO_SCREEN_BLANK := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# TWRP Configuration: Logd
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true