execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 84.00 46.5 0 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/intro
execute if score @s ff_tutorial_tick matches 2..121 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~-0.066667 0 0
execute if score @s ff_tutorial_tick matches 122 run function fossil_frights:tutorial/next_scene
