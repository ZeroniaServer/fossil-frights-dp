execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 96.50 83.5 180 20
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/easy_tasks
execute if score @s ff_tutorial_tick matches 2..11 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 19
execute if score @s ff_tutorial_tick matches 12..21 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 18
execute if score @s ff_tutorial_tick matches 22..31 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 17
execute if score @s ff_tutorial_tick matches 32..41 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 16
execute if score @s ff_tutorial_tick matches 42..51 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 15
execute if score @s ff_tutorial_tick matches 52..61 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 14
execute if score @s ff_tutorial_tick matches 62..71 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 13
execute if score @s ff_tutorial_tick matches 72..81 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 12
execute if score @s ff_tutorial_tick matches 82..91 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 11
execute if score @s ff_tutorial_tick matches 92..101 as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s ~ ~ ~0.02 180 10
execute if score @s ff_tutorial_tick matches 102 run function fossil_frights:tutorial/next_scene
