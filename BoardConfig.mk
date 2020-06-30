WITHOUT_CHECK_API := true
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/moto/panelli/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := mt6737m

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6737m

# kernel
ARCH := arms
TARGET_ARCH := arm
KERNEL_ARCH := arm
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_TAGS_OFFSET := 0xE000000
TARGET_KERNEL_CONFIG := panelli_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_SOURCE := kernel/moto/panelli
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive androidboot.selinux=disabled 
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin



# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4698144768
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true


# Audio
AUDIO_POLICY_TEST := true
BOARD_HAVE_BLUETOOTH := true
HAVE_SRSAUDIOEFFECT_FEATURE := true
NATIVE_AUDIO_PREPROCESS_ENABLE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/moto/panelli/bluetooth

TARGET_LDPRELOAD += mtk_symbols.so


# HW
BOARD_USES_MTK_HARDWARE := true


# HIDL
DEVICE_MANIFEST_FILE := device/moto/panelli/manifest.xml

# Include 
TARGET_SPECIFIC_HEADER_PATH := device/moto/panelli/include


# Display
BOARD_EGL_CFG := /vendor/moto/panelli/vendor/lib/egl/egl.cfg
USE_OPENGL_RENDERER:=true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so


# Camera
TARGET_USES_NON_TREBLE_CAMERA := true
TARGET_LD_SHIM_LIBS += \
	/system/vendor/lib/hw/camera.mt6737m.so

# RIL
BOARD_RIL_CLASS := ../../../device/moto/panelli/ril/

# build.prop
TARGET_SYSTEM_PROP := device/moto/panelli/system.prop

# Sepolicy
BOARD_SEPOLICY_DIRS := \
       device/moto/panelli/sepolicy

# Lineage Charger
WITH_LINEAGE_CHARGER := false

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# SW Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Moto_panelli,Moto panelli,panelli,panelli

BOARD_DISABLE_HW_ID_MATCH_CHECK := true

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Recovery
BOARD_HAS_DOWNLOAD_MODE := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/moto/panelli/ramdisk/recovery.fstab
