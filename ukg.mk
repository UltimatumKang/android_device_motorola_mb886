#
# Copyright (C) 2012 The CyanogenMod Project
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

# name
PRODUCT_RELEASE_NAME := mb886

# device
$(call inherit-product-if-exists, device/motorola/mb886/full_mb886.mk)

# gsm
$(call inherit-product, vendor/ukg/config/common_gsm.mk)

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

# phone
$(call inherit-product, vendor/ukg/config/common_phone.mk)

# products
PRODUCT_DEVICE := mb886
PRODUCT_BRAND := Motorola
PRODUCT_NAME := ukg_mb886
PRODUCT_MODEL := Atrix HD
PRODUCT_MANUFACTURER := Motorola
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=ukg.mb886.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_BRAND=motorola \
PRODUCT_NAME=mb886_att \
BUILD_PRODUCT=qinara \
BUILD_FINGERPRINT=motorola/MB886_att/qinara:4.1.1/9.8.0Q-97_MB886_FFW-20/27:user/release-keys


# hybrid
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
	vendor/ukg/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip

