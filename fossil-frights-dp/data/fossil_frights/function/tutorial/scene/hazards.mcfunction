execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -6.5 73.50 23.0 90 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/hazards
execute if score @s ff_tutorial_tick matches 2 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 3 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -8.181 73.50 23.0 90 0
execute if score @s ff_tutorial_tick matches 42 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 43 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -9.861 73.50 23.0 90 0
execute if score @s ff_tutorial_tick matches 82 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:39,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 83 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -11.5 73.50 23.0 90 0
execute if score @s ff_tutorial_tick matches 122 run function fossil_frights:tutorial/next_scene
