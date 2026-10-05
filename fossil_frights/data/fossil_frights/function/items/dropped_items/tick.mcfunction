execute as @e[type=minecraft:item,tag=!ff_dropped_item_checked] at @s run function fossil_frights:items/dropped_items/check_item

execute as @e[type=minecraft:item,predicate=fossil_frights:entity/is_moving_horizontally] at @s if block ~ ~ ~ minecraft:zombie_head unless block ~ ~1 ~ #fossil_frights:never_has_solid_collision run function fossil_frights:items/dropped_items/zombie_head_collision_fix

execute in minecraft:overworld as @e[x=0,type=minecraft:item] at @s run function fossil_frights:items/dropped_items/allow_pickup
