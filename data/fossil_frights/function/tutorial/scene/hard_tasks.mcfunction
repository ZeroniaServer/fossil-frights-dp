execute if score @s ff_tutorial_tick matches 1 run tp @s 46.5 69.00 62.5 235 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/hard_tasks
execute if score @s ff_tutorial_tick matches 2..81 run tp @s ~-0.026517 ~ ~0.026517 235 0
execute if score @s ff_tutorial_tick matches 82 run function fossil_frights:tutorial/next_scene
