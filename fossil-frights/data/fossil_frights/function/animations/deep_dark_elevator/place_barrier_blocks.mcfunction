setblock 51 77 59 minecraft:air strict
execute positioned 51 77 59 if entity @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator,distance=..0.001] run setblock 51 77 59 minecraft:barrier strict
setblock 51 68 59 minecraft:air strict
execute positioned 51 68 59 if entity @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator,distance=..0.001] run setblock 51 68 59 minecraft:barrier strict
