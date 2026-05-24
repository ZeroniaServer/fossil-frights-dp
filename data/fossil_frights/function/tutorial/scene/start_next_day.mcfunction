execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 27.50 0 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/start_next_day
execute if score @s ff_tutorial_tick matches 2 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:33,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 3 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 26.833 0 0
execute if score @s ff_tutorial_tick matches 35 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:33,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 36 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 26.167 0 0
execute if score @s ff_tutorial_tick matches 68 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:33,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 69 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 25.50 0 0
execute if score @s ff_tutorial_tick matches 102 run function fossil_frights:tutorial/next_scene
