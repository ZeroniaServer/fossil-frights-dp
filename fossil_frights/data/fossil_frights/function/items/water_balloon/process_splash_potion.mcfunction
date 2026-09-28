tag @s add ff_water_balloon.processed
execute unless data entity @s Item.components."minecraft:custom_data"{itemID:"water_balloon"} run return 0

tag @s add ff_water_balloon.new
execute summon minecraft:marker run function fossil_frights:items/water_balloon/init_marker
tag @s remove ff_water_balloon.new

schedule function fossil_frights:items/water_balloon/ticking_water_balloons 1t
