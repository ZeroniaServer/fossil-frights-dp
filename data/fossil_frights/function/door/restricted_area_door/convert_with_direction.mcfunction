summon minecraft:item_display ~ ~ ~ {Tags:["ff_door.display","ff_door.display_new"],item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil-frights:general_blocks/restricted_area_door","minecraft:custom_model_data":{flags:[1],strings:["left"]}}}}
summon minecraft:text_display ~ ~ ~ {Tags:["ff_door.display","ff_door.display_new"],text:["",{translate:"ff.sign.restricted_area.0",color:"gold"},"\n",{translate:"ff.sign.restricted_area.1",color:"gold"},"\n",{translate:"ff.sign.restricted_area.2",color:"white"},"\n",{translate:"ff.sign.restricted_area.3",color:"white"}],background:0}
execute as @e[tag=ff_door.display_new] run rotate @s ~ ~
tag @e[tag=ff_door.display_new] remove ff_door.display_new

execute if block ~ ~ ~ #doors[hinge=left] run item modify entity @e[limit=1,dx=0,dy=0,dz=0,type=minecraft:item_display,tag=ff_door.display] contents fossil_frights:restricted_area_door/set_hinge/left
execute if block ~ ~ ~ #doors[hinge=right] run item modify entity @e[limit=1,dx=0,dy=0,dz=0,type=minecraft:item_display,tag=ff_door.display] contents fossil_frights:restricted_area_door/set_hinge/right

execute align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} run data modify entity @s data.ff_door.block_type set value "minecraft:oxidized_copper_door"

execute align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door.part_0] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} at @s run function fossil_frights:door/click/toggle_door
execute align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door.part_0] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} at @s run function fossil_frights:door/click/toggle_door
