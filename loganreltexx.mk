# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Also get non-open-source specific aspects
$(call inherit-product, vendor/samsung/loganreltexx/loganreltexx-vendor.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/loganreltexx/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
    #frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    #frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    #frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Genlock is needed for camera blob
PRODUCT_PACKAGES += \
    libgenlock

# NFC packages
#PRODUCT_PACKAGES += \
    #nfc_nci.pn54x.default \
    #NfcNci \
    #Tag \
    #com.android.nfc_extras

# NFCEE access control
#PRODUCT_COPY_FILES += \
   #$(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# NFC configuration
#PRODUCT_COPY_FILES += \
    #$(LOCAL_PATH)/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    #$(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Media Profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_codecs_google_performance.xml:system/etc/media_codecs_google_performance.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    $(LOCAL_PATH)/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    $(LOCAL_PATH)/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    $(LOCAL_PATH)/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/keylayout/cyttsp4_btn.kl:system/usr/keylayout/cyttsp4_btn.kl \
    $(LOCAL_PATH)/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
    $(LOCAL_PATH)/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.power.rc:root/init.qcom.power.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.power.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# Etc scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# GPS/location security configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/sec_config:system/etc/sec_config

# Prima opensource driver files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/prima/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# GPS HAL
PRODUCT_PACKAGES += \
    gps.msm8960 \
    gps.conf \
    sap.conf

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    qcom.fmradio

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# F2FS
PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs

# Shims
PRODUCT_PACKAGES += \
    libshim_camera \
    libshim_ril

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Camera
PRODUCT_PACKAGES += \
    Snap

# Voice processing
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing
    
# Ubuntu Overlay Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:system/etc/init_hcismd_up.sh \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/setupusb:system/halium/usr/share/usbinit/setupusb \
    $(LOCAL_PATH)/ubuntu/mtp-state.conf:system/halium/etc/init/mtp-state.conf \
    $(LOCAL_PATH)/ubuntu/mtp-server.conf:system/halium/usr/share/upstart/sessions/mtp-server.conf
    
# telepathy-ofono quirks, ril selection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary_output \
    ro.t-o.quirk.forcesource=source.primary_input \
    ril.device=samsung-ril

# call common loganre system props
$(call inherit-product, device/samsung/loganreltexx/system_prop.mk)

# call common msm8930
$(call inherit-product, device/samsung/msm8930-common/msm8930.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
