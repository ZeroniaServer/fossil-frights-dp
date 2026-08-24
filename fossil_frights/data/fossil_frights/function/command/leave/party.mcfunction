function fossil_frights:game/party/remove_current
function fossil_frights:player/lobby_reset_active
execute unless predicate fossil_frights:game_state/game_running if score $party_member_count ff_game_state matches 0 unless score $victory_complete ff_game_state matches 1 run function fossil_frights:messages/leave/active_player_left
