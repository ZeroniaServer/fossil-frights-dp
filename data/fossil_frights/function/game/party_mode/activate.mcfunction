execute unless score $game_running ff_game_state matches 1 run tellraw @s [{"text":"⚠ ","color":"red"},{"text":"Party Mode can only be enabled after a run has started.","color":"red"}]
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run tellraw @s [{"text":"⚠ ","color":"red"},{"text":"Party Mode can only be enabled between days.","color":"red"}]
execute if score $day_active ff_day matches 1 run return 0
scoreboard players set $party_button_lock ff_game_state 20
execute unless score $day_current ff_day matches 0 run tellraw @s [{"text":"⚠ ","color":"red"},{"text":"Party Mode must be enabled before Day 1 starts.","color":"red"}]
execute unless score $day_current ff_day matches 0 run return 0
execute if score $party_mode_active ff_game_state matches 1 run return 0
execute as @a[tag=ff_active] run function fossil_frights:game/party_mode/add_current_if_missing
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $party_mode_active ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 1
function fossil_frights:game/settings/toggle_spectators/reset
function fossil_frights:game/settings/setting2/reset
function fossil_frights:game/settings/setting3/reset
function fossil_frights:game/settings/speedrun_toggle/reset
function fossil_frights:game/settings/message_sync
tag @a[tag=ff_active] remove ff_settings_spectator_deny
tag @a[tag=ff_active] remove ff_settings_music_off
tag @a[tag=ff_active] remove ff_muted_chat
tag @a[tag=ff_active] remove ff_settings_chat_hidden
tag @a[tag=ff_active] remove ff_settings_speedrun_show
function fossil_frights:game/start_room/timer_bars/close
function fossil_frights:animations/door/open
tp @a[tag=ff_active] 20 70 20 0 0
function fossil_frights:join/party_setup
function fossil_frights:messages/multiplayer/party_mode_activated
