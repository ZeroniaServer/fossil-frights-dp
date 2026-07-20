execute unless predicate fossil_frights:player/is_playing run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $forklift_watch ff_game_state matches 1 run return 0
function fossil_frights:animations/forklift/lower
