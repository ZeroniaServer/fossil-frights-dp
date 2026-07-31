execute as @e[type=minecraft:item,tag=ff_ag_float] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.3 0.4 0.3 0.008 4 force
execute if entity @e[type=minecraft:item,tag=ff_ag_float] run schedule function fossil_frights:items/heists/trap/types/antigravity/fx/float_item 10t append
