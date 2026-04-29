tag @s remove ff_muted_chat
execute if entity @s[team=ff_dev_mode] run return 0
execute unless score @s ff_top_time matches -2147483648..2147483647 run scoreboard players set @s ff_top_time 0
execute unless score @s ff_top_day matches -2147483648..2147483647 run scoreboard players set @s ff_top_day 0
execute unless score @s ff_run_count matches -2147483648..2147483647 run scoreboard players set @s ff_run_count 0
execute unless score @s ff_duo_best matches -2147483648..2147483647 run scoreboard players set @s ff_duo_best 0
execute unless score @s ff_parkour_time matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_time 0
execute unless score @s ff_parkour_best matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_best 0
execute unless score @s ff_parkour_running matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_running 0
execute unless score @s ff_parkour_restart_seen matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_restart_seen 0
execute unless score @s ff_parkour_min matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_min 0
execute unless score @s ff_parkour_sec matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_sec 0
execute unless score @s ff_parkour_sec_tens matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_sec_tens 0
execute unless score @s ff_parkour_sec_ones matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_sec_ones 0
execute unless score @s ff_parkour_centi matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_centi 0
execute unless score @s ff_parkour_centi_tens matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_centi_tens 0
execute unless score @s ff_parkour_centi_ones matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_centi_ones 0
execute unless score @s ff_temple_run_time matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_time 0
execute unless score @s ff_temple_run_best matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_best 0
execute unless score @s ff_temple_run_running matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_running 0
execute unless score @s ff_temple_run_restart_seen matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_restart_seen 0
execute unless score @s ff_temple_run_min matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_min 0
execute unless score @s ff_temple_run_sec matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_sec 0
execute unless score @s ff_temple_run_sec_tens matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_sec_tens 0
execute unless score @s ff_temple_run_sec_ones matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_sec_ones 0
execute unless score @s ff_temple_run_centi matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_centi 0
execute unless score @s ff_temple_run_centi_tens matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_centi_tens 0
execute unless score @s ff_temple_run_centi_ones matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_centi_ones 0
execute unless score @s ff_ant_fight matches -2147483648..2147483647 run scoreboard players set @s ff_ant_fight 0
execute unless score @s ff_ant_leaf_seen matches -2147483648..2147483647 run scoreboard players set @s ff_ant_leaf_seen 0
execute unless score @s ff_ant_score matches -2147483648..2147483647 run scoreboard players set @s ff_ant_score 0
scoreboard players add @s ff_ant_sneak_time 0
execute unless score @s ff_ant_sneak_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_ant_sneak_seen = @s ff_ant_sneak_time
execute unless score @s ff_ant_sneak_ticks matches -2147483648..2147483647 run scoreboard players set @s ff_ant_sneak_ticks 0
execute unless score @s ff_ant_unsneak_ticks matches -2147483648..2147483647 run scoreboard players set @s ff_ant_unsneak_ticks 0
execute unless score @s ff_ant_blind_ticks matches -2147483648..2147483647 run scoreboard players set @s ff_ant_blind_ticks 0
execute store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1
function fossil_frights:leaderboards/check_login_resets
execute if score $active_set ff_game_state matches 1 if score $game_running ff_game_state matches 1 run function fossil_frights:game/roster/handle_member_login
scoreboard players operation @s ff_deaths_seen = @s ff_deaths
execute if score @s ff_active_uuid_0 = $lb_pending ff_active_uuid_0 if score @s ff_active_uuid_1 = $lb_pending ff_active_uuid_1 if score @s ff_active_uuid_2 = $lb_pending ff_active_uuid_2 if score @s ff_active_uuid_3 = $lb_pending ff_active_uuid_3 run function fossil_frights:leaderboards/claim_pending_disconnect
team leave @s
tag @s remove ff_active
tag @s remove ff_forced_spectate
tag @s remove ff_in_queue
tag @s remove ff_ant_fight
tag @s remove ff_ant_lobby_blind
tag @s remove ff_tutorial
scoreboard players set @s ff_queue_order 0
scoreboard players set @s ff_ant_fight 0
scoreboard players set @s ff_tutorial 0
scoreboard players set @s ff_tutorial_scene 0
scoreboard players set @s ff_tutorial_tick 0
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_bat_bug_timer 0
scoreboard players set @s ff_bat_bug_bar 0
scoreboard players add @s ff_bb_disc_use 0
execute unless score @s ff_bb_disc_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_bb_disc_seen = @s ff_bb_disc_use
execute unless score @s ff_bb_sneak_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_bb_sneak_seen = @s ff_ant_sneak_time
execute unless score @s ff_bb_sneak_state matches -2147483648..2147483647 run scoreboard players set @s ff_bb_sneak_state 0
execute unless score @s ff_bb_shift_count matches -2147483648..2147483647 run scoreboard players set @s ff_bb_shift_count 0
scoreboard players operation @s ff_bb_disc_seen = @s ff_bb_disc_use
scoreboard players operation @s ff_bb_sneak_seen = @s ff_ant_sneak_time
scoreboard players set @s ff_bb_sneak_state 0
scoreboard players set @s ff_bb_shift_count 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
scoreboard players set @s ff_cmd_start 0
scoreboard players set @s ff_cmd_leave 0
scoreboard players set @s ff_cmd_spectate 0
scoreboard players set @s ff_cmd_stats 0
scoreboard players set @s ff_cmd_tutorial 0
scoreboard players set @s ff_cmd_info 0
scoreboard players enable @s ff_queue_start
scoreboard players enable @s ff_cmd_start
scoreboard players enable @s ff_cmd_leave
scoreboard players enable @s ff_cmd_spectate
scoreboard players enable @s ff_cmd_stats
scoreboard players enable @s ff_cmd_tutorial
scoreboard players enable @s ff_cmd_info
scoreboard players set @s ff_cmd_invite 0
scoreboard players enable @s ff_cmd_invite
scoreboard players set @s ff_invite_sel 0
scoreboard players enable @s ff_invite_sel
scoreboard players set @s ff_invite_accept 0
scoreboard players enable @s ff_invite_accept
clear @s
clear @s minecraft:snowball[minecraft:custom_data={ff_ant_leaf:1b}]
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
title @s actionbar ""
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $lobby_displays_ready ff_game_state 0
gamemode adventure @s
function fossil_frights:player/effects/lobby_reset
effect give @s minecraft:instant_health 100 0 true
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
function fossil_frights:tasks/final/plushies/restore
function fossil_frights:leaderboards/sync_entry
function fossil_frights:leaderboards/display/refresh
