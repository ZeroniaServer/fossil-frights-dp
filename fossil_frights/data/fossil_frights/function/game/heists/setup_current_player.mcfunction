execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
tag @s remove ff_in_queue
tag @s remove ff_trap_place_pending
tag @s remove ff_join_spectator_zone
tag @s remove ff_forced_spectate
tag @s remove ff_camera_remote_active
tag @s remove ff_settings_spectator_deny
tag @s remove ff_settings_music_off
tag @s remove ff_muted_chat
tag @s remove ff_settings_chat_hidden
tag @s remove ff_settings_speedrun_show
gamemode adventure @s
attribute @s minecraft:scale base set 1
function fossil_frights:player/protection_disable
clear @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:instant_health 100 0 true
effect give @s minecraft:saturation infinite 255 true
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_bat_bug_timer 0
scoreboard players set @s ff_bat_bug_bar 0
scoreboard players set @s ff_trap_selected 0
scoreboard players set @s ff_trap_input_delay 0
scoreboard players set @s ff_trap_warn 0
scoreboard players set @s ff_trap_invalid 0
scoreboard players set @s ff_trap_pickup_feedback 0
scoreboard players set @s ff_trap_no_pickup_feedback 0
scoreboard players set @s ff_trap_glow_phase 0
scoreboard players set @s ff_trap_glow_timer 0
scoreboard players set @s ff_trap_glow_cooldown 0
scoreboard players set @s ff_trap_freeze_phase 0
scoreboard players set @s ff_trap_freeze_timer 0
scoreboard players set @s ff_trap_freeze_cooldown 0
scoreboard players set @s ff_trap_antigravity_phase 0
scoreboard players set @s ff_trap_antigravity_timer 0
scoreboard players set @s ff_trap_antigravity_cooldown 0
scoreboard players set @s ff_trap_jelly_phase 0
scoreboard players set @s ff_trap_jelly_timer 0
scoreboard players set @s ff_trap_jelly_cooldown 0
scoreboard players set @s ff_trap_explosive_phase 0
scoreboard players set @s ff_trap_explosive_timer 0
scoreboard players set @s ff_trap_explosive_cooldown 0
scoreboard players set @s ff_speedrun_delta 0
scoreboard players set @s ff_speedrun_sign 0
title @s subtitle ""
title @s actionbar ""
