#
# 这是：twrp_NOVA72671.mk
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# 设备基本信息
TARGET_COPY_OUT_VENDOR := vendor
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
PRODUCT_DEVICE := NOVA72671
PRODUCT_NAME := twrp_NOVA72671
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := VIDAA_TV
PRODUCT_MANUFACTURER := Hisense
PRODUCT_CHARACTERISTICS := tv

# 屏幕密度
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_DENSITY := 320

# TWRP 基础特性
TW_DEFAULT_LANGUAGE := zh_CN
TW_EXTRA_LANGUAGES := true

