execute on passengers on passengers if entity @s[type=minecraft:item_display,tag=ff_rock.brain] unless predicate fossil_frights:entity/rock/can_be_picked_up run return fail

tag @s add ff_rock.stopped_moving

summon minecraft:shulker ~ ~ ~ {Tags:["ff_rock","ff_rock.collision","ff_rock.new"],NoAI:true,Invulnerable:true,Silent:true,Color:6,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:4,show_particles:false}],attributes:[{id:"minecraft:scale",base:0.5}]}
execute on passengers on passengers run ride @e[limit=1,type=minecraft:shulker,tag=ff_rock.new] mount @s[type=minecraft:item_display,tag=ff_rock.brain]
execute on passengers on passengers on passengers run tag @s remove ff_rock.new
