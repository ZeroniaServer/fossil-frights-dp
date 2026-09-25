execute if predicate fossil_frights:game_state/game_running run function fossil_frights:game/bossbar/sync_login_player
tag @s remove ff_hoverboard_active
tag @s remove ff_hoverboard_owner_current
tag @s remove ff_muted_chat
tag @s remove ff_map_claimed
tag @s remove ff_map_auto_given
# Cache player UUID
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
function fossil_frights:player/reset_attributes
function fossil_frights:player/reset_effects
function fossil_frights:game/rejoin/login_restore
execute if entity @s[tag=ff_rejoin_restored] run return 0
tag @s add ff_rejoin_login_reset_source
execute if predicate fossil_frights:game_state/game_running unless entity @a[team=ff_guard,tag=!ff_rejoin_login_reset_source] unless entity @a[team=ff_thief,tag=!ff_rejoin_login_reset_source] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker] run function fossil_frights:game/reset/active_disconnect
tag @s remove ff_rejoin_login_reset_source
execute if entity @s[team=ff_dev_mode] run return 0
experience set @s 0 levels
experience set @s 0 points
execute unless score @s ff_top_time matches -2147483648..2147483647 run scoreboard players set @s ff_top_time 0
execute unless score @s ff_top_day matches -2147483648..2147483647 run scoreboard players set @s ff_top_day 0
execute unless score @s ff_run_count matches -2147483648..2147483647 run scoreboard players set @s ff_run_count 0
execute unless score @s ff_duo_best matches -2147483648..2147483647 run scoreboard players set @s ff_duo_best 0
execute unless score @s ff_day1_best matches -2147483648..2147483647 run scoreboard players set @s ff_day1_best 0
execute unless score @s ff_day2_best matches -2147483648..2147483647 run scoreboard players set @s ff_day2_best 0
execute unless score @s ff_day3_best matches -2147483648..2147483647 run scoreboard players set @s ff_day3_best 0
execute unless score @s ff_day4_best matches -2147483648..2147483647 run scoreboard players set @s ff_day4_best 0
execute unless score @s ff_day5_best matches -2147483648..2147483647 run scoreboard players set @s ff_day5_best 0
execute unless score @s ff_day6_best matches -2147483648..2147483647 run scoreboard players set @s ff_day6_best 0
execute unless score @s ff_day7_best matches -2147483648..2147483647 run scoreboard players set @s ff_day7_best 0
execute unless score @s ff_day8_best matches -2147483648..2147483647 run scoreboard players set @s ff_day8_best 0
execute unless score @s ff_day9_best matches -2147483648..2147483647 run scoreboard players set @s ff_day9_best 0
execute unless score @s ff_day10_best matches -2147483648..2147483647 run scoreboard players set @s ff_day10_best 0
execute unless score @s ff_speedrun_delta matches -2147483648..2147483647 run scoreboard players set @s ff_speedrun_delta 0
execute unless score @s ff_speedrun_sign matches -2147483648..2147483647 run scoreboard players set @s ff_speedrun_sign 0
execute unless score @s ff_parkour_time matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_time 0
execute unless score @s ff_parkour_best matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_best 0
execute unless score @s ff_parkour_running matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_running 0
execute unless score @s ff_parkour_start_plate matches -2147483648..2147483647 run scoreboard players set @s ff_parkour_start_plate 0
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
execute unless score @s ff_temple_run_start_plate matches -2147483648..2147483647 run scoreboard players set @s ff_temple_run_start_plate 0
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
scoreboard players add @s ff_heist_guard_sneak_ticks 0
scoreboard players add @s ff_heist_guard_unsneak_ticks 0
function fossil_frights:tutorial/camera/kill_owned
function fossil_frights:items/heists/camera_remote/exit
function fossil_frights:leaderboards/check_login_resets
execute unless entity @s[tag=ff_login_initial] if score $active_set ff_game_state matches 1 if predicate fossil_frights:game_state/game_running run function fossil_frights:game/party/handle_member_login
function fossil_frights:game/bossbar/available/refresh
function fossil_frights:game/bossbar/available/sync_players
scoreboard players operation @s ff_deaths_seen = @s ff_deaths
execute if score @s ff_active_uuid_0 = $lb_pending ff_active_uuid_0 if score @s ff_active_uuid_1 = $lb_pending ff_active_uuid_1 if score @s ff_active_uuid_2 = $lb_pending ff_active_uuid_2 if score @s ff_active_uuid_3 = $lb_pending ff_active_uuid_3 run function fossil_frights:leaderboards/claim_pending_disconnect
team leave @s
tag @s remove ff_tp_dispatch
tag @s remove ff_fade_tp_active
tag @s remove ff_join_spectator_zone
tag @s remove ff_join_start_teleport
tag @s remove ff_forced_spectate
tag @s remove ff_camera_remote_active
tag @s remove ff_in_queue
tag @s remove ff_ant_fight
tag @s remove ff_dropped_infinileaf
tag @s remove ff_ant_lobby_blind
tag @s remove ff_tutorial
scoreboard players set @s ff_queue_order 0
scoreboard players set @s ff_ant_fight 0
scoreboard players reset @s ff_ant_combo
scoreboard players reset @s ff_ant_combo_shown_until_timestamp
scoreboard players set @s ff_tutorial 0
scoreboard players set @s ff_tutorial_scene 0
scoreboard players set @s ff_tutorial_tick 0
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_join_cooldown 0
scoreboard players set @s ff_msg_cooldown 0
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_bat_bug_timer 0
scoreboard players set @s ff_bat_bug_bar 0
scoreboard players set @s ff_bat_bug_inventory_count 0
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
scoreboard players set @s start 0
scoreboard players set @s leave 0
scoreboard players set @s spectate 0
scoreboard players set @s stats 0
scoreboard players set @s tutorial 0
scoreboard players set @s info 0
scoreboard players set @s party 0
scoreboard players set @s heists 0
scoreboard players set @s join_guard 0
scoreboard players set @s join_thief 0
scoreboard players set @s spawn 0
scoreboard players enable @s ff_queue_start
scoreboard players enable @s start
scoreboard players enable @s leave
scoreboard players enable @s spectate
scoreboard players enable @s stats
scoreboard players enable @s tutorial
scoreboard players enable @s info
scoreboard players enable @s party
scoreboard players enable @s heists
scoreboard players enable @s join_guard
scoreboard players enable @s join_thief
scoreboard players enable @s spawn
scoreboard players set @s invite 0
scoreboard players enable @s invite
scoreboard players set @s ff_invite_sel 0
scoreboard players enable @s ff_invite_sel
scoreboard players set @s ff_invite_accept 0
scoreboard players enable @s ff_invite_accept
execute unless entity @s[tag=tutorial_complete] run tellraw @s {"translate":"ff.messages.info","color":"#F2B8FF","with":[{"translate":"ff.messages.info.watch_tutorial","with":[{"translate":"%s%s","click_event":{"action":"run_command","command":"trigger tutorial set 1"},"with":[{"translate":"ff.button.tutorial_start","font":"fossil-frights:chat_buttons","color":"white"},{"translate":"ff.button.tutorial_start.override","color":"yellow","bold":true}]}]}]}
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base reset
attribute @s minecraft:waypoint_transmit_range base set 0
attribute @s minecraft:waypoint_receive_range base set 0
attribute @s minecraft:below_name_distance base set 0
function fossil_frights:player/actionbar/clear
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $lobby_displays_ready ff_game_state 0
gamemode adventure @s
function fossil_frights:join/lobby
function fossil_frights:player/effects/lobby_reset
effect give @s minecraft:instant_health 100 0 true
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/end
function fossil_frights:items/plushies/restore
execute unless predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/sync_entry
execute unless predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/display/refresh
