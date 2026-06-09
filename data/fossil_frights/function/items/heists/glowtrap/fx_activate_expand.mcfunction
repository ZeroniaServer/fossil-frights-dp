execute if score @s ff_glowtrap_age matches 40..41 run function fossil_frights:items/heists/glowtrap/fx_expand_03
execute if score @s ff_glowtrap_age matches 42..43 run function fossil_frights:items/heists/glowtrap/fx_expand_06
execute if score @s ff_glowtrap_age matches 44..45 run function fossil_frights:items/heists/glowtrap/fx_expand_09
execute if score @s ff_glowtrap_age matches 46..47 run function fossil_frights:items/heists/glowtrap/fx_expand_12
execute if score @s ff_glowtrap_age matches 48..49 run function fossil_frights:items/heists/glowtrap/fx_ring
particle minecraft:soul_fire_flame ~ ~0.12 ~ 0.08 0.16 0.08 0 3 force @a[tag=ff_glowtrap_viewer]
particle minecraft:end_rod ~ ~0.12 ~ 0.05 0.08 0.05 0 1 force @a[tag=ff_glowtrap_viewer]
