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

$(call inherit-product, device/zte/msm7x27-common/common.mk)
$(call inherit-product, vendor/zte/blade/blade-vendor.mk)
$(call inherit-product-if-exists, device/zte/blade/packages.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS := device/zte/blade/overlay

PRODUCT_COPY_FILES += \
        vendor/zte/blade/proprietary/lib/libloc.so:obj/lib/libloc.so

PRODUCT_PACKAGES += \
        abtfilt \
        wlan_tool \
        wmiconfig

# Blade specific
PRODUCT_PACKAGES += \
        lights.blade \
        sensors.blade \
        BladeParts \
        gps.blade

# Power HAL
PRODUCT_PACKAGES += \
        power.msm7x27

PRODUCT_COPY_FILES += \
        device/zte/blade/prebuilt/root/init.blade.rc:root/init.blade.rc \
        device/zte/blade/prebuilt/root/init.blade.usb.rc:root/init.blade.usb.rc \
        device/zte/blade/prebuilt/root/ueventd.blade.rc:root/ueventd.blade.rc \
        device/zte/blade/prebuilt/system/usr/keylayout/blade_keypad.kl:/system/usr/keylayout/blade_keypad.kl

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        device/zte/blade/prebuilt/system/etc/init.bt.sh:/system/etc/init.bt.sh
        
# WiFi
PRODUCT_COPY_FILES += \
        device/zte/blade/prebuilt/system/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
        device/zte/blade/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
        device/zte/blade/prebuilt/system/wifi/ar6000.ko:/system/wifi/ar6000.ko \
        device/zte/blade/prebuilt/system/wifi/regcode:/system/wifi/regcode \
        device/zte/blade/prebuilt/system/wifi/data.patch.hw2_0.bin:/system/wifi/data.patch.hw2_0.bin \
        device/zte/blade/prebuilt/system/wifi/athwlan.bin.z77:/system/wifi/athwlan.bin.z77 \
        device/zte/blade/prebuilt/system/wifi/athtcmd_ram.bin:/system/wifi/athtcmd_ram.bin \
        device/zte/blade/prebuilt/system/wifi/device.bin:/system/wifi/device.bin \
        device/zte/blade/prebuilt/system/wifi/eeprom.bin:/system/wifi/eeprom.bin \
        device/zte/blade/prebuilt/system/wifi/eeprom.data:/system/wifi/eeprom.data

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
