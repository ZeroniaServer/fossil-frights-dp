execute as @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor] at @s run function fossil_frights:items/heists/trap/types/freeze/item/restore
kill @e[type=minecraft:item_display,tag=ff_trap_freeze_item]
kill @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice]
