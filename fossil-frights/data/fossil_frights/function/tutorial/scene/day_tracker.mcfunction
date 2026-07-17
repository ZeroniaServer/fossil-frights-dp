execute if score @s ff_tutorial_tick matches 1 run tag @s add tutorial_complete
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 19.5 -90 0
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/day_tracker
execute if score @s ff_tutorial_tick matches 2 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 3 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 22.189 -90 0
execute if score @s ff_tutorial_tick matches 42 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:40,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 43 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 24.878 -90 0
execute if score @s ff_tutorial_tick matches 82 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:39,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 83 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 20.5 72.00 27.5 -90 0
execute if score @s ff_tutorial_tick matches 122 run function fossil_frights:tutorial/next_scene
