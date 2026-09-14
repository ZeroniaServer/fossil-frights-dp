execute unless predicate fossil_frights:game_state/game_running run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.party_mode.1"}]}
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $day_active ff_day matches 1 run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.party_mode.2"}]}
execute if score $day_active ff_day matches 1 run return 0
scoreboard players set $party_button_lock ff_game_state 20
execute unless score $day_current ff_day matches 0 run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.party_mode.3"}]}
execute unless score $day_current ff_day matches 0 run return 0
execute if predicate fossil_frights:game_state/party_mode_active run return 0
execute as @a[team=ff_guard] run function fossil_frights:game/party/add_current_if_missing
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $party_mode_active ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 1
function fossil_frights:game/start_room/settings/sync_message_state
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:animations/front_door/open
function fossil_frights:join/join_pads/party/setup
function fossil_frights:game/start_room/locked_door/show
function fossil_frights:messages/duos/party_mode_activated
