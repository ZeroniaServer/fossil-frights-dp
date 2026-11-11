execute as @e[type=minecraft:marker,tag=ff_freezing_flood_drain] at @s run function fossil_frights:hallucination/effects/freezing_floods/drain_water/logic
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_freezing_flood_drain] run schedule function fossil_frights:hallucination/effects/freezing_floods/drain_water/schedule 2t
