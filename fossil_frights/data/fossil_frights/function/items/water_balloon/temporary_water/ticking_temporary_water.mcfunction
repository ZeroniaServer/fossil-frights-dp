execute as @e[type=minecraft:marker,tag=ff_water_balloon.temporary_water] if predicate fossil_frights:entity/periodic_tick/10 unless predicate fossil_frights:entity/periodic_tick/arbitrarily_large if predicate fossil_frights:entity/water_balloon/temporary_water_disappear_chance at @s run function fossil_frights:items/water_balloon/temporary_water/disappear

execute if entity @e[limit=1,type=minecraft:marker,tag=ff_water_balloon.temporary_water] run schedule function fossil_frights:items/water_balloon/temporary_water/ticking_temporary_water 1t
