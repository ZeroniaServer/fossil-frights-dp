execute unless score $party_mode_active ff_game_state matches 1 if score $day_current ff_day matches 1 if score $speedrunner_restart_window ff_game_state matches 1.. run advancement grant @a[tag=ff_active] only fossil_frights:02_achievements/speedrunner
function fossil_frights:game/reset_hazards
function fossil_frights:game/cleanup_dropped_items
function fossil_frights:tasks/reset
function fossil_frights:tasks/final/final_task/close_lab_door
function fossil_frights:tasks/final/final_task/reset
function fossil_frights:game/bossbar/clear
function fossil_frights:animations/game_start/stop
execute unless score $defeat_anim ff_game_state matches 1 run function fossil_frights:animations/defeat/stop
function fossil_frights:animations/credits/cleanup
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/start_rest
function fossil_frights:game/timer/reset
function fossil_frights:animations/door/open
function fossil_frights:animations/cubekoin/crane/reset
function fossil_frights:animations/cubekoin/sarcophagus/reset
function fossil_frights:animations/payment/crab/reset
function fossil_frights:animations/forklift/reset
function fossil_frights:frights/sniffer/reset
function fossil_frights:frights/bats/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:frights/bogged/reset
function fossil_frights:animations/velociraptor_skull/reset_rotation
function fossil_frights:game/heists/reset_blocks
stopsound @a music fossil-frights:ff_night_shift
stopsound @a master fossil-frights:ff_night_shift
stopsound @a record fossil-frights:ff_night_shift
execute if score $run_multiplayer ff_game_state matches 0 as @a[tag=ff_active] run function fossil_frights:leaderboards/update_top_day_from_current
execute if score $run_multiplayer ff_game_state matches 0 run function fossil_frights:leaderboards/display/refresh
function fossil_frights:messages/game/exit_day_reached
function fossil_frights:game/reset_spectators
scoreboard players set @a ff_fright_timer 0
gamemode adventure @a[tag=ff_active]
execute as @a[tag=ff_active] run attribute @s minecraft:scale base set 1
execute as @a[tag=ff_active] run function fossil_frights:player/effects/lobby_reset
scoreboard players set @a[tag=ff_active] ff_key_cooldown 0
scoreboard players set @a[tag=ff_active] ff_key_bar 0
scoreboard players set @a[tag=ff_active] ff_bat_bug_timer 0
scoreboard players set @a[tag=ff_active] ff_bat_bug_bar 0
scoreboard players set @a[tag=ff_active] ff_speedrun_delta 0
scoreboard players set @a[tag=ff_active] ff_speedrun_sign 0
title @a[tag=ff_active] subtitle ""
title @a[tag=ff_active] actionbar ""
clear @a[tag=ff_active]
clear @a[tag=ff_active] *[custom_data~{ff_any_key:true}]
clear @a[tag=ff_active] minecraft:amethyst_shard[minecraft:custom_data~{ff_dna:1b}]
item replace entity @a[tag=ff_active] weapon.mainhand with air
item replace entity @a[tag=ff_active] weapon.offhand with air
item replace entity @a[tag=ff_active] armor.head with air
execute as @a[tag=ff_active] run function fossil_frights:util/fade/queue/game_end
execute as @a[tag=ff_active] at @s run spawnpoint @s 0 80 0
execute as @a[tag=ff_active] run function fossil_frights:tasks/final/plushies/restore
execute as @a[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
tag @a[tag=ff_active] remove ff_forced_spectate
tag @a[tag=ff_active] remove ff_camera_remote_active
tag @a[tag=ff_active] remove ff_muted_chat
tag @a[tag=ff_active] remove ff_map_claimed
tag @a[tag=ff_active] remove ff_map_auto_given
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
team leave @a[team=ff_heist_thieves]
function fossil_frights:game/party_mode/reset
function fossil_frights:game/heists/reset
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $crane_rat_cooldown ff_game_state 0
scoreboard players set $sarcophagus_timer ff_game_state 0
scoreboard players set $sarcophagus_prompt_cooldown ff_game_state 0
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $idle_queue_present ff_game_state 0
scoreboard players set $speedrunner_restart_window ff_game_state 0
scoreboard players set $run_admin_modified ff_game_state 0
scoreboard players set $victory_complete ff_game_state 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $time_anim_resume_cycle ff_day 0
scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/heists/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
function fossil_frights:tasks/tracker/hide
function fossil_frights:join/maybe_notify_next
function fossil_frights:door/reset
