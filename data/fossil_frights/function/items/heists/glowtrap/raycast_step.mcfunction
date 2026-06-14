execute if entity @s[tag=ff_glowtrap_placed] run return 0
execute unless score @s ff_glowtrap_scan matches 1.. run return run function fossil_frights:items/heists/glowtrap/place_at_cursor
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air unless block ~ ~ ~ minecraft:light run return run function fossil_frights:items/heists/glowtrap/place_on_surface
scoreboard players remove @s ff_glowtrap_scan 1
execute positioned ^ ^ ^0.25 run function fossil_frights:items/heists/glowtrap/raycast_step
