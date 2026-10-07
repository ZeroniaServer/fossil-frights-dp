execute as @e[type=minecraft:item,tag=!ff_dropped_item_checked] at @s run function fossil_frights:items/dropped_items/check_item

execute in minecraft:overworld as @e[x=0,type=minecraft:item] at @s run function fossil_frights:items/dropped_items/allow_pickup
