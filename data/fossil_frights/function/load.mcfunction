scoreboard objectives add ff_lock_look dummy
scoreboard objectives add ff_scan dummy
scoreboard objectives add ff_key_cooldown dummy
scoreboard objectives add ff_key_cd_cfg dummy
scoreboard objectives add ff_key_bar dummy
scoreboard objectives add ff_key_anim dummy
scoreboard objectives add ff_lock_flash dummy
scoreboard objectives add ff_lock_click_ttl dummy
scoreboard objectives add ff_hazard_active dummy
scoreboard objectives add ff_hazard_rng dummy
scoreboard objectives add ff_gate_timer dummy
scoreboard players set $key ff_key_cd_cfg 600
scoreboard players set #twenty ff_key_cd_cfg 20
team add ff_lock_flash_green
team modify ff_lock_flash_green color green
advancement revoke @a only fossil_frights:lock_click
function fossil_frights:hazard/load
