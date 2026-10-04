scoreboard players operation #rotating_axes_phase ff_temple_run_anim = #gametime ff_global
scoreboard players operation #rotating_axes_phase ff_temple_run_anim %= #40 ff_temple_run_math
scoreboard players operation #rotating_axes_cycle ff_temple_run_anim = #gametime ff_global
scoreboard players operation #rotating_axes_cycle ff_temple_run_anim /= #40 ff_temple_run_math
scoreboard players operation #rotating_axes_cycle ff_temple_run_anim %= #2 ff_temple_run_math
scoreboard players operation #rotating_axes_visual_phase ff_temple_run_anim = #40 ff_temple_run_math
scoreboard players operation #rotating_axes_visual_phase ff_temple_run_anim -= #rotating_axes_phase ff_temple_run_anim
scoreboard players operation #rotating_axes_visual_phase ff_temple_run_anim %= #40 ff_temple_run_math
scoreboard players operation #rotating_axes_collision_phase ff_temple_run_anim = #40 ff_temple_run_math
scoreboard players operation #rotating_axes_collision_phase ff_temple_run_anim -= #rotating_axes_phase ff_temple_run_anim
scoreboard players operation #rotating_axes_collision_phase ff_temple_run_anim %= #40 ff_temple_run_math

# axe 4 animation
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 0 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 0 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.0f,-1.0f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 10 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 10 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,-0.70710677f,0.0f,-0.70710677f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 20 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 20 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,-1.0f,0.0f,0.0f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 30 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,-0.70710677f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 30 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,-0.70710677f,0.0f,0.70710677f],right_rotation:[0.70710677f,0.70710677f,0.0f,0.0f]}}

# axe 5 animation
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 0 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 0 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.0f,-1.0f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 10 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,-0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 10 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,-0.70710677f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 20 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,-1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 20 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 30 if score #rotating_axes_cycle ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,-0.70710677f,0.0f,-0.70710677f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}
execute if score #rotating_axes_visual_phase ff_temple_run_anim matches 30 if score #rotating_axes_cycle ff_temple_run_anim matches 1 run execute as @e[type=minecraft:item_display,tag=tr_axe5,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.70710677f,0.70710677f]}}

# axe 4 collision
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 0 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 90 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 1 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 81 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 2 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 72 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 3 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 63 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 4 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 54 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 5 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 45 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 6 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 36 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 7 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 27 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 8 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 18 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 9 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 9 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 10 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 0 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 11 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -9 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 12 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -18 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 13 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -27 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 14 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -36 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 15 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -45 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 16 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -54 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 17 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -63 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 18 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -72 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 19 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 -81 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 20 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 270 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 21 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 261 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 22 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 252 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 23 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 243 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 24 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 234 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 25 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 225 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 26 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 216 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 27 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 207 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 28 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 198 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 29 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 189 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 30 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 180 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 31 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 171 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 32 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 162 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 33 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 153 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 34 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 144 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 35 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 135 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 36 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 126 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 37 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 117 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 38 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 108 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 39 run tp @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] 114.0 77.6 66.0 99 0
execute as @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] at @s run tp @s ~ ~ ~ ~-90 ~
execute as @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] at @s run tp @s ^ ^ ^2.5

# axe 5 collision
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 0 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 270 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 1 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 279 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 2 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 288 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 3 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 297 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 4 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 306 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 5 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 315 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 6 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 324 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 7 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 333 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 8 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 342 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 9 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 351 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 10 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 0 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 11 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 9 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 12 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 18 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 13 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 27 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 14 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 36 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 15 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 45 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 16 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 54 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 17 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 63 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 18 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 72 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 19 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 81 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 20 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 90 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 21 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 99 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 22 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 108 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 23 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 117 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 24 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 126 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 25 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 135 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 26 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 144 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 27 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 153 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 28 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 162 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 29 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 171 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 30 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 180 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 31 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 189 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 32 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 198 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 33 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 207 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 34 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 216 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 35 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 225 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 36 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 234 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 37 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 243 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 38 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 252 0
execute if score #rotating_axes_collision_phase ff_temple_run_anim matches 39 run tp @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] 111.0 78.6 69.0 261 0
execute as @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] at @s run tp @s ^ ^ ^2.5
execute as @e[type=minecraft:item_display,tag=tr_axe4_collision_display,limit=1] at @s run tp @e[type=minecraft:silverfish,tag=tr_axe4_attacker,limit=1] ~ ~-0.5 ~
execute as @e[type=minecraft:item_display,tag=tr_axe5_collision_display,limit=1] at @s run tp @e[type=minecraft:silverfish,tag=tr_axe5_attacker,limit=1] ~ ~-0.5 ~
