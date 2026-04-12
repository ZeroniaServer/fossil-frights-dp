execute if score @s ff_tutorial_tick matches 1 run tp @s 0.5 84.00 -2.5 0 5
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/join
execute if score @s ff_tutorial_tick matches 2..91 run tp @s ~ ~-0.005556 ~0.033333 0 5
execute if score @s ff_tutorial_tick matches 92 run function fossil_frights:tutorial/next_scene
