tag @s remove ff_door.was_open
execute if block ~ ~ ~ #doors[open=true] run tag @s add ff_door.was_open

execute if entity @s[tag=ff_door.was_open] run function fossil_frights:interactions/door/set_block/closed with entity @s data.ff_door
execute if entity @s[tag=!ff_door.was_open] run function fossil_frights:interactions/door/set_block/open with entity @s data.ff_door

tag @s remove ff_door.open

execute if block ~ ~ ~ #doors[open=false] align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} run function fossil_frights:interactions/door/interact/update_row_orientation
execute if block ~ ~ ~ #doors[open=true,hinge=left] rotated ~90 ~ align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} run function fossil_frights:interactions/door/interact/update_row_orientation
execute if block ~ ~ ~ #doors[open=true,hinge=right] rotated ~-90 ~ align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} run function fossil_frights:interactions/door/interact/update_row_orientation
