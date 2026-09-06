execute as @e[type=minecraft:item,tag=!ff_dropped_item_checked] at @s run function fossil_frights:items/dropped_items/check_item

execute if predicate fossil_frights:game_state/heist_mode_active store result score #gametime ff_dropped_item_despawn_timestamp run time query gametime
execute if predicate fossil_frights:game_state/heist_mode_active as @e[type=minecraft:text_display,tag=ff_dropped_heist_loot_text] at @s run function fossil_frights:items/dropped_items/tick_text

execute as @e[type=minecraft:item,predicate=fossil_frights:entity/is_moving_horizontally] at @s if block ~ ~ ~ minecraft:zombie_head unless block ~ ~1 ~ #fossil_frights:never_has_solid_collision run function fossil_frights:items/dropped_items/zombie_head_collision_fix

execute in minecraft:overworld as @e[x=0,type=minecraft:item] at @s run function fossil_frights:items/dropped_items/allow_pickup
