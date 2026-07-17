execute unless score $game_running ff_game_state matches 1 run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.party_mode.1"}]}
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.party_mode.2"}]}
execute if score $day_active ff_day matches 1 run return 0
scoreboard players set $party_button_lock ff_game_state 20
execute unless score $day_current ff_day matches 0 run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.party_mode.3"}]}
execute unless score $day_current ff_day matches 0 run return 0
execute if score $party_mode_active ff_game_state matches 1 run return 0
execute as @a[team=ff_guard] run function fossil_frights:game/party_mode/add_current_if_missing
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $party_mode_active ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 1
function fossil_frights:game/settings/toggle_spectators/reset
function fossil_frights:game/settings/setting2/reset
function fossil_frights:game/settings/setting3/reset
function fossil_frights:game/settings/speedrun_toggle/reset
function fossil_frights:game/settings/message_sync
tag @a[team=ff_guard] remove ff_settings_spectator_deny
tag @a[team=ff_guard] remove ff_settings_music_off
tag @a[team=ff_guard] remove ff_muted_chat
tag @a[team=ff_guard] remove ff_settings_chat_hidden
tag @a[team=ff_guard] remove ff_settings_speedrun_show
function fossil_frights:game/start_room/timer_bars/close
function fossil_frights:animations/door/open
tp @a[team=ff_guard] 20 70 20 0 0
function fossil_frights:join/join_pads/party/setup
function fossil_frights:messages/multiplayer/party_mode_activated
