execute if score @s ff_glowtrap_age matches 40..41 run function fossil_frights:items/heists/trap/types/explosive/fx/expand_03
execute if score @s ff_glowtrap_age matches 42..43 run function fossil_frights:items/heists/trap/types/explosive/fx/expand_06
execute if score @s ff_glowtrap_age matches 44..45 run function fossil_frights:items/heists/trap/types/explosive/fx/expand_09
execute if score @s ff_glowtrap_age matches 46..47 run function fossil_frights:items/heists/trap/types/explosive/fx/expand_12
execute if score @s ff_glowtrap_age matches 48..49 run function fossil_frights:items/heists/trap/types/explosive/fx/ring
particle minecraft:electric_spark ~ ~0.1 ~ 0.05 0.05 0.05 0.02 2 force @a[tag=ff_trap_viewer]
