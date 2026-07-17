execute unless entity @e[type=mannequin,tag=ff_game_start_dummy,limit=1] run return 0
execute unless score $game_start_steps ff_game_state matches 1.. run return 0
execute as @e[type=mannequin,tag=ff_game_start_dummy,limit=1] at @s run tp @s ^ ^ ^0.4 0 0
scoreboard players remove $game_start_steps ff_game_state 1
execute if score $game_start_steps ff_game_state matches 1.. run schedule function fossil_frights:animations/game_start/move 3t
