execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -6.5 73.50 23.0 90 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/hazards
execute if score @s ff_tutorial_tick matches 2..121 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~-0.041667 ~ ~ 90 0
execute if score @s ff_tutorial_tick matches 122 run function fossil_frights:tutorial/next_scene
