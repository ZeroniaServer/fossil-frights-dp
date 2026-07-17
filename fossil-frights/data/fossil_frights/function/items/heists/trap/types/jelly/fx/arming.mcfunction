particle minecraft:dripping_obsidian_tear ~ ~0.05 ~ 0.1 0.05 0.1 0.01 1 force @a[tag=ff_trap_viewer]
execute if score @s ff_glowtrap_age matches ..9 run function fossil_frights:items/heists/trap/types/jelly/fx/expand_03
execute if score @s ff_glowtrap_age matches 10..19 run function fossil_frights:items/heists/trap/types/jelly/fx/expand_06
execute if score @s ff_glowtrap_age matches 20..29 run function fossil_frights:items/heists/trap/types/jelly/fx/expand_09
execute if score @s ff_glowtrap_age matches 30..39 run function fossil_frights:items/heists/trap/types/jelly/fx/expand_12
