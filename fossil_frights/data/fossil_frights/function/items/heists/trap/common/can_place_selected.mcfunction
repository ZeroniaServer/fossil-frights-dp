tag @s add ff_trap_place_owner_check
function fossil_frights:entity/match/active
execute as @e[type=minecraft:marker,tag=ff_trap] if score @s ff_trap_type = @a[tag=ff_trap_place_owner_check,limit=1] ff_trap_selected if predicate fossil_frights:entity/match/active run return run function fossil_frights:items/heists/trap/common/selected_trap_already_deployed
tag @s remove ff_trap_place_owner_check
return 1
