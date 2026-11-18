tag @s remove ff_tutorial_return_to_game
tag @s remove ff_tutorial_return_started
execute unless predicate fossil_frights:player/is_playing run function fossil_frights:command/start
