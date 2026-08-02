execute if entity @s[tag=ff_trap_placed] run return 0
execute unless score @s ff_glowtrap_scan matches 1.. run return run function fossil_frights:items/heists/trap/common/place_grounded
execute unless block ~ ~ ~ #fossil_frights:raycast_ignore run return run execute align xyz positioned ~0.5 ~0.5 ~0.5 run function fossil_frights:items/heists/trap/common/place_target
scoreboard players remove @s ff_glowtrap_scan 1
execute positioned ^ ^ ^0.25 run function fossil_frights:items/heists/trap/common/raycast_step
