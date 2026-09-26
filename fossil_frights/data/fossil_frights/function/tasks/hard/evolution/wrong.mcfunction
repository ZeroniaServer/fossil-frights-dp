execute at @s run function fossil_frights:tasks/hard/evolution/wrong_fx
function fossil_frights:tasks/hard/evolution/wrong_return
function fossil_frights:tasks/hard/evolution/restore_hitboxes
scoreboard players set $evolution_step ff_task_state 1
scoreboard players set $evolution_flash_red ff_task_state 20
tag @e[type=minecraft:mannequin,tag=ff_evolution] remove ff_evolution_locked
execute as @e[type=minecraft:mannequin,tag=ff_evolution] run data modify entity @s Invulnerable set value false
effect give @e[type=minecraft:mannequin,tag=ff_evolution] minecraft:regeneration 1000000 10 true
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_1,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_1,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_1"}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_2,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_2,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_2"}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_3,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_3,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_3"}
execute unless entity @e[type=minecraft:ocelot,tag=ff_evolution_4,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_4,limit=1] run function fossil_frights:tasks/hard/evolution/driver_macro {tag:"ff_evolution_4"}
