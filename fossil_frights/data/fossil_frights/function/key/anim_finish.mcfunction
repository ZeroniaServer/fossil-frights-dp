particle minecraft:poof ~ ~ ~ 0.08 0.08 0.08 0.02 8 force

execute unless items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} * run return run kill @s

scoreboard players set #give_directly ff_dummy 0
execute if predicate fossil_frights:game_state/heist_mode_active store success score #give_directly ff_dummy if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} *[custom_data~{ff_heist_rules:{give_directly_from_lock:true}}]
execute if score #give_directly ff_dummy matches 0 run function fossil_frights:items/util/summon_item {loot_table:{pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"},component:"minecraft:container"}}]}]},nbt:{Motion:[0.0,0.12,0.0]}}
execute if score #give_directly ff_dummy matches 1 run function fossil_frights:entity/match/active
execute if score #give_directly ff_dummy matches 1 if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} *[custom_data~{itemID:"dinonog"}] run tag @a[limit=1,predicate=fossil_frights:entity/match/active,predicate=fossil_frights:player/team/guard] add ff_has_dinonog
execute if score #give_directly ff_dummy matches 1 run loot give @a[limit=1,predicate=fossil_frights:entity/match/active] loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"},component:"minecraft:container"}}]}]}

execute if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} *[custom_data~{itemID:"lady_bug"}] run function fossil_frights:items/lady_bug/trigger

kill @s
