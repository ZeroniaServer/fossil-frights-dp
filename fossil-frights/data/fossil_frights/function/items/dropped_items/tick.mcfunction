execute as @e[type=minecraft:item,tag=!ff_dropped_item_checked] at @s run function fossil_frights:items/dropped_items/check_item

execute if predicate fossil_frights:game/heist_mode_active store result score #gametime ff_dropped_item_despawn_timestamp run time query gametime
execute if predicate fossil_frights:game/heist_mode_active as @e[type=minecraft:text_display,tag=ff_dropped_heist_loot_text] at @s run function fossil_frights:items/dropped_items/tick_text
