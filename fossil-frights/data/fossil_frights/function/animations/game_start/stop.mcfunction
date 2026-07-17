schedule clear fossil_frights:animations/game_start/move
schedule clear fossil_frights:animations/game_start/stop
scoreboard players set $game_start_steps ff_game_state 0
tp @e[type=mannequin,tag=ff_game_start_dummy] 0 -200 0
kill @e[type=mannequin,tag=ff_game_start_dummy]
