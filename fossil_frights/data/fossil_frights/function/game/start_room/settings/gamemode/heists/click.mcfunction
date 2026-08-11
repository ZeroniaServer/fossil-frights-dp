advancement revoke @s only fossil_frights:start_room/settings/mode_heists_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if score $heist_mode_active ff_game_state matches 1 run return 0
function fossil_frights:game/start_room/settings/gamemode/heists/request
