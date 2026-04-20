execute if score @s ff_tutorial_tick matches 1 run tp @s 20.5 70.00 19.5 -90 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/day_tracker
execute if score @s ff_tutorial_tick matches 2..121 run tp @s ~ ~ ~0.066667 -90 0
execute if score @s ff_tutorial_tick matches 122 run function fossil_frights:tutorial/next_scene
