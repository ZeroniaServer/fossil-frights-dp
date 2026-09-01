advancement revoke @s only fossil_frights:interactions/door/walk_next_to

execute align xyz positioned ~-1.001 ~-1.001 ~-1.001 as @e[dx=2.002,dy=2.002,dz=2.002,type=minecraft:item_display,tag=ff_door,tag=!ff_door.automatic] at @s if block ~ ~ ~ oxidized_copper_door[open=false] run function fossil_frights:interactions/door/walk_next_to/open_automatic
