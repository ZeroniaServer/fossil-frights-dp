advancement revoke @s only fossil_frights:start_room/settings/mode_heists_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
function fossil_frights:game/start_room/settings/gamemode/heists/request
