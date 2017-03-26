#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltezt/gprimeltezt-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltezt

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimeltezt/overlay

# Configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermal-engine-8916.conf:system/etc/thermal-engine-8916.conf

# Audio configuration
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml \
	$(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

#NFC
NXP_CHIP_TYPE := 1
#PRODUCT_PACKAGES += \
#	nfc_nci.pn54x.msm8916

# NFC prebuilt files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/route.xml:system/etc/param/route.xml \
	$(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530MU \
	ro.product.device=gprimeltezt

