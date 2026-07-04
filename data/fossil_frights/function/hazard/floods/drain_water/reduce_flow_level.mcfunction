execute if block ~ ~ ~ water[level=8] run return run setblock ~ ~ ~ water[level=1] strict
execute if block ~ ~ ~ water[level=1] run return run setblock ~ ~ ~ water[level=2] strict
execute if block ~ ~ ~ water[level=2] run return run setblock ~ ~ ~ water[level=3] strict
execute if block ~ ~ ~ water[level=3] run return run setblock ~ ~ ~ water[level=4] strict
execute if block ~ ~ ~ water[level=4] run return run setblock ~ ~ ~ water[level=5] strict
execute if block ~ ~ ~ water[level=5] run return run setblock ~ ~ ~ water[level=6] strict
execute if block ~ ~ ~ water[level=6] run return run setblock ~ ~ ~ water[level=7] strict
execute if block ~ ~ ~ water[level=7] run return run execute unless block ~ ~1 ~ water run function fossil_frights:hazard/floods/drain_water/set_air_and_splash
