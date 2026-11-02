execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if predicate fossil_frights:player/is_playing_parkour run function fossil_frights:lobby_games/parkour/end
execute if predicate fossil_frights:player/is_playing_temple_run run function fossil_frights:lobby_games/temple_run/end
execute if predicate fossil_frights:player/is_playing_ant_fight run function fossil_frights:lobby_games/ant_fight/end
function fossil_frights:lobby_games/stop_all
function fossil_frights:cameras/clear_posteffect
tag @s remove ff_trap_place_pending
tag @s remove ff_join_spectator_zone
tag @s remove ff_forced_spectate
tag @s remove ff_camera_remote_active
gamemode adventure @s
attribute @s minecraft:scale base reset
function fossil_frights:player/protection_disable
clear @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:instant_health 100 0 true
effect give @s minecraft:saturation infinite 255 true
scoreboard players reset @s ff_key_cooldown
scoreboard players set @s ff_trap_selected 0
scoreboard players set @s ff_trap_input_delay 0
scoreboard players reset @s ff_trap_pending_ticks
scoreboard players reset @s ff_trap_glow_phase
scoreboard players reset @s ff_trap_glow_timer
scoreboard players reset @s ff_trap_glow_cooldown
scoreboard players reset @s ff_trap_freeze_phase
scoreboard players reset @s ff_trap_freeze_timer
scoreboard players reset @s ff_trap_freeze_cooldown
scoreboard players reset @s ff_trap_antigravity_phase
scoreboard players reset @s ff_trap_antigravity_timer
scoreboard players reset @s ff_trap_antigravity_cooldown
scoreboard players reset @s ff_trap_jelly_phase
scoreboard players reset @s ff_trap_jelly_timer
scoreboard players reset @s ff_trap_jelly_cooldown
scoreboard players reset @s ff_trap_explosive_phase
scoreboard players reset @s ff_trap_explosive_timer
scoreboard players reset @s ff_trap_explosive_cooldown
scoreboard players set @s ff_speedrun_delta 0
scoreboard players set @s ff_speedrun_sign 0
title @s subtitle ""
function fossil_frights:player/actionbar/clear
