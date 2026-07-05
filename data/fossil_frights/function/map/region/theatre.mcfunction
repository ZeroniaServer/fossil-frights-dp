tag @s add ff_map_region_set
execute if score @s ff_map_region matches 7 run return 0
scoreboard players set @s ff_map_region 7
function fossil_frights:map/update_carried {name:"theater"}
