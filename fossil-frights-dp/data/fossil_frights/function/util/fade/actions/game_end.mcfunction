tp @s 0 80 0 0 0
execute if score $defeat_anim ff_game_state matches 1 run schedule function fossil_frights:animations/defeat/stop 1t
