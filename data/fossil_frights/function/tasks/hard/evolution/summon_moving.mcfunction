summon minecraft:ocelot 24 94 63 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:1b,Silent:1b,PersistenceRequired:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[24,94,63],home_radius:20}
summon minecraft:ocelot -10 94 80 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:1b,Silent:1b,PersistenceRequired:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[-10,94,80],home_radius:20}
summon minecraft:ocelot -21 94 63 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:1b,Silent:1b,PersistenceRequired:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[-21,94,63],home_radius:20}
summon minecraft:ocelot 20 94 26 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:1b,Silent:1b,PersistenceRequired:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[20,94,26],home_radius:20}
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_4
execute as @e[type=minecraft:ocelot,tag=ff_evolution_4,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_3
execute as @e[type=minecraft:ocelot,tag=ff_evolution_3,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_2
execute as @e[type=minecraft:ocelot,tag=ff_evolution_2,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_1
execute as @e[type=minecraft:ocelot,tag=ff_evolution_1,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
function fossil_frights:tasks/hard/evolution/summon_static
execute as @e[type=minecraft:mannequin,tag=ff_evolution] run data merge entity @s {Invulnerable:0b}
effect give @e[type=minecraft:mannequin,tag=ff_evolution] minecraft:regeneration 1000000 10 true
