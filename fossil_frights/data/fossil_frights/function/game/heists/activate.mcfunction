execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/heists_enable_after_start
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/heists_enable_before_day
execute if score $day_active ff_day matches 1 run return 0
execute unless score $day_current ff_day matches 0 run function fossil_frights:messages/error/heists_enable_before_day
execute unless score $day_current ff_day matches 0 run return 0
scoreboard players set $heist_button_lock ff_game_state 20
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 1
scoreboard players set $heist_mode_active ff_game_state 1
scoreboard players set $heist_round_active ff_game_state 0
scoreboard players set $heist_thieves_ready ff_game_state 0
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
function fossil_frights:game/start_room/settings/spectators/reset
function fossil_frights:game/start_room/settings/music/reset
function fossil_frights:game/start_room/settings/chat/reset
function fossil_frights:game/start_room/settings/speedrun/reset
function fossil_frights:game/start_room/settings/api/sync_message_state
tag @a[team=ff_guard] remove ff_settings_spectator_deny
tag @a[team=ff_guard] remove ff_settings_music_off
tag @a[team=ff_guard] remove ff_muted_chat
tag @a[team=ff_guard] remove ff_settings_chat_hidden
tag @a[team=ff_guard] remove ff_settings_speedrun_show
function fossil_frights:game/start_room/timer_bars/close
function fossil_frights:animations/door/open
tp @a[team=ff_guard] 20 70 20 0 0
function fossil_frights:game/heists/day_tracker/hide
function fossil_frights:game/heists/waiting_text/show
function fossil_frights:game/heists/oxidized_bars/show
function fossil_frights:game/heists/capture_point/setup
function fossil_frights:join/join_pads/heists/setup
scoreboard players set $heist_wait_queue_present ff_heist 0
scoreboard players set $heist_ready_click_at ff_button_unpress_timestamp -20
function fossil_frights:key/lock/setup
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/heists/refresh
function fossil_frights:messages/heists/activated
