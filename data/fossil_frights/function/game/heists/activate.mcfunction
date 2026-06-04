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
scoreboard players set $heist_loot ff_heist 0
scoreboard players set $heist_timer ff_heist 0
scoreboard players set $heist_wait_ticks ff_heist 0
scoreboard players set $heist_seconds_left ff_heist 600
scoreboard players set $heist_minutes ff_heist 10
scoreboard players set $heist_seconds ff_heist 0
scoreboard players set $heist_sec_tens ff_heist 0
scoreboard players set $heist_sec_ones ff_heist 0
scoreboard players set $loot ff_heist_sidebar 0
scoreboard players display name $loot ff_heist_sidebar [{"text":"Loot stolen","color":"gold","italic":false}]
tag @a[tag=ff_active] add ff_heist_guard
team join ff_active_gold @a[tag=ff_heist_guard]
execute as @a[tag=ff_heist_guard] run function fossil_frights:game/heists/loadout/guard
function fossil_frights:game/settings/toggle_spectators/reset
function fossil_frights:game/settings/setting2/reset
function fossil_frights:game/settings/setting3/reset
function fossil_frights:game/settings/speedrun_toggle/reset
tag @a[tag=ff_active] remove ff_settings_spectator_deny
tag @a[tag=ff_active] remove ff_settings_music_off
tag @a[tag=ff_active] remove ff_muted_chat
tag @a[tag=ff_active] remove ff_settings_chat_hidden
tag @a[tag=ff_active] remove ff_settings_speedrun_show
function fossil_frights:game/start_room/timer_bars/close
function fossil_frights:animations/door/open
tp @a[tag=ff_active] 20 70 20 0 0
function fossil_frights:game/heists/day_tracker/hide
function fossil_frights:game/heists/waiting_text/show
function fossil_frights:game/heists/capture_point/setup
function fossil_frights:join/heists/setup
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/heists/refresh
function fossil_frights:messages/heists/activated
