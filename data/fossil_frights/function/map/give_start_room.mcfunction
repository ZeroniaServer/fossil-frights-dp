loot replace entity @s hotbar.1 loot fossil_frights:items/other/museum_map
scoreboard players set @s ff_map_region 0
function fossil_frights:map/region/start_room
tag @s add ff_map_auto_given
tag @s add ff_map_claimed
