execute unless score @s ff_glowtrap_scan matches 1.. run return run function fossil_frights:items/heists/trap/common/place_at_cursor
execute unless block ~ ~ ~ #fossil_frights:raycast_ignore run return run execute positioned ~ ~1 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute unless block ~ ~-1 ~ #fossil_frights:raycast_ignore run return run function fossil_frights:items/heists/trap/common/place_at_cursor
scoreboard players remove @s ff_glowtrap_scan 1
execute positioned ~ ~-1 ~ run function fossil_frights:items/heists/trap/common/place_grounded_step
