execute if score @s ff_tutorial_tick matches 1 run tp @s 10.5 97.00 -47.5 10 10
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/outro
execute if score @s ff_tutorial_tick matches 2..221 run tp @s ~-0.006314 ~ ~0.035811 10 10
execute if score @s ff_tutorial_tick matches 222 run function fossil_frights:tutorial/stop_silent
