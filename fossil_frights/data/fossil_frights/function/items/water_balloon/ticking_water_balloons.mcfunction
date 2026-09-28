execute as @e[type=minecraft:marker,tag=ff_water_balloon,predicate=!fossil_frights:entity/has_vehicle] at @s run function fossil_frights:items/water_balloon/splash

execute if entity @e[limit=1,type=minecraft:marker,tag=ff_water_balloon] run schedule function fossil_frights:items/water_balloon/ticking_water_balloons 1t
