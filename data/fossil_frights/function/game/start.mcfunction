execute if score $heist_mode_active ff_game_state matches 1 run return run function fossil_frights:game/heists/start_round
execute unless entity @a[limit=1,team=ff_guard] run function fossil_frights:messages/error/no_active_player
execute unless entity @a[limit=1,team=ff_guard] run return 0

function fossil_frights:tasks/bookcase/clear
function fossil_frights:game/cleanup_dropped_items
function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:cameras/camera_setup
function fossil_frights:tasks/hard/pig_wrangler/spawn_waiting
function fossil_frights:tasks/final/final_task/close_lab_door
function fossil_frights:tasks/final/final_task/reset
function fossil_frights:game/bossbar/setup
function fossil_frights:animations/defeat/stop
function fossil_frights:join/join_pads/setup
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/reset
function fossil_frights:game/timer/reset
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/glass_box/reset
function fossil_frights:game/start_room/timer_bars/open
function fossil_frights:animations/door/close
function fossil_frights:animations/dinocoin/crane/reset
function fossil_frights:animations/dinocoin/sarcophagus/reset
function fossil_frights:animations/dinocoin/crab/reset
function fossil_frights:animations/forklift/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/puffer/summon
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
execute as @a[team=ff_guard] run function fossil_frights:util/fade/queue/game_start
gamemode adventure @a[team=ff_guard]
execute as @a[team=ff_guard] run attribute @s minecraft:scale base set 1
execute as @a[team=ff_guard] run function fossil_frights:player/protection_disable
clear @a[team=ff_guard]
effect clear @a[team=ff_guard] minecraft:absorption
effect clear @a[team=ff_guard] minecraft:health_boost
effect give @a[team=ff_guard] minecraft:instant_health 100 0 true
effect give @a[team=ff_guard] minecraft:saturation infinite 255 true
scoreboard players set @a[team=ff_guard] ff_key_cooldown 0
scoreboard players set @a[team=ff_guard] ff_key_bar 0
scoreboard players set @a[team=ff_guard] ff_bat_bug_timer 0
scoreboard players set @a[team=ff_guard] ff_bat_bug_bar 0
scoreboard players set @a[team=ff_guard] ff_speedrun_delta 0
scoreboard players set @a[team=ff_guard] ff_speedrun_sign 0
title @a[team=ff_guard] actionbar ""
tag @a[team=ff_guard] remove ff_map_auto_given
tag @a[team=ff_guard] remove ff_map_claimed
execute as @a[team=ff_guard] run function fossil_frights:player/equip_security_hat
execute as @a[team=ff_guard] run function fossil_frights:key/give_waiting
execute as @a[team=ff_guard,scores={ff_run_count=..9,ff_top_day=..9}] run function fossil_frights:map/give_start_room
execute as @a[team=ff_guard] at @s run spawnpoint @s 20 70 20
scoreboard players set $sniffer_fright ff_game_state 0
scoreboard players set $bats_fright ff_game_state 0
scoreboard players set $puffer_fright ff_game_state 0
scoreboard players set $puffer_timer ff_game_state 0
scoreboard players set $creeper_fright ff_game_state 0
scoreboard players set $skeleton_fright ff_game_state 0
scoreboard players set $bogged_fright ff_game_state 0
scoreboard players set @a ff_fright_timer 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $museum_map_claims ff_game_state 0
scoreboard players set $museum_map_flash ff_game_state 0
tag @e[type=minecraft:interaction,tag=ff_museum_map_disabled] add ff_museum_map_click
tag @e[type=minecraft:interaction,tag=ff_museum_map_disabled] remove ff_museum_map_disabled
scoreboard players set $game_running ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 0
scoreboard players set $victory_complete ff_game_state 0
scoreboard players set $defeat_lock ff_game_state 0
execute as @a[team=ff_guard] run function fossil_frights:key/refresh
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $idle_queue_present ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 1
scoreboard players set $forklift_paid ff_game_state 0
function fossil_frights:game/settings/apply_active_preferences
function fossil_frights:game/settings/message_sync
function fossil_frights:tasks/tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/heists/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
