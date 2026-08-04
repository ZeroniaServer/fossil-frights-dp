execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/only_active_players_can_start_multiplayer_games
execute unless predicate fossil_frights:player/is_playing run return 0
execute if score $party_mode_active ff_game_state matches 1 run return 0
execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/must_invite_before_starting_game
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_current ff_day matches 1.. run function fossil_frights:messages/error/must_invite_before_starting_game
execute if score $day_current ff_day matches 1.. run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/must_invite_before_starting_game
execute if score $day_active ff_day matches 1 run return 0
execute if score $party_member_count ff_game_state matches 2.. run function fossil_frights:messages/duos/party_full
execute if score $party_member_count ff_game_state matches 2.. run return 0
execute if score $invite_pending ff_game_state matches 1 run function fossil_frights:messages/duos/invite_already_sent
execute if score $invite_pending ff_game_state matches 1 run return 0
function fossil_frights:game/start_room/settings/duos/gui/open
