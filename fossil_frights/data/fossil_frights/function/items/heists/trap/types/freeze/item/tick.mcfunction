execute as @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor] at @s run function fossil_frights:items/heists/trap/types/freeze/item/anchor_tick
execute as @e[type=minecraft:item_display,tag=ff_trap_freeze_item] at @s unless entity @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor,distance=..1] run kill @s
execute as @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice] at @s unless entity @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor,distance=..1] run kill @s

execute if entity @e[limit=1,type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor] run return run scoreboard players set #freeze_trap_item_tick ff_global 1
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_trap_freeze_item] run return run scoreboard players set #freeze_trap_item_tick ff_global 1
execute if entity @e[limit=1,type=minecraft:block_display,tag=ff_trap_freeze_item_ice] run return run scoreboard players set #freeze_trap_item_tick ff_global 1
scoreboard players set #freeze_trap_item_tick ff_global 0
