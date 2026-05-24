tag @s add ff_map_region_set
execute if score @s ff_map_region matches 3 run return 0
scoreboard players set @s ff_map_region 3
data modify storage fossil_frights:map current set value {cmd:3,name:"Cafe",region:3}
function fossil_frights:map/update_carried with storage fossil_frights:map current
