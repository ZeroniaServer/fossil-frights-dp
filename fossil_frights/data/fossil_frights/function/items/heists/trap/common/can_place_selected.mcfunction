function fossil_frights:entity/match/active
execute unless entity @e[limit=1,type=minecraft:marker,tag=ff_trap,predicate=fossil_frights:entity/match/active] run return 1

function fossil_frights:items/heists/trap/on_cooldown
tag @s remove ff_trap_place_pending
tag @s add ff_trap_restore_pending
tag @s remove ff_trap_place_owner_check

return 0
