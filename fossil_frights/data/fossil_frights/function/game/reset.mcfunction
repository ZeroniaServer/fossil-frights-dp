execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 24 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 24 run tp @s 0 80 0 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 24 if score $defeat_anim ff_game_state matches 1 run schedule function fossil_frights:animations/defeat/stop 1t
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute unless score $party_mode_active ff_game_state matches 1 if score $day_current ff_day matches 1 if score $speedrunner_restart_window ff_game_state matches 1.. run advancement grant @a[team=ff_guard] only fossil_frights:02_achievements/speedrunner
function fossil_frights:map/replace_cauldrons
function fossil_frights:map/replace_powder_snow
fill -5 68 8 -3 68 8 air
function fossil_frights:game/reset/hazards
function fossil_frights:game/reset/cleanup_dropped_items
function fossil_frights:tasks/reset
function fossil_frights:tasks/final/final_task/close_lab_door
function fossil_frights:tasks/final/final_task/reset
function fossil_frights:game/bossbar/clear
function fossil_frights:animations/game_start/stop
execute unless score $defeat_anim ff_game_state matches 1 run function fossil_frights:animations/defeat/stop
function fossil_frights:animations/credits/cleanup
function fossil_frights:game/frights/worldborder/reset
function fossil_frights:game/time/start_rest
function fossil_frights:game/frights/timer/reset
function fossil_frights:animations/door/open
function fossil_frights:animations/dinocoin/crane/reset
function fossil_frights:animations/dinocoin/sarcophagus/reset
function fossil_frights:animations/dinocoin/crab/reset
function fossil_frights:animations/dinocoin/vending_machine/setup
function fossil_frights:animations/forklift/reset
function fossil_frights:frights/sniffer/reset
function fossil_frights:frights/bats/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:frights/bogged/reset
function fossil_frights:animations/velociraptor_skull/reset_rotation
function fossil_frights:game/heists/reset/blocks
stopsound @a record fossil-frights:heists.music
stopsound @a music fossil-frights:ff_night_shift
stopsound @a master fossil-frights:ff_night_shift
stopsound @a record fossil-frights:ff_night_shift
execute if score $run_multiplayer ff_game_state matches 0 as @a[team=ff_guard] run function fossil_frights:leaderboards/update_top_day_from_current
execute if score $run_multiplayer ff_game_state matches 0 run function fossil_frights:leaderboards/display/refresh
execute unless score $victory_complete ff_game_state matches 1 run function fossil_frights:messages/game/exit_day_reached
function fossil_frights:game/reset/spectators
scoreboard players set @a ff_fright_timer 0
gamemode adventure @a[team=ff_guard]
gamemode adventure @a[team=ff_thief]
execute as @a[team=ff_guard] run attribute @s minecraft:scale base set 1
execute as @a[team=ff_thief] run attribute @s minecraft:scale base set 1
execute as @a[team=ff_guard] run function fossil_frights:player/effects/lobby_reset
execute as @a[team=ff_thief] run function fossil_frights:player/effects/lobby_reset
scoreboard players set @a[team=ff_guard] ff_key_cooldown 0
scoreboard players set @a[team=ff_thief] ff_key_cooldown 0
scoreboard players set @a[team=ff_guard] ff_key_bar 0
scoreboard players set @a[team=ff_thief] ff_key_bar 0
scoreboard players set @a[team=ff_guard] ff_bat_bug_timer 0
scoreboard players set @a[team=ff_thief] ff_bat_bug_timer 0
scoreboard players set @a[team=ff_guard] ff_bat_bug_bar 0
scoreboard players set @a[team=ff_thief] ff_bat_bug_bar 0
scoreboard players set @a[team=ff_guard] ff_speedrun_delta 0
scoreboard players set @a[team=ff_thief] ff_speedrun_delta 0
scoreboard players set @a[team=ff_guard] ff_speedrun_sign 0
scoreboard players set @a[team=ff_thief] ff_speedrun_sign 0
title @a[team=ff_guard] subtitle ""
title @a[team=ff_thief] subtitle ""
title @a[team=ff_guard] actionbar ""
title @a[team=ff_thief] actionbar ""
clear @a[team=ff_guard]
clear @a[team=ff_thief]
clear @a[team=ff_guard] *[custom_data~{ff_any_key:true}]
clear @a[team=ff_thief] *[custom_data~{ff_any_key:true}]
clear @a[team=ff_guard] minecraft:amethyst_shard[minecraft:custom_data~{ff_dna:true}]
clear @a[team=ff_thief] minecraft:amethyst_shard[minecraft:custom_data~{ff_dna:true}]
item replace entity @a[team=ff_guard] weapon.mainhand with air
item replace entity @a[team=ff_thief] weapon.mainhand with air
item replace entity @a[team=ff_guard] weapon.offhand with air
item replace entity @a[team=ff_thief] weapon.offhand with air
item replace entity @a[team=ff_guard] armor.head with air
item replace entity @a[team=ff_thief] armor.head with air
execute as @a[team=ff_guard,tag=!ff_fade_tp_active] run title @s times 5 3 10
execute as @a[team=ff_thief,tag=!ff_fade_tp_active] run title @s times 5 3 10
execute as @a[team=ff_guard,tag=!ff_fade_tp_active] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
execute as @a[team=ff_thief,tag=!ff_fade_tp_active] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[team=ff_guard,tag=!ff_fade_tp_active] ff_tp_action 24
scoreboard players set @a[team=ff_thief,tag=!ff_fade_tp_active] ff_tp_action 24
scoreboard players set @a[scores={ff_tp_action=24},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=24},tag=!ff_fade_tp_active] add ff_fade_tp_active
execute as @a[team=ff_guard] at @s run spawnpoint @s 0 80 0
execute as @a[team=ff_thief] at @s run spawnpoint @s 0 80 0
execute as @a[team=ff_guard] run function fossil_frights:items/plushies/restore
execute as @a[team=ff_thief] run function fossil_frights:items/plushies/restore
execute as @a[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
tag @a[team=ff_guard] remove ff_forced_spectate
tag @a[team=ff_thief] remove ff_forced_spectate
tag @a[team=ff_guard] remove ff_camera_remote_active
tag @a[team=ff_thief] remove ff_camera_remote_active
tag @a[team=ff_guard] remove ff_muted_chat
tag @a[team=ff_thief] remove ff_muted_chat
tag @a[team=ff_guard] remove ff_map_claimed
tag @a[team=ff_thief] remove ff_map_claimed
tag @a[team=ff_guard] remove ff_map_auto_given
tag @a[team=ff_thief] remove ff_map_auto_given
team join ff_lobby @a[team=ff_guard]
team join ff_lobby @a[team=ff_thief]
function fossil_frights:game/party/reset
function fossil_frights:game/heists/reset/main
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
scoreboard players set $defeat_lock ff_game_state 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $custom_day_active ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $time_anim_resume_cycle ff_day 0
scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:tasks/tracker/hide
function fossil_frights:join/queue/maybe_notify_next
function fossil_frights:interactions/door/reset
function fossil_frights:interactions/fence_gate/reset
function fossil_frights:cameras/update_camera_models
function fossil_frights:tasks/task_book_shelf/reset
scoreboard players set $alarm_effects_on ff_heist 0
