# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi3660
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := hi3660
TARGET_BOARD_PLATFORM_GPU := mali-g71

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := loglevel=4 initcall_debug=n page_tracker=on slub_min_objects=16 androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x00078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --second_offset 0x00e88000 --tags_offset 0x07988000

# phony empty kernel to satisfy build system, but this device does not
# include a kernel in the recovery image -- flash to recovery_ramdisk
TARGET_PREBUILT_KERNEL := device/huawei/berkeley/dummykernel
# else uncomment below to build from sauce
# TARGET_KERNEL_SOURCE := kernel/huawei/berkeley
# TARGET_KERNEL_CONFIG := berkeley_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE		:= 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE	:= 4915724288
BOARD_USERDATAIMAGE_PARTITION_SIZE	:= 56547606528
BOARD_CACHEIMAGE_PARTITION_SIZE		:= 268435456
BOARD_FLASH_BLOCK_SIZE			:= 4096
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR	:= true

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB565"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_NO_SCREEN_BLANK := true
TW_DEFAULT_BRIGHTNESS := "2048"
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.gs6/lun.0/file"
TW_MAX_BRIGHTNESS := 7992
TW_DEFAULT_BRIGHTNESS := 1573
TW_INCLUDE_NTFS_3G := true
# Device crashes if /sbin/modprobe is present so this is needed:
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/vky/custombootimg.mk
# MTP will not work until we update it to support ffs
TW_EXCLUDE_MTP := true
TW_EXCLUDE_SUPERSU := true
# TW_INCLUDE_CRYPTO := true
# TW_INCLUDE_CRYPTO_FBE := true
