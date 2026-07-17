execute unless score $evolution_hit ff_task_state matches 0 run return 0
execute unless function fossil_frights:tasks/hard/evolution/check_hitbox run return 0
execute if entity @s[tag=ff_evolution_1] as @e[type=minecraft:mannequin,tag=ff_evolution_1,limit=1] run function fossil_frights:tasks/hard/evolution/punched_entity
execute if entity @s[tag=ff_evolution_2] as @e[type=minecraft:mannequin,tag=ff_evolution_2,limit=1] run function fossil_frights:tasks/hard/evolution/punched_entity
execute if entity @s[tag=ff_evolution_3] as @e[type=minecraft:mannequin,tag=ff_evolution_3,limit=1] run function fossil_frights:tasks/hard/evolution/punched_entity
execute if entity @s[tag=ff_evolution_4] as @e[type=minecraft:mannequin,tag=ff_evolution_4,limit=1] run function fossil_frights:tasks/hard/evolution/punched_entity
data remove entity @s interaction
data remove entity @s attack
