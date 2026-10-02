tag @s add ff_trap_state_owner_check
function fossil_frights:entity/match/active
execute as @e[limit=1,type=minecraft:marker,tag=ff_trap,predicate=fossil_frights:entity/match/active] run function fossil_frights:items/heists/trap/common/set_owner_deployed_phase
tag @s remove ff_trap_state_owner_check
