# Group 1: 0 ticks
# Group 2: 65 ticks
# Raise: 5 ticks
# Hold: 15 ticks
# Lower: 30 ticks
# Interval: 15 ticks

scoreboard players operation #spear_trap_spiral_phase ff_temple_run_anim = #gametime ff_global
scoreboard players operation #spear_trap_spiral_phase ff_temple_run_anim %= #130 ff_temple_run_math

execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_1] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_2] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_3] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_4] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_5] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 145 77 84 147 77 86 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 150 78 87 152 78 89 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 155 79 84 157 79 86 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 160 80 87 162 80 89 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 165 81 84 167 81 86 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 145 78 84 147 78 86 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 150 79 87 152 79 89 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 155 80 84 157 80 86 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 160 81 87 162 81 89 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 165 82 84 167 82 86 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 at @e[type=minecraft:item_display,tag=spear_trap_spiral_1_1,limit=1] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..8] ~ ~ ~ 0.5 1

execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 20 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_1] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 20 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_2] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 20 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_3] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 20 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_4] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 20 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1_5] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 145 77 84 147 77 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 150 78 87 152 78 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 155 79 84 157 79 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 160 80 87 162 80 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 165 81 84 167 81 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 145 78 84 147 78 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 150 79 87 152 79 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 155 80 84 157 80 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 160 81 87 162 81 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 165 82 84 167 82 86 minecraft:air strict

execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_1] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_2] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_3] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_4] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_5] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 145 77 87 147 77 89 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 150 78 84 152 78 86 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 155 79 87 157 79 89 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 160 80 84 162 80 86 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 165 81 87 167 81 89 minecraft:sweet_berry_bush[age=1] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 145 78 87 147 78 89 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 150 79 84 152 79 86 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 155 80 87 157 80 89 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 160 81 84 162 81 86 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 run fill 165 82 87 167 82 89 minecraft:wither_rose strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 65 at @e[type=minecraft:item_display,tag=spear_trap_spiral_2_1,limit=1] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..8] ~ ~ ~ 0.5 1

execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 85 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_1] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 85 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_2] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 85 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_3] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 85 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_4] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 85 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2_5] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 145 77 87 147 77 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 150 78 84 152 78 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 155 79 87 157 79 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 160 80 84 162 80 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 165 81 87 167 81 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 145 78 87 147 78 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 150 79 84 152 79 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 155 80 87 157 80 89 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 160 81 84 162 81 86 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 115 run fill 165 82 87 167 82 89 minecraft:air strict
