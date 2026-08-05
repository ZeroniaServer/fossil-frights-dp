function fossil_frights:leaderboards/store_pending_disconnect
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:messages/leave/active_player_left
execute if score $party_mode_active ff_game_state matches 1 run function fossil_frights:messages/leave/active_player_left
function fossil_frights:game/reset
