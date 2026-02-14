LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

DEVICE_PATH := device/Hisense/NOVA72671

# 设备信息
PRODUCT_DEVICE := NOVA72671
PRODUCT_NAME := VIDAA_TV
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := VIDAA_TV
PRODUCT_MANUFACTURER := Hisense
PRODUCT_CHARACTERISTICS := tv

# ABI
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# 屏幕
TARGET_SCREEN_DENSITY := 320
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# 拷贝 recovery 文件
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:$(TARGET_RECOVERY_ROOT_OUT)/etc/recovery.fstab \
    $(DEVICE_PATH)/recovery/root/init.recovery.n00010.rc:$(TARGET_RECOVERY_ROOT_OUT)/init.recovery.n00010.rc
    # 内核模块
PRODUCT_COPY_FILES += \
    $(wildcard $(DEVICE_PATH)/lib/modules/*.ko):$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/ \
    $(DEVICE_PATH)/lib/modules/tcon_data.bin:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/tcon_data.bin


# 属性
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.treble.enabled=true
