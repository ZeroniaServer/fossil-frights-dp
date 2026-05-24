execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 96.50 83.5 180 20
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/easy_tasks
execute if score @s ff_tutorial_tick matches 2 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:33,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 3 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 96.50 84.167 180 16.667
execute if score @s ff_tutorial_tick matches 35 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:33,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 36 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 96.50 84.833 180 13.333
execute if score @s ff_tutorial_tick matches 68 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:33,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 69 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 96.50 85.5 180 10
execute if score @s ff_tutorial_tick matches 102 run function fossil_frights:tutorial/next_scene
