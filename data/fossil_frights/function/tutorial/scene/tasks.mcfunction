execute if score @s ff_tutorial_tick matches 1 run tp @s 18.5 70.00 27.50 0 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/tasks
execute if score @s ff_tutorial_tick matches 2..141 run tp @s ~0.021429 ~ ~ 0 0
execute if score @s ff_tutorial_tick matches 142 run function fossil_frights:tutorial/next_scene
