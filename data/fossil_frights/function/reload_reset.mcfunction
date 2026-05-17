function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:tasks/final/final_task/close_lab_door
function fossil_frights:tasks/final/final_task/reset
function fossil_frights:bossbar/clear
function fossil_frights:animations/game_start/stop
function fossil_frights:animations/defeat/stop
function fossil_frights:animations/credits/stop
function fossil_frights:animations/door/open
function fossil_frights:animations/crane/reset
function fossil_frights:animations/sarcophagus/reset
function fossil_frights:frights/sniffer/reset
function fossil_frights:frights/bats/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:frights/bogged/reset
function fossil_frights:animations/velociraptor_skull/reset_rotation
function fossil_frights:sound/stop_night_shift
execute as @a run function fossil_frights:parkour/reset_player
execute as @a run function fossil_frights:temple_run/reset_player
execute as @a[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
execute as @a[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
function fossil_frights:join/reset
scoreboard players set @a ff_fright_timer 0
scoreboard players set @a ff_bat_bug_timer 0
scoreboard players set @a ff_bat_bug_bar 0
tag @a[tag=ff_active] remove ff_muted_chat
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
function fossil_frights:game/roster/reset
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
function fossil_frights:tasks/tracker/hide
scoreboard players set $leaderboard_display_ready ff_lb_calc 0
