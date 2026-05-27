tag @s add ff_game_start_source
execute if entity @a[tag=!ff_game_start_source] at @s run function fossil_frights:animations/game_start/run
tag @s remove ff_game_start_source
tp @s 20 70 20 0 0
