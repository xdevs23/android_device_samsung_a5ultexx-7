# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.snapshot_enabled=1 \
	persist.radio.snapshot_timer=22 \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.no_wait_for_card=1
    rild.libargs=-d /dev/smd0 \
    persist.radio.rat_on=combine
    ro.ril.telephony.nstrings=7
    ro.telephony.default_network=9
    ro.product_ship=true
    ro.ril.transmitpower=true
    persist.radio.add_power_save=1
    persist.radio.no_wait_for_card=1
    persist.radio.apm_sim_not_pwdn=1
    persist.radio.use_se_table_only=1
    persist.radio.jbims=1
    telephony.lteOnGsmDevice=1
    ro.ril.telephony.mqanelements=6
    ro.telephony.ril.config=simactivation
    ro.multisim.set_audio_params=true

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=10

# Volume
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.vc_call_vol_steps=15 \
	ro.config.media_vol_steps=15
