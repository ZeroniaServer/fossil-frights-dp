execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless function fossil_frights:game/start_room/settings/gamemode/rate_limit run return 0
scoreboard players operation $settings_saved_game_running ff_game_state = $game_running ff_game_state
scoreboard players operation $settings_saved_day_active ff_day = $day_active ff_day
scoreboard players operation $settings_saved_day_current ff_day = $day_current ff_day
function fossil_frights:game/start_room/settings/gamemode/remove_other_players
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/reset
function fossil_frights:game/party/reset
scoreboard players set $party_mode_active ff_game_state 0
scoreboard players set $heist_mode_active ff_game_state 0
function fossil_frights:game/heists/activate
scoreboard players set $heist_button_lock ff_game_state 40
scoreboard players set $party_button_lock ff_game_state 40
execute positioned 20.0 71.0 28.0 as @e[limit=1,dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_button] run function fossil_frights:button/enable
scoreboard players operation $game_running ff_game_state = $settings_saved_game_running ff_game_state
scoreboard players operation $day_active ff_day = $settings_saved_day_active ff_day
scoreboard players operation $day_current ff_day = $settings_saved_day_current ff_day
function fossil_frights:game/start_room/settings/board/refresh
