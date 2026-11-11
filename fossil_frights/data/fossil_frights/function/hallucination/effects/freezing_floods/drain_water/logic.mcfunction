# Queue every connected water block before clearing this one, so the cleanup
# follows the whole spread instead of stopping when it reaches a source.
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:water align xyz unless entity @e[limit=1,dx=0,dy=0,dz=0,tag=ff_freezing_flood_drain] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:water align xyz unless entity @e[limit=1,dx=0,dy=0,dz=0,tag=ff_freezing_flood_drain] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:water align xyz unless entity @e[limit=1,dx=0,dy=0,dz=0,tag=ff_freezing_flood_drain] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:water align xyz unless entity @e[limit=1,dx=0,dy=0,dz=0,tag=ff_freezing_flood_drain] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:water align xyz unless entity @e[limit=1,dx=0,dy=0,dz=0,tag=ff_freezing_flood_drain] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:water align xyz unless entity @e[limit=1,dx=0,dy=0,dz=0,tag=ff_freezing_flood_drain] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_freezing_flood_drain"]}

execute if block ~ ~ ~ minecraft:water run function fossil_frights:hallucination/effects/freezing_floods/drain_water/set_air_and_splash
execute unless block ~ ~ ~ minecraft:water run kill @s
