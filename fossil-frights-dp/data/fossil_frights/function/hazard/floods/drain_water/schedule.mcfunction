execute as @e[type=minecraft:marker,tag=ff_drain_water] at @s run function fossil_frights:hazard/floods/drain_water/logic
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_drain_water] run schedule function fossil_frights:hazard/floods/drain_water/schedule 2t
