tag @s add ff_door.automatic
execute store result score @s ff_automatic_door_close_timestamp run time query gametime
scoreboard players add @s ff_automatic_door_close_timestamp 20
schedule function fossil_frights:interactions/door/walk_next_to/checker 20t append

execute at @s if block ~ ~ ~ #doors[open=true] rotated ~ 0 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[dx=0.001,dy=0.001,dz=0.001,type=minecraft:item_display,tag=ff_door,tag=!ff_door.automatic] run function fossil_frights:interactions/door/interact/set_automatic_with_1_second_delay
