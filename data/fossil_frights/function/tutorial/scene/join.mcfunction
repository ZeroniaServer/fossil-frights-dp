execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 86.00 -2.5 0 5
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/join
execute if score @s ff_tutorial_tick matches 2..91 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~-0.005556 ~0.033333 0 5
execute if score @s ff_tutorial_tick matches 92 run function fossil_frights:tutorial/next_scene
