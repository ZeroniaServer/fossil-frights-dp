execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/not_active_player
execute unless predicate fossil_frights:player/is_playing run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/heists_enable_after_start
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/heists_enable_before_day
execute if score $day_active ff_day matches 1 run return 0
execute unless score $day_current ff_day matches 0 run function fossil_frights:messages/error/heists_enable_before_day
execute unless score $day_current ff_day matches 0 run return 0
execute if score $party_mode_active ff_game_state matches 1 run function fossil_frights:messages/error/heists_enable_party_mode
execute if score $party_mode_active ff_game_state matches 1 run return 0
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:messages/error/heists_already_enabled
execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $heist_button_lock ff_game_state matches 1.. run return 0
function fossil_frights:game/heists/activate
