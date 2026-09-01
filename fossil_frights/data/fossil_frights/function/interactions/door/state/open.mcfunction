$execute unless block ~ ~ ~ oxidized_copper_door[open=true] align xyz run playsound minecraft:block.$(sound_type)_door.open block @a ~0.5 ~ ~0.5

$setblock ~ ~ ~ oxidized_copper_door[facing=$(facing),hinge=$(hinge),half=lower,open=true] strict
$setblock ~ ~1 ~ oxidized_copper_door[facing=$(facing),hinge=$(hinge),half=upper,open=true] strict

$rotate @s $(open_angle) 0
execute rotated as @s on passengers run rotate @s ~ ~

$execute if block ~ ~ ~ oxidized_copper_door[hinge=left] align xyz as @e[type=minecraft:interaction,dx=0,tag=ff_door.interaction] positioned ~0.5 ~0.5 ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},y:{max:0.5},z:{max:0.5}}}} align xyz positioned ~$(anchor_x) ~ ~$(anchor_z) rotated $(open_angle) 0 run function fossil_frights:interactions/door/state/__move_interactions_left_hinge
$execute if block ~ ~ ~ oxidized_copper_door[hinge=right] align xyz as @e[type=minecraft:interaction,dx=0,tag=ff_door.interaction] positioned ~0.5 ~0.5 ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},y:{max:0.5},z:{max:0.5}}}} align xyz positioned ~$(anchor_x) ~ ~$(anchor_z) rotated $(open_angle) 0 run function fossil_frights:interactions/door/state/__move_interactions_right_hinge

execute if block ~ ~ ~ oxidized_copper_door[hinge=left] rotated as @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ oxidized_copper_door[hinge=right,open=false] align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[limit=1,dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] positioned as @s run function fossil_frights:interactions/door/state/open with entity @s data.ff_door
execute if block ~ ~ ~ oxidized_copper_door[hinge=right] rotated as @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ oxidized_copper_door[hinge=left,open=false] align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[limit=1,dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] positioned as @s run function fossil_frights:interactions/door/state/open with entity @s data.ff_door
