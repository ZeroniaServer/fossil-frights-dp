execute as @e[type=minecraft:text_display,tag=ff_dropped_heist_loot_text] at @s run function fossil_frights:items/dropped_items/despawn_timer/entity_tick

execute if entity @e[limit=1,type=minecraft:text_display,tag=ff_dropped_heist_loot_text] run schedule function fossil_frights:items/dropped_items/despawn_timer/tick 1t append
