particle minecraft:soul_fire_flame ~ ~0.05 ~ 0.12 0.06 0.12 0 1 force @a[tag=ff_heist_guard]
execute if score @s ff_glowtrap_age matches ..9 run function fossil_frights:items/heists/glowtrap/fx_expand_03
execute if score @s ff_glowtrap_age matches 10..19 run function fossil_frights:items/heists/glowtrap/fx_expand_06
execute if score @s ff_glowtrap_age matches 20..29 run function fossil_frights:items/heists/glowtrap/fx_expand_09
execute if score @s ff_glowtrap_age matches 30..39 run function fossil_frights:items/heists/glowtrap/fx_expand_12
