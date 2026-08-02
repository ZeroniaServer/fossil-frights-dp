execute as @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,tag=ff_trap_floor_finder.checked_once,predicate=fossil_frights:entity/on_ground] at @s run function fossil_frights:items/heists/trap/common/floor_finder_resolve
kill @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,tag=ff_trap_floor_finder.checked_once]
tag @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder] add ff_trap_floor_finder.checked_once
execute if entity @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder] run schedule function fossil_frights:items/heists/trap/common/floor_finder_check 1t append
