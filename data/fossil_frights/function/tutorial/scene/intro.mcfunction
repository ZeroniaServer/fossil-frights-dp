execute if score @s ff_tutorial_tick matches 1 run tp @s 0.5 82.00 46.5 0 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/intro
execute if score @s ff_tutorial_tick matches 2..121 run tp @s ~ ~ ~-0.066667 0 0
execute if score @s ff_tutorial_tick matches 122 run function fossil_frights:tutorial/next_scene
