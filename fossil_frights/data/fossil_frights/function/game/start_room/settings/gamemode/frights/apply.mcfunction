execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless function fossil_frights:game/start_room/settings/gamemode/rate_limit run return 0
scoreboard players operation $settings_saved_game_running ff_game_state = $game_running ff_game_state
scoreboard players operation $settings_saved_day_active ff_day = $day_active ff_day
scoreboard players operation $settings_saved_day_current ff_day = $day_current ff_day
function fossil_frights:game/start_room/settings/gamemode/remove_other_players
function fossil_frights:game/start_room/settings/gamemode/reset_frights_loadout
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/reset/main
execute if score $party_mode_active ff_game_state matches 1 run function fossil_frights:animations/door/close
function fossil_frights:game/party/reset
function fossil_frights:game/start_room/locked_door/show
function fossil_frights:game/party/add_current_if_missing
scoreboard players set $heist_mode_active ff_game_state 0
scoreboard players set $party_mode_active ff_game_state 0
scoreboard players set $run_multiplayer ff_game_state 0
function fossil_frights:join/join_pads/setup
scoreboard players set $heist_button_lock ff_game_state 40
scoreboard players set $party_button_lock ff_game_state 40
execute positioned 20.0 71.0 28.0 as @e[limit=1,dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_button] run function fossil_frights:interactions/button/enable
scoreboard players operation $game_running ff_game_state = $settings_saved_game_running ff_game_state
scoreboard players operation $day_active ff_day = $settings_saved_day_active ff_day
scoreboard players operation $day_current ff_day = $settings_saved_day_current ff_day
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:messages/settings/gamemode_frights
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
