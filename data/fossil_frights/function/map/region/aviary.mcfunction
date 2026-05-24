tag @s add ff_map_region_set
execute if score @s ff_map_region matches 12 run return 0
scoreboard players set @s ff_map_region 12
data modify storage fossil_frights:map current set value {cmd:12,name:"Aviary",region:12}
function fossil_frights:map/update_carried with storage fossil_frights:map current
