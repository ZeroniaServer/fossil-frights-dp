execute unless block ~ ~-1 ~ #fossil_frights:trap_surface_support run return run function fossil_frights:items/heists/trap/common/invalid_target
execute if block ~ ~-1 ~ #minecraft:slabs[type=top] run return run function fossil_frights:items/heists/trap/common/invalid_target
execute if block ~ ~-1 ~ #minecraft:stairs[half=top] run return run function fossil_frights:items/heists/trap/common/invalid_target
execute positioned ~ ~0.01 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute unless entity @s[tag=ff_trap_placed] run tag @s add ff_trap_restore_pending
execute if entity @s[tag=ff_trap_placed] run function fossil_frights:items/heists/trap/common/set_selected_phase_arming
execute if entity @s[tag=ff_trap_placed] run tag @s add ff_trap_restore_pending
tag @s remove ff_trap_placed
tag @s remove ff_trap_place_pending
