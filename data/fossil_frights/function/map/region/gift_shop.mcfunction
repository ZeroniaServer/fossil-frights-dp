tag @s add ff_map_region_set
execute if score @s ff_map_region matches 2 run return 0
scoreboard players set @s ff_map_region 2
function fossil_frights:map/update_carried {name:"gift_shop"}
