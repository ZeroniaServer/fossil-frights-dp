execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
scoreboard players operation $settings_saved_game_running ff_game_state = $game_running ff_game_state
scoreboard players operation $settings_saved_day_active ff_day = $day_active ff_day
scoreboard players operation $settings_saved_day_current ff_day = $day_current ff_day
function fossil_frights:game/start_room/settings/gamemode/remove_other_players
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/reset
execute if score $party_mode_active ff_game_state matches 1 run function fossil_frights:game/party/reset
scoreboard players set $heist_mode_active ff_game_state 0
scoreboard players set $party_mode_active ff_game_state 0
scoreboard players set $run_multiplayer ff_game_state 0
tag @a remove ff_settings_randomizer_on
function fossil_frights:join/join_pads/setup
scoreboard players operation $game_running ff_game_state = $settings_saved_game_running ff_game_state
scoreboard players operation $day_active ff_day = $settings_saved_day_active ff_day
scoreboard players operation $day_current ff_day = $settings_saved_day_current ff_day
function fossil_frights:game/start_room/settings/board/refresh
tellraw @s {text:"Gamemode set to Frights.",color:"green"}
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
