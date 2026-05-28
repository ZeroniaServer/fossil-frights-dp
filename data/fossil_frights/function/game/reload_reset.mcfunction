function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:tasks/final/final_task/close_lab_door
function fossil_frights:tasks/final/final_task/reset
function fossil_frights:game/bossbar/clear
function fossil_frights:animations/game_start/stop
function fossil_frights:animations/defeat/stop
function fossil_frights:animations/credits/stop
function fossil_frights:animations/door/open
function fossil_frights:animations/cubekoin/crane/reset
function fossil_frights:animations/cubekoin/sarcophagus/reset
function fossil_frights:frights/sniffer/reset
function fossil_frights:frights/bats/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:frights/bogged/reset
function fossil_frights:animations/velociraptor_skull/reset_rotation
stopsound @a music fossil-frights:ff_night_shift
stopsound @a master fossil-frights:ff_night_shift
stopsound @a record fossil-frights:ff_night_shift
tag @a add ff_skip_plushie_restore
execute as @a run function fossil_frights:parkour/reset_player
execute as @a run function fossil_frights:temple_run/reset_player
execute as @a[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
execute as @a[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
tag @a remove ff_skip_plushie_restore
execute as @a run function fossil_frights:tasks/final/plushies/restore
kill @e[type=minecraft:text_display,tag=ff_tutorial_camera]
function fossil_frights:join/reset
scoreboard players set @a ff_fright_timer 0
scoreboard players set @a ff_bat_bug_timer 0
scoreboard players set @a ff_bat_bug_bar 0
scoreboard players set @a ff_speedrun_delta 0
scoreboard players set @a ff_speedrun_sign 0
title @a subtitle ""
tag @a[tag=ff_active] remove ff_muted_chat
tag @a remove ff_map_claimed
tag @a remove ff_map_auto_given
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
function fossil_frights:game/party_mode/reset
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $crane_rat_cooldown ff_game_state 0
scoreboard players set $sarcophagus_timer ff_game_state 0
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 0
scoreboard players set $speedrunner_restart_window ff_game_state 0
scoreboard players set $run_admin_modified ff_game_state 0
scoreboard players set $queue_start_token ff_queue_start_token 0
scoreboard players set $queue_notify_lock ff_game_state 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $game_start_spawn_mode ff_game_state 0
scoreboard players set $lobby_displays_ready ff_game_state 0
scoreboard players set @a ff_cmd_stats 0
scoreboard players enable @a ff_cmd_stats
scoreboard players set @a ff_cmd_tutorial 0
scoreboard players enable @a ff_cmd_tutorial
scoreboard players set @a ff_cmd_info 0
scoreboard players enable @a ff_cmd_info
scoreboard players set @a ff_cmd_invite 0
scoreboard players enable @a ff_cmd_invite
scoreboard players set @a ff_invite_sel 0
scoreboard players enable @a ff_invite_sel
scoreboard players set @a ff_invite_accept 0
scoreboard players enable @a ff_invite_accept
scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:game/settings/toggle_spectators/reset
function fossil_frights:game/settings/setting2/reset
function fossil_frights:game/settings/setting3/reset
function fossil_frights:game/settings/speedrun_toggle/reset
function fossil_frights:tasks/tracker/hide
scoreboard players set $leaderboard_display_ready ff_lb_calc 0
function fossil_frights:animations/cubekoin/crane/hide_parkour_route
