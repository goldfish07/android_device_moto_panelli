$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/moto/panelli

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/moto/panelli/panelli-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/panelli/overlay



# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
    $(LOCAL_PATH)/ramdisk/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/ramdisk/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/ramdisk/factory_init.usb.rc:root/factory_init.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/ramdisk/init.common_svc.rc:root/init.common_svc.rc \
    $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/ramdisk/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/ramdisk/init.mal.rc:root/init.mal.rc \
    $(LOCAL_PATH)/ramdisk/init.microtrust.rc:root/init.microtrust.rc \
    $(LOCAL_PATH)/ramdisk/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/ramdisk/init.rilproxy.rc:root/init.rilproxy.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.configfs.rc:root/init.usb.configfs.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.volte.rc:root/init.volte.rc \
    $(LOCAL_PATH)/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
    $(LOCAL_PATH)/ramdisk/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
    $(LOCAL_PATH)/ramdisk/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/ramdisk/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/ramdisk/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/ramdisk/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/ramdisk/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/ramdisk/service_contexts:root/service_contexts \
    $(LOCAL_PATH)/ramdisk/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc 


# Audio libs
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@2.0-service \
    audio.a2dp.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml


# Hardware Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml


# Media Permissions	
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml

# Audio Permissions	
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml
    




# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@2.0-service \
    audio.a2dp.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml


# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    dhcpcd.conf \
    hostapd \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf



PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    libnl_2 \
    charger_res_images \
    libion
    
# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true
    
# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service
    
# Camera HAL
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service


# FM Radio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl \
    FMRadio \
    libfmjni

# Camera
PRODUCT_PACKAGES += \
    Snap

# CM14 mtk symbols
PRODUCT_PACKAGES += \
    mtk_symbols
    

# Power
PRODUCT_PACKAGES += \
    power.mt6737m
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service
    
# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl
    
# Sensors HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    lights.mt6737m
    
# GPS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl
    
# GPS force mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.force.gps.mode=gnss
    
# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service
    
# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-impl \
    android.hardware.health@1.0-service
    
# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl
    
# Graphic HAL
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    libgralloc_extra \
    libgui_ext \
    libui_ext

# Disable adb security
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	ro.config.low_ram=false

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=cfq

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0
    
# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hw.gyroscope=false \
	persist.radio.apn_delay=5000 \
	persist.sys.media.use-awesome=false \
	media.stagefright.use-awesome=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# Keyhandler package
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# Never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)

# Device
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_panelli
PRODUCT_DEVICE := panelli
