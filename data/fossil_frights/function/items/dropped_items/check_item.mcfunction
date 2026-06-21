tag @s add ff_dropped_item_checked

execute if items entity @s contents *[custom_data~{itemID:"infinileaf"}] on origin run tag @s[tag=ff_ant_fight] add ff_dropped_infinileaf
execute if items entity @s contents *[custom_data~{itemID:"infinileaf"}] run return run kill @s

execute if items entity @s contents *[custom_data~{itemID:"temple_run_restart"}] on origin run tag @s add ff_dropped_temple_run_restart
execute if items entity @s contents *[custom_data~{itemID:"temple_run_restart"}] run return run kill @s

execute if items entity @s contents *[custom_data~{itemID:"parkour_restart"}] on origin run tag @s add ff_dropped_parkour_restart
execute if items entity @s contents *[custom_data~{itemID:"parkour_restart"}] run return run kill @s

execute if items entity @s contents *[custom_data~{ff_prevent_drop:true}] if function fossil_frights:items/dropped_items/check_thrower run function fossil_frights:items/dropped_items/return_item
execute if items entity @s contents *[custom_data~{ff_prevent_drop:true}] run return run kill @s

execute if data entity @s {Age:5999s} run return 0
execute unless predicate fossil_frights:game/heist_mode_active run data modify entity @s Age set value -32768
execute if predicate fossil_frights:game/heist_mode_active unless items entity @s contents *[custom_data~{ff_heist_loot:true}] run data modify entity @s Age set value -32768
execute if predicate fossil_frights:game/heist_mode_active if items entity @s contents *[custom_data~{ff_heist_loot:true}] run function fossil_frights:items/dropped_items/init_heist_loot
