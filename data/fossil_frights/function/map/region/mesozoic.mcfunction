tag @s add ff_map_region_set
execute if score @s ff_map_region matches 21 run return 0
scoreboard players set @s ff_map_region 21
data modify storage fossil_frights:map current set value {cmd:21,name:"mesozoic",region:21}
function fossil_frights:map/update_carried with storage fossil_frights:map current
