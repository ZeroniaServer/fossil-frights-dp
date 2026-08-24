advancement revoke @s only fossil_frights:start_room/settings/mode_party_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if predicate fossil_frights:game_state/party_mode_active run return 0
function fossil_frights:game/start_room/settings/gamemode/party/request
