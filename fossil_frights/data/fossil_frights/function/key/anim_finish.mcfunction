particle minecraft:poof ~ ~ ~ 0.08 0.08 0.08 0.02 8 force
execute if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} * run function fossil_frights:items/util/summon_item {loot_table:{pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"},component:"minecraft:container"}}]}]},nbt:{Motion:[0.0,0.12,0.0]}}
execute if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} *[custom_data~{itemID:"lady_bug"}] run function fossil_frights:items/lady_bug/trigger
kill @s
