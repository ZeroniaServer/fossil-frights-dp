execute if items entity @s armor.feet * run function fossil_frights:items/util/summon_item {loot_table:"fossil_frights:feet_slot",nbt:{}}
kill @e[type=minecraft:item_display,tag=ff_trap_freeze_item,sort=nearest,limit=1,distance=..0.75]
kill @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice,sort=nearest,limit=1,distance=..0.75]
kill @s
