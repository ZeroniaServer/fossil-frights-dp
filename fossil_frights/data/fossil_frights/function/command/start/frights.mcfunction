execute if predicate fossil_frights:player/is_playing if score $party_mode_active ff_game_state matches 1 run return run function fossil_frights:game/start_room/settings/gamemode/frights/click
execute if predicate fossil_frights:player/is_playing if score $heist_mode_active ff_game_state matches 1 run return run function fossil_frights:game/start_room/settings/gamemode/frights/click
function fossil_frights:command/start
