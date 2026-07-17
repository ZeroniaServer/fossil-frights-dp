tp @s -33 81 73.5 0 0
execute unless score $defeat_anim ff_game_state matches 1 at @s run function fossil_frights:animations/defeat/start_after_fade
