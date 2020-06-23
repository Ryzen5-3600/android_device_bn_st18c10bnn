#
# Copyright (C) 2019-2020 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
LOCAL_PATH := device/bn/st18c7bnn
DEVICE_FOLDER := device/bn/st18c7bnn

# Build Date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_CHARACTERISTICS := tablet

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \

#Removed
#    frameworks/native/data/etc/android.hardware.microphone.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.microphone.xml \

# Ramdisk
#PRODUCT_PACKAGES += \
#    factory_init.connectivity.rc \
#    factory_init.project.rc \
#    factory_init.rc \
#    init.connectivity.rc \
#    init.modem.rc \
#    init.mt8163.rc \
#    init.project.rc \
#    init.sensor_1_0.rc \
#    meta_init.connectivity.rc \
#    meta_init.modem.rc \
#    meta_init.project.rc \
#    meta_init.rc \
#    multi_init.rc \
#    fstab.mt8163 \
#    ueventd.qcom.rc \

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Lights
PRODUCT_PACKAGES +=\
    lights.mt8163

# Power
PRODUCT_PACKAGES +=\
    power.mt8163

# Thermal
PRODUCT_PACKAGES +=\
    thermal.mt8163 \
    thermal_manager

# Audio Shim
PRODUCT_PACKAGES += \
   libaudio_shim \
   audiofix

# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    libwifi-hal-mt66xx

# Sensor
PRODUCT_PACKAGES += \
    libsensorndkbridge

# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.mt8163 \
    audio.usb.default \
    audio.a2dp.default \
    audio_policy.stub \
    audio.r_submix.default \
    libaudio-resampler \
    libaudioroute \
    libtinyalsa \
    libalsautils \
    libtinycompress \
    libtinyxml \
    tinymix \
    tinypcminfo \
    tinycap \
    tinyplay

# EGL
PRODUCT_PACKAGES += \
  libGLES_android

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# etc
PRODUCT_PACKAGES += \
    libion \
    libcap 

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    libnl_2 \
    com.android.future.usb.accessory

# Bluetooth
PRODUCT_PACKAGES += \
    libbluetooth_mtk \
    libbt-vendor 


# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt8163:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt8163 \
    $(LOCAL_PATH)/rootdir/init.mt8163.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt8163.rc \
    $(LOCAL_PATH)/rootdir/init.mt8163.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt8163.usb.rc \
    $(LOCAL_PATH)/rootdir/factory_init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/factory_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/factory_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/factory_init.rc \
    $(LOCAL_PATH)/rootdir/init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.project.rc \
    $(LOCAL_PATH)/rootdir/init.sensor_1_0.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.sensor_1_0.rc \
    $(LOCAL_PATH)/rootdir/meta_init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.rc \
    $(LOCAL_PATH)/rootdir/multi_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/multi_init.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/fstab.enableswap:root/fstab.enableswap \
    $(LOCAL_PATH)/rootdir/init.mt8163.usb.rc:root/init.mt8163.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt8163.rc:root/init.recovery.mt8163.rc

#    $(LOCAL_PATH)/rootdir/ueventd.mt8163.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc \
# Libshims
PRODUCT_PACKAGES += \
     libshim_asp \
     libshim_egl \
     libshim_gui \
     libshim_camera \
     libshim_sensor \
     libshim_protobuf \
     libshim_dha \
     libshim_drm 

# Hidl
include $(LOCAL_PATH)/hidl.mk

# System Prop
include $(LOCAL_PATH)/vendor_prop.mk


# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# call hwui memory config
#$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Inherit vendor
$(call inherit-product, vendor/bn/st18c7bnn/st18c7bnn-vendor.mk)
