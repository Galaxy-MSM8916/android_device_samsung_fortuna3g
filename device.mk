#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/fortuna3g/fortuna3g-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/fortuna3g

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/fortuna3g/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml \
	$(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml
