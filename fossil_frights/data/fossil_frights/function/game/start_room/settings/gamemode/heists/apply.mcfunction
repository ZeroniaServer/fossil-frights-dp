execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
function fossil_frights:game/start_room/settings/gamemode/remove_other_players
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/reset
execute if score $party_mode_active ff_game_state matches 1 run function fossil_frights:game/party/reset
scoreboard players set $party_mode_active ff_game_state 0
scoreboard players set $heist_mode_active ff_game_state 0
tag @a[team=ff_guard] remove ff_settings_speedrun_show
function fossil_frights:game/heists/activate
function fossil_frights:game/start_room/settings/board/refresh
