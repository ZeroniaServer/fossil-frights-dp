execute if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ water[level=8] strict
execute if block ~ ~ ~ water[level=8] if block ~ ~-1 ~ water run function fossil_frights:hazard/floods/drain_water/set_air_and_splash
execute if block ~ ~ ~ water if block ~ ~-1 ~ air run function fossil_frights:hazard/floods/drain_water/set_air_and_splash

execute if block ~ ~ ~ water if predicate {condition:"minecraft:random_chance",chance:0.5} run function fossil_frights:hazard/floods/drain_water/reduce_flow_level
execute if block ~ ~ ~ water if block ~ ~-2 ~ #minecraft:stairs run function fossil_frights:hazard/floods/drain_water/reduce_flow_level

execute positioned ~-1 ~ ~ if block ~ ~ ~ water align xyz unless entity @e[limit=1,dx=0,tag=ff_drain_water] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_drain_water"]}
execute positioned ~1 ~ ~ if block ~ ~ ~ water align xyz unless entity @e[limit=1,dx=0,tag=ff_drain_water] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_drain_water"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ water align xyz unless entity @e[limit=1,dx=0,tag=ff_drain_water] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_drain_water"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ water align xyz unless entity @e[limit=1,dx=0,tag=ff_drain_water] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["ff_drain_water"]}

execute unless block ~ ~ ~ water if block ~ ~1 ~ water unless block ~ ~2 ~ water positioned ~ ~1 ~ run function fossil_frights:hazard/floods/drain_water/set_air_and_splash
execute unless block ~ ~ ~ water if block ~ ~-1 ~ water run tp @s ~ ~-1 ~
execute positioned as @s unless block ~ ~ ~ water run kill @s
