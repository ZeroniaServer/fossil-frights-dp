execute unless block ~ ~ ~ #doors[half=lower] run return run tellraw @s {color:"red",text:"There is no door here. Make sure you run this function inside the lower half of a door block."}
execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0.002,dy=0.002,dz=0.002,type=minecraft:item_display,tag=ff_door] run return run tellraw @s {color:"red",text:"There is already a door here."}
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run function fossil_frights:interactions/door/create/init_door_data 
