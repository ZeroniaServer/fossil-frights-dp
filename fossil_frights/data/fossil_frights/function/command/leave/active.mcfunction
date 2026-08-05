execute if score $party_mode_active ff_game_state matches 1 run return run function fossil_frights:command/leave/party
execute if score $heist_mode_active ff_game_state matches 1 run return run function fossil_frights:command/leave/heists
function fossil_frights:game/reset/player_leave
