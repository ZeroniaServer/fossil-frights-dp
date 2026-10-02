execute unless entity @s[tag=ff_trap_place_pending] run return 0
scoreboard players add @s ff_trap_pending_ticks 1
function fossil_frights:entity/match/active
execute if score @s ff_trap_pending_ticks matches 41.. run kill @e[limit=1,type=minecraft:armor_stand,tag=ff_trap_floor_finder,predicate=fossil_frights:entity/match/active]
execute unless entity @e[limit=1,type=minecraft:armor_stand,tag=ff_trap_floor_finder,predicate=fossil_frights:entity/match/active] run tag @s remove ff_trap_place_pending
execute unless entity @e[limit=1,type=minecraft:armor_stand,tag=ff_trap_floor_finder,predicate=fossil_frights:entity/match/active] run tag @s add ff_trap_restore_pending
execute unless entity @s[tag=ff_trap_place_pending] run scoreboard players set @s ff_trap_pending_ticks 0
