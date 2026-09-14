execute as @e[limit=1,type=minecraft:item_display,tag=ff_anvil.process] at @s run loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"},component:"minecraft:container"}}]}]}
execute as @e[limit=1,type=minecraft:item_display,tag=ff_anvil.process] at @s as @e[type=item,distance=..0.01,tag=!ff_anvil.display] run data modify entity @s Motion set value [0,0.25,0]
function fossil_frights:animations/anvil/process/stop
