function fossil_frights:game/heists/clear_join_pads
function fossil_frights:game/heists/capture_point/clear
kill @e[type=minecraft:marker,tag=ff_ice_cannon]
kill @e[type=minecraft:block_display,tag=ff_ice_cannon_block]
kill @e[type=minecraft:marker,tag=ff_glowtrap]
effect clear @a[tag=ff_heist_thief] minecraft:invisibility
scoreboard players set @a ff_heist_punch_cd 0
scoreboard players set @a ff_heist_punch_bar 0
scoreboard players set @a ff_heist_punch_fx 0
scoreboard players set @a ff_heist_invis_ticks 0
scoreboard players set @a ff_ice_cannon_cd 0
scoreboard players set @a ff_glowtrap_cd 0
tag @a remove ff_ice_cannon_shooter
tag @a remove ff_heist_guard
tag @a remove ff_heist_thief
team leave @a[team=ff_heist_thieves]
scoreboard players set $heist_mode_active ff_game_state 0
scoreboard players set $heist_round_active ff_game_state 0
scoreboard players set $heist_button_lock ff_game_state 0
scoreboard players set $heist_players_ready ff_game_state 0
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
