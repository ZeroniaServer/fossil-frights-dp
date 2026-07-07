function fossil_frights:game/heists/clear_join_pads
function fossil_frights:game/heists/oxidized_bars/clear
function fossil_frights:game/heists/capture_point/clear
function fossil_frights:game/heists/loot/reset_basement_lava_lock
function fossil_frights:game/heists/loot/reset
kill @e[type=minecraft:armor_stand,tag=ff_loot_compass_target]
scoreboard players set $heist_compass_available ff_compass 0
scoreboard players set $heist_compass_available_prev ff_compass -1
scoreboard players set $heist_compass_available_hash ff_compass 0
scoreboard players set $heist_compass_available_hash_prev ff_compass -1
scoreboard players set $heist_compass_counting ff_compass 0
function fossil_frights:game/heists/loot/high/cleanup
schedule clear fossil_frights:game/heists/start_reveal/next
schedule clear fossil_frights:game/heists/start_reveal/goodluck
schedule clear fossil_frights:game/heists/start_reveal/go
kill @e[type=minecraft:marker,tag=ff_ice_cannon]
kill @e[type=minecraft:block_display,tag=ff_ice_cannon_block]
kill @e[type=minecraft:block_display,tag=ff_ice_freeze]
kill @e[type=minecraft:marker,tag=ff_trap]
tp @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] 0 -200 0
kill @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy]
execute as @a[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
effect clear @a[team=ff_thief] minecraft:invisibility
effect clear @a[team=ff_thief] minecraft:speed
effect clear @a[team=ff_thief] minecraft:night_vision
effect clear @a[team=ff_thief] minecraft:slowness
execute as @a[tag=ff_ice_frozen] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[team=ff_thief] run attribute @s minecraft:entity_interaction_range base set 3
execute as @a[team=ff_thief] run attribute @s minecraft:movement_speed base reset
execute as @a[team=ff_guard] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[team=ff_thief] run attribute @s minecraft:jump_strength base set 0.42
scoreboard players set @a ff_heist_punch_cd 0
scoreboard players set @a ff_heist_punch_bar 0
scoreboard players set @a ff_heist_punch_fx 0
scoreboard players set @a ff_heist_invis_ticks 0
scoreboard players set @a ff_heist_stolen_keys 0
scoreboard players set @a ff_heist_regen_lock 0
scoreboard players set @a ff_heist_thaw_fx 0
scoreboard players set @a ff_trap_cooldown 0
scoreboard players set $heist_regen_lock_timer ff_heist 0
scoreboard players set $timer_frozen ff_day 0
gamerule minecraft:natural_health_regeneration true
tag @a remove ff_ice_cannon_shooter
tag @a remove ff_ice_frozen
team join ff_lobby @a[team=ff_thief]
scoreboard players set $heist_mode_active ff_game_state 0
scoreboard players set $heist_round_active ff_game_state 0
scoreboard players set $heist_button_lock ff_game_state 0
scoreboard players set $heist_players_ready ff_game_state 0
scoreboard players set $heist_thieves_ready ff_game_state 0
scoreboard players set $heist_ready_click_at ff_button_unpress_timestamp -20
scoreboard players set $heist_loot ff_heist 0
scoreboard players set $heist_timer ff_heist 0
scoreboard players set $heist_wait_ticks ff_heist 0
scoreboard players set $heist_wait_queue_present ff_heist 0
scoreboard players set $heist_seconds_left ff_heist 0
scoreboard players set $heist_minutes ff_heist 0
scoreboard players set $heist_seconds ff_heist 0
scoreboard players set $heist_sec_tens ff_heist 0
scoreboard players set $heist_sec_ones ff_heist 0
scoreboard players set $heist_elapsed ff_heist 0
scoreboard players reset $loot ff_heist_sidebar
scoreboard players reset * ff_heist_reveal
function fossil_frights:key/lock/setup
