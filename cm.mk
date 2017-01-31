# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/cm.mk)
$(call inherit-product, device/samsung/gprimeltezt/full_gprimeltezt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gprimeltezt
PRODUCT_NAME := cm_gprimeltezt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G530MU
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung
