execute if score @s ff_tutorial_tick matches 1 run tp @s 20.5 70.00 27.50 0 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/start_next_day
execute if score @s ff_tutorial_tick matches 2..101 run tp @s ~ ~ ~-0.02 0 0
execute if score @s ff_tutorial_tick matches 102 run function fossil_frights:tutorial/next_scene
