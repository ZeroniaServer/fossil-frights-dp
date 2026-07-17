execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -13.5 71.6 30.5 -45 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/medium_tasks
execute if score @s ff_tutorial_tick matches 2 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 3 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -12.433 71.6 31.567 -45 0
execute if score @s ff_tutorial_tick matches 42 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 43 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -11.365 71.6 32.635 -45 0
execute if score @s ff_tutorial_tick matches 82 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 83 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -10.298 71.6 33.702 -45 0
execute if score @s ff_tutorial_tick matches 122 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:39,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 123 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s -9.257 71.6 34.743 -45 0
execute if score @s ff_tutorial_tick matches 162 run function fossil_frights:tutorial/next_scene
