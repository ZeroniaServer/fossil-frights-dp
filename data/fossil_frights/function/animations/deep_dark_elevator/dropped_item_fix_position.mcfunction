execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{x:{min:51.125}}}}} run data modify entity @s Motion[0] set value 0
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{x:{min:51.125}}}}} positioned as @s run tp @s 51.125 ~ ~
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{x:{max:51.875}}}}} run data modify entity @s Motion[0] set value 0
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{x:{max:51.875}}}}} positioned as @s run tp @s 51.875 ~ ~
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{z:{min:59.125}}}}} run data modify entity @s Motion[2] set value 0
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{z:{min:59.125}}}}} positioned as @s run tp @s ~ ~ 59.125
data modify entity @s Age set value 1
data modify entity @s Age set value 0
