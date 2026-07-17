kill @s
execute unless block ~ ~ ~ water run return 0
execute positioned ~ ~1 ~ if block ~ ~ ~ air run return run function fossil_frights:hazard/floods/drain_water/kill_update
execute positioned ~ ~ ~-1 if block ~ ~ ~ air run return run function fossil_frights:hazard/floods/drain_water/kill_update
execute positioned ~ ~ ~1 if block ~ ~ ~ air run return run function fossil_frights:hazard/floods/drain_water/kill_update
execute positioned ~-1 ~ ~ if block ~ ~ ~ air run return run function fossil_frights:hazard/floods/drain_water/kill_update
execute positioned ~1 ~ ~ if block ~ ~ ~ air run return run function fossil_frights:hazard/floods/drain_water/kill_update
