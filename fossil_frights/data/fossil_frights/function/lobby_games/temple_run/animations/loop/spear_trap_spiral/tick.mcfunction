# 8 second loop
# Starts 0s, 1.5s, 3s, 6s
# Raise 5 ticks, hold 15 ticks, lower 30 ticks
scoreboard players operation #spear_trap_spiral_phase ff_temple_run_anim = #gametime ff_global
scoreboard players operation #spear_trap_spiral_phase ff_temple_run_anim %= #160 ff_temple_run_math
scoreboard players operation #spear_trap_spiral_cycle ff_temple_run_anim = #gametime ff_global
scoreboard players operation #spear_trap_spiral_cycle ff_temple_run_anim /= #160 ff_temple_run_math

execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 run fill 147 77 81 149 77 79 minecraft:sweet_berry_bush[age=3] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0..49 if entity @a[x=147,y=77,z=79,dx=2,dy=1,dz=2] run effect give @a[x=147,y=77,z=79,dx=2,dy=1,dz=2] minecraft:poison 2 0 true
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run fill 147 77 81 149 77 79 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 20 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_1,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 30 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 30 run fill 147 79 87 149 79 85 minecraft:sweet_berry_bush[age=3] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 30..79 if entity @a[x=147,y=79,z=85,dx=2,dy=1,dz=2] run effect give @a[x=147,y=79,z=85,dx=2,dy=1,dz=2] minecraft:poison 2 0 true
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 80 run fill 147 79 87 149 79 85 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 50 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_2,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 60 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_3,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 60 run fill 153 81 87 155 81 85 minecraft:sweet_berry_bush[age=3] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 60..109 if entity @a[x=153,y=81,z=85,dx=2,dy=1,dz=2] run effect give @a[x=153,y=81,z=85,dx=2,dy=1,dz=2] minecraft:poison 2 0 true
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 110 run fill 153 81 87 155 81 85 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 80 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_3,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.5f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 120 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.40625f,0.0f]}}
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 120 run fill 156 81 84 158 81 82 minecraft:sweet_berry_bush[age=3] strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 120..159 if entity @a[x=156,y=81,z=82,dx=2,dy=1,dz=2] run effect give @a[x=156,y=81,z=82,dx=2,dy=1,dz=2] minecraft:poison 2 0 true
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 10 run fill 156 81 84 158 81 82 minecraft:air strict
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 140 run execute as @e[type=minecraft:item_display,tag=spear_trap_spiral_4,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.40625f,0.0f]}}

execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 0 at @e[type=minecraft:item_display,tag=spear_trap_spiral_1,limit=1] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..8] ~ ~ ~ 0.5 1
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 30 at @e[type=minecraft:item_display,tag=spear_trap_spiral_2,limit=1] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..8] ~ ~ ~ 0.5 1
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 60 at @e[type=minecraft:item_display,tag=spear_trap_spiral_3,limit=1] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..8] ~ ~ ~ 0.5 1
execute if score #spear_trap_spiral_phase ff_temple_run_anim matches 120 at @e[type=minecraft:item_display,tag=spear_trap_spiral_4,limit=1] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..8] ~ ~ ~ 0.5 1
