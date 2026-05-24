execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -13.5 71.6 30.5 -45 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/medium_tasks
execute if score @s ff_tutorial_tick matches 2..161 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~0.026517 ~ ~0.026517 -45 0
execute if score @s ff_tutorial_tick matches 162 run function fossil_frights:tutorial/next_scene
