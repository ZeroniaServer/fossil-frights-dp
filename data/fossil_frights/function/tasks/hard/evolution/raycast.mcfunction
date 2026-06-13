execute as @e[type=minecraft:mannequin,tag=ff_evolution,dx=0,dy=0,dz=0,sort=nearest,limit=1] run function fossil_frights:tasks/hard/evolution/punched_entity
execute if entity @e[type=minecraft:mannequin,tag=ff_evolution,dx=0,dy=0,dz=0] run return 0
scoreboard players remove $evolution_ray ff_task_state 1
execute if score $evolution_ray ff_task_state matches 1.. positioned ^ ^ ^0.16 run function fossil_frights:tasks/hard/evolution/raycast
