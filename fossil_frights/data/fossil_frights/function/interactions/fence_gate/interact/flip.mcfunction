scoreboard players set #flip ff_dummy 0

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"south"}}}}} on target if entity @s[y_rotation=90..-90] run scoreboard players set #flip ff_dummy 1
execute if score #flip ff_dummy matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"south"}}}}} run return run data modify entity @s data.ff_fence_gate.block_facing set value "north"

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"north"}}}}} on target if entity @s[y_rotation=-90..90] run scoreboard players set #flip ff_dummy 1
execute if score #flip ff_dummy matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"north"}}}}} run return run data modify entity @s data.ff_fence_gate.block_facing set value "south"

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"east"}}}}} on target if entity @s[y_rotation=0..180] run scoreboard players set #flip ff_dummy 1
execute if score #flip ff_dummy matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"east"}}}}} run return run data modify entity @s data.ff_fence_gate.block_facing set value "west"

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"west"}}}}} on target if entity @s[y_rotation=180..0] run scoreboard players set #flip ff_dummy 1
execute if score #flip ff_dummy matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{ff_fence_gate:{block_facing:"west"}}}}} run return run data modify entity @s data.ff_fence_gate.block_facing set value "east"
