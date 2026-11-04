summon minecraft:ocelot 25 94 43 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:true,Silent:true,PersistenceRequired:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[25,94,43],home_radius:2}
summon minecraft:ocelot 0 94 58 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:true,Silent:true,PersistenceRequired:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[0,94,58],home_radius:10}
summon minecraft:ocelot 13 94 56 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:true,Silent:true,PersistenceRequired:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[13,94,56],home_radius:10}
summon minecraft:ocelot -9 94 46 {Tags:["ff_evolution_driver","ff_evolution_start"],Team:"ff_evolution_mannequin",Invulnerable:true,Silent:true,PersistenceRequired:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.22d},{id:"minecraft:scale",base:0.5d}],home_pos:[-9,94,46],home_radius:10}
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_4
execute as @e[type=minecraft:ocelot,tag=ff_evolution_4,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_3
execute as @e[type=minecraft:ocelot,tag=ff_evolution_3,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_2
execute as @e[type=minecraft:ocelot,tag=ff_evolution_2,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
execute as @e[type=minecraft:ocelot,tag=ff_evolution_start,tag=!ff_evolution_assigned,sort=random,limit=1] run tag @s add ff_evolution_1
execute as @e[type=minecraft:ocelot,tag=ff_evolution_1,tag=!ff_evolution_assigned,limit=1] run tag @s add ff_evolution_assigned
function fossil_frights:tasks/hard/evolution/summon_static
execute as @e[type=minecraft:mannequin,tag=ff_evolution] run data modify entity @s Invulnerable set value false
effect give @e[type=minecraft:mannequin,tag=ff_evolution] minecraft:regeneration 1000000 10 true
