execute if entity @s[tag=ff_trap_placed] run return 0
execute unless score @s ff_glowtrap_scan matches 1.. run return run function fossil_frights:items/heists/trap/common/place_at_cursor
execute unless block ~ ~ ~ #fossil_frights:raycast_ignore run return run function fossil_frights:items/heists/trap/common/place_on_surface
scoreboard players remove @s ff_glowtrap_scan 1
execute positioned ^ ^ ^0.25 run function fossil_frights:items/heists/trap/common/raycast_step
