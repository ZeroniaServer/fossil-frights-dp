particle minecraft:reverse_portal ~ ~0.05 ~ 0.12 0.06 0.12 0.01 2 force @a[tag=ff_trap_viewer]
execute if score @s ff_glowtrap_age matches ..9 run function fossil_frights:items/heists/trap/types/antigravity/fx/expand_03
execute if score @s ff_glowtrap_age matches 10..19 run function fossil_frights:items/heists/trap/types/antigravity/fx/expand_06
execute if score @s ff_glowtrap_age matches 20..29 run function fossil_frights:items/heists/trap/types/antigravity/fx/expand_09
execute if score @s ff_glowtrap_age matches 30..39 run function fossil_frights:items/heists/trap/types/antigravity/fx/expand_12
