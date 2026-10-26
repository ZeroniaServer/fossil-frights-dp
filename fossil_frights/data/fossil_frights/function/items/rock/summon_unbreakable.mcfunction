summon minecraft:item_display ~ ~ ~ {Tags:["ff_rock","ff_rock.brain","ff_rock.unbreakable","ff_rock.new1"],view_range:0,width:0.001,height:0.001,Passengers:[{id:"minecraft:interaction",Tags:["ff_rock","ff_rock.interaction"],width:0.502,height:0.502},{id:"minecraft:interaction",Tags:["ff_rock","ff_rock.offset"],width:0,height:0.125,Passengers:[{id:"minecraft:item_display",Tags:["ff_rock","ff_rock.visual"],width:1,height:0.375,item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil_frights:items/misc/rock"}},transformation:{right_rotation:[0,0,0,1],scale:[0.998,0.998,0.998],left_rotation:[0,0,0,1],translation:[-0.001,0.124,-0.001]}}]}]}
execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] ff_rock_spawned_timestamp run compute default integer fossil_frights:gametime

execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] ff_active_uuid_0 run data get storage fossil_frights:rock thrower[0]
execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] ff_active_uuid_1 run data get storage fossil_frights:rock thrower[1]
execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] ff_active_uuid_2 run data get storage fossil_frights:rock thrower[2]
execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] ff_active_uuid_3 run data get storage fossil_frights:rock thrower[3]

execute as @e[limit=1,distance=..0.001,type=minecraft:armor_stand,tag=ff_rock.new2] on passengers run ride @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] mount @s[type=minecraft:interaction,tag=ff_rock.offset]

$summon minecraft:armor_stand ~ ~ ~ {Tags:["ff_rock","ff_rock.physics","ff_rock.new2"],Motion:$(velocity),Small:true,Invulnerable:true,Silent:true,attributes:[{id:"minecraft:scale",base:0.0625},{id:"minecraft:bounciness",base:0.3},{id:"minecraft:air_drag_modifier",base:0},{id:"minecraft:friction_modifier",base:2}],Passengers:[{id:"minecraft:interaction",Tags:["ff_rock","ff_rock.offset"],width:0,height:-0.061718}]}
execute as @e[limit=1,distance=..0.001,type=minecraft:armor_stand,tag=ff_rock.new2] on passengers run ride @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_rock.new1] mount @s[type=minecraft:interaction,tag=ff_rock.offset]
execute as @e[limit=1,distance=..0.001,type=minecraft:armor_stand,tag=ff_rock.new2] on passengers on passengers run tag @s remove ff_rock.new1
tag @e[limit=1,distance=..0.001,type=minecraft:armor_stand,tag=ff_rock.new2] remove ff_rock.new2
