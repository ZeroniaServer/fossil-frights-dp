tag @s remove ff_trap_picked_up
tag @s add ff_trap_picker
function fossil_frights:entity/match/active
execute if predicate fossil_frights:player/input/sneak at @s positioned ~-1.6 ~-4 ~-1.6 as @e[limit=1,sort=nearest,dx=3.2,dy=8,dz=3.2,type=minecraft:marker,tag=ff_trap] if predicate fossil_frights:entity/match/active run function fossil_frights:items/heists/trap/common/pickup_marker
tag @s remove ff_trap_picker
