execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 1 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 86.00 -2.5 0 5
execute if score @s ff_tutorial_tick matches 1 run function fossil_frights:messages/tutorial/join
execute if score @s ff_tutorial_tick matches 2 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:30,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 3 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 85.831 -1.489 0 5
execute if score @s ff_tutorial_tick matches 32 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:30,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 33 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 85.663 -0.478 0 5
execute if score @s ff_tutorial_tick matches 62 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:29,interpolation_duration:0}
execute if score @s ff_tutorial_tick matches 63 as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] at @s run tp @s 0.5 85.50 0.5 0 5
execute if score @s ff_tutorial_tick matches 92 run function fossil_frights:tutorial/next_scene
