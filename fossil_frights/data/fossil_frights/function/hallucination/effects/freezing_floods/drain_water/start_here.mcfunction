execute unless block ~ ~ ~ minecraft:water run return fail
execute align xyz unless entity @e[type=minecraft:marker,tag=ff_freezing_flood_drain,dx=0,dy=0,dz=0,limit=1] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}
schedule function fossil_frights:hallucination/effects/freezing_floods/drain_water/schedule 1t
