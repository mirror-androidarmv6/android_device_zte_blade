#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Use the non-open-source parts, if they're present
include device/zte/msm7x27-common/BoardConfigCommon.mk
include vendor/zte/blade/BoardConfigVendor.mk

# Kernel and target stuff
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/blade/recovery/recovery_kernel
TARGET_RECOVERY_INITRC := device/zte/blade/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/zte/blade/recovery/recovery.fstab
TARGET_KERNEL_SOURCE := kernel/zte/msm7x27-blade
TARGET_KERNEL_CONFIG := cyanogen_blade_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=blade console=null
TARGET_BOOTLOADER_NAME := blade
TARGET_OTA_ASSERT_DEVICE := blade

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
# BOARD_WLAN_DEVICE := wlan0
BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME := ar6000
WIFI_DRIVER_MODULE_ARG := "ifname=wlan0 fwmode=1"

# Wifi Softap
BOARD_WLAN_NO_FWRELOAD := true
BOARD_HAVE_SAMSUNG_WIFI : true
WIFI_AP_DRIVER_MODULE_ARG := "ifname=athap0 fwmode=2"
WIFI_AP_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
WIFI_AP_DRIVER_MODULE_NAME := ar6000
WIFI_AP_FIRMWARE_LOADER := ""

# Wi-Fi Hotspot
BOARD_HAVE_LEGACY_HOSTAPD := true
BOARD_HOSTAPD_NO_ENTROPY := true

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/blade/bluetooth

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_USES_QCOM_LIBRPC := true

# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "recovery"
# mtd1: 00500000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 00200000 00020000 "cache"
# mtd5: 08a00000 00020000 "system"
# mtd6: 13ba0000 00020000 "userdata"
# mtd7: 00020000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x11e4b400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x13ba0000
BOARD_FLASH_BLOCK_SIZE := 131072
