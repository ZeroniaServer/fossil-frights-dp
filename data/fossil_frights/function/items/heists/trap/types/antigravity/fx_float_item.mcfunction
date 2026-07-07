execute as @e[type=minecraft:item,tag=ff_ag_float] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.4 0.3 0.08 4 force
execute if entity @e[type=minecraft:item,tag=ff_ag_float] run schedule function fossil_frights:items/heists/trap/types/antigravity/fx_float_item 10t append
