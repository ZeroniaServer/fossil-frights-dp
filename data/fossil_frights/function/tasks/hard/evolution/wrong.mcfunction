execute at @s run function fossil_frights:tasks/hard/evolution/wrong_fx
function fossil_frights:tasks/hard/evolution/wrong_return
scoreboard players set $evolution_step ff_task_state 1
scoreboard players set $evolution_flash_red ff_task_state 20
execute as @e[type=minecraft:mannequin,tag=ff_evolution] run data merge entity @s {Invulnerable:0b}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_1,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_1,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_1"}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_2,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_2,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_2"}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_3,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_3,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_3"}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_4,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_4,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_4"}
