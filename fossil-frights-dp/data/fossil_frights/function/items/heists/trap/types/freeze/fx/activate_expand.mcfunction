execute if score @s ff_glowtrap_age matches 40..41 run function fossil_frights:items/heists/trap/types/freeze/fx/expand_03
execute if score @s ff_glowtrap_age matches 42..43 run function fossil_frights:items/heists/trap/types/freeze/fx/expand_06
execute if score @s ff_glowtrap_age matches 44..45 run function fossil_frights:items/heists/trap/types/freeze/fx/expand_09
execute if score @s ff_glowtrap_age matches 46..47 run function fossil_frights:items/heists/trap/types/freeze/fx/expand_12
execute if score @s ff_glowtrap_age matches 48..49 run function fossil_frights:items/heists/trap/types/freeze/fx/ring
particle minecraft:trial_spawner_detection_ominous ~ ~0.12 ~ 0.08 0.16 0.08 0 3 force @a[tag=ff_trap_viewer]
particle minecraft:snowflake ~ ~0.12 ~ 0.05 0.08 0.05 0.01 3 force @a[tag=ff_trap_viewer]
