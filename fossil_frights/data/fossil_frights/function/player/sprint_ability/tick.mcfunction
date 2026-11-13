tag @a[predicate=fossil_frights:player/block_sprinting] add ff_sprint_blocked
tag @a[tag=ff_sprint_blocked,predicate=!fossil_frights:entity/touching_water_fluid] add ff_sprint_blocked_true

execute as @a[tag=!ff_sprint_blocked_true] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{level:{max:7}}}}} run effect give @s minecraft:saturation 1 0 true
execute as @a[tag=!ff_sprint_blocked_true] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{level:{min:9}}}}} run effect give @s minecraft:hunger 1 255 true
execute as @a[tag=!ff_sprint_blocked_true] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{saturation:{min:1}}}}} run effect give @s minecraft:hunger 1 255 true
execute as @a[tag=!ff_sprint_blocked_true] unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{saturation:{min:1}}}}} unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{level:{min:9}}}}} run effect clear @s minecraft:hunger

execute as @a[tag=ff_sprint_blocked] run attribute @s minecraft:movement_speed modifier remove minecraft:sprinting
execute as @a[tag=ff_sprint_blocked_true] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{level:{max:5}}}}} run effect give @s minecraft:saturation 1 0 true
execute as @a[tag=ff_sprint_blocked_true] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{level:{min:7}}}}} run effect give @s minecraft:hunger 1 255 true
execute as @a[tag=ff_sprint_blocked_true] if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{saturation:{min:1}}}}} run effect give @s minecraft:hunger 1 255 true
execute as @a[tag=ff_sprint_blocked_true] unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{saturation:{min:1}}}}} unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{food:{level:{min:7}}}}} run effect clear @s minecraft:hunger

tag @a remove ff_sprint_blocked
tag @a remove ff_sprint_blocked_true

schedule function fossil_frights:player/sprint_ability/tick 1t
