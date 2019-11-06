$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/moto/panelli

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/moto/panelli/panelli-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/panelli/overlay

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/ramdisk/init.microtrust.rc:root/init.microtrust.rc \
    $(LOCAL_PATH)/ramdisk/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/ramdisk/init.mt6735.power.rc:root/init.mt6735.power.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.mt6735.rc:root/ueventd.mt6735.rc \


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
    


# Wifi [ETC]
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf 

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:vendor/etc/bluetooth/auto_pair_devlist.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.debug:vendor/etc/bluetooth/bt_stack.conf.debug \
    $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:vendor/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:vendor/etc/bluetooth/bt_stack.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.sqc:vendor/etc/bluetooth/bt_stack.conf.sqc



# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/telephony/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/telephony/spn-conf.xml:system/etc/spn-conf.xml


# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/init.cccifsd.rc:vendor/etc/init/init.cccifsd.rc \
    $(LOCAL_PATH)/configs/init/init.cccimdinit.rc:vendor/etc/init/init.cccimdinit.rc \
    $(LOCAL_PATH)/configs/init/init.thermal_manager.rc:vendor/etc/init/init.thermal_manager.rc \
    $(LOCAL_PATH)/configs/init/md_ctrl.rc:vendor/etc/init/md_ctrl.rc \
    $(LOCAL_PATH)/configs/init/mtk_agpsd.rc:vendor/etc/init/mtk_agpsd.rc \
    $(LOCAL_PATH)/configs/init/muxreport.rc:vendor/etc/init/muxreport.rc \
    $(LOCAL_PATH)/configs/init/rild.rc:vendor/etc/init/rild.rc \


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
    libwifi-hal-mt66xx \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    wifilogd \
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
    
# Doze
PRODUCT_PACKAGES += MeizuDoze

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true
    
# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbluetooth_jni \
    bluetooth.default \
    libbt-vendor

# Camera HAL
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.device@1.0 \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.provider@2.4 \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.common@1.0 \
    


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
    power.default \
    android.hardware.power@1.0-impl \
    vendor.lineage.power@1.0-impl
    
# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.mediatek

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

# For userdebug builds
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	persist.sys.root_access=1 \
	persist.service.adb.enable=1

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
	persist.sys.usb.config=mtp,adb


# USB
PRODUCT_PACKAGES += \
	android.hardware.usb@1.0-service

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
