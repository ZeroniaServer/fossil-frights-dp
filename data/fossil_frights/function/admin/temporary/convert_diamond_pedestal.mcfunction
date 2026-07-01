kill @e[tag=ff_diamond_pedestal]
execute positioned 22.0 93.25 17.0 run kill @e[type=minecraft:item_display,distance=..0.5]
execute positioned 22.0 92.0 17.0 run kill @e[type=minecraft:block_display,distance=..0.5]
summon minecraft:item_display 22.0 92.0 17.0 {Tags:["ff_diamond_pedestal","ff_diamond_pedestal.display"],item:{id:"minecraft:paper",components:{"minecraft:item_model":"fossil-frights:general_blocks/diamond_pedestal"}},width:0.75,height:1.5,Rotation:[180,0]}
summon minecraft:item_display 22.0 93.0 17.0 {Tags:["ff_diamond_pedestal","ff_diamond_pedestal.collision"],view_range:0,width:0.001,height:0.001,Passengers:[{id:"minecraft:shulker",Tags:["ff_diamond_pedestal","ff_diamond_pedestal.collision"],Color:6,NoAI:true,Silent:true,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0.5}]}]}
summon minecraft:item_display 22.0 92.25 17.0 {Tags:["ff_diamond_pedestal","ff_diamond_pedestal.collision"],view_range:0,width:0.001,height:0.001,Passengers:[{id:"minecraft:shulker",Tags:["ff_diamond_pedestal","ff_diamond_pedestal.collision"],Color:6,NoAI:true,Silent:true,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0.75}]}]}
