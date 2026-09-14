execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/heists_enable_after_start
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/heists_enable_before_day
execute if score $day_active ff_day matches 1 run return 0
execute unless score $day_current ff_day matches 0 run function fossil_frights:messages/error/heists_enable_before_day
execute unless score $day_current ff_day matches 0 run return 0
scoreboard players set $heist_button_lock ff_game_state 20
function fossil_frights:game/rejoin/cleanup/all
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 1
scoreboard players set $heist_mode_active ff_game_state 1
function fossil_frights:hazard/lava/map/update
scoreboard players set $heist_round_active ff_game_state 0
scoreboard players set $heist_admin_bypass_team_check ff_game_state 0
scoreboard players set $heist_thieves_ready ff_game_state 0
function fossil_frights:game/heists/challenge/reset
scoreboard players set $heist_loot ff_heist 0
scoreboard players set $heist_timer ff_heist 0
scoreboard players set $heist_wait_ticks ff_heist 0
scoreboard players set $heist_seconds_left ff_heist 600
scoreboard players set $heist_minutes ff_heist 10
scoreboard players set $heist_seconds ff_heist 0
scoreboard players set $heist_sec_tens ff_heist 0
scoreboard players set $heist_sec_ones ff_heist 0
scoreboard players reset $loot ff_heist_sidebar
execute as @a[team=ff_guard] run function fossil_frights:game/heists/loadout/guard
execute as @a[team=ff_guard] at @s run spawnpoint @s 20 70 20
function fossil_frights:game/start_room/settings/sync_message_state
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:animations/front_door/open
function fossil_frights:game/heists/day_tracker/hide
function fossil_frights:game/heists/waiting_text/show
function fossil_frights:game/start_room/locked_door/show
function fossil_frights:game/heists/capture_point/setup
function fossil_frights:join/join_pads/heists/setup
scoreboard players set $heist_wait_queue_present ff_heist 0
scoreboard players set $heist_ready_click_at ff_button_unpress_timestamp -20
function fossil_frights:key/lock/setup
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:messages/heists/activated
