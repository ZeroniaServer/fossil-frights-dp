execute as @e[type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] at @s if function fossil_frights:interactions/door/walk_next_to/check_door run execute store result score @s ff_automatic_door_close_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",10]}
execute as @e[type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] unless score @s ff_automatic_door_close_timestamp > #gametime ff_global at @s run function fossil_frights:interactions/door/walk_next_to/close

execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] run schedule function fossil_frights:interactions/door/walk_next_to/checker 1t append
