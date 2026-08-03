scoreboard players set #basement_trap_count ff_trap_balance 0
execute as @e[type=minecraft:marker,tag=ff_trap,x=-33,y=68,z=9,dx=39,dy=9,dz=58] run scoreboard players add #basement_trap_count ff_trap_balance 1
execute if score #basement_trap_count ff_trap_balance matches 1.. run function fossil_frights:items/heists/trap/common/place_at_cursor/too_many_basement_traps
execute if score #basement_trap_count ff_trap_balance matches 1.. run return 0
function fossil_frights:items/heists/trap/common/place_at_cursor/finish
