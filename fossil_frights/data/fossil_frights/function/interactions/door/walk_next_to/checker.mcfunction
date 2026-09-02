execute store result score #gametime ff_automatic_door_close_timestamp store result score #gametime_bumped ff_automatic_door_close_timestamp run time query gametime
scoreboard players add #gametime_bumped ff_automatic_door_close_timestamp 10

execute as @e[type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] at @s if function fossil_frights:interactions/door/walk_next_to/check_door run scoreboard players operation @s ff_automatic_door_close_timestamp = #gametime_bumped ff_automatic_door_close_timestamp
execute as @e[type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] unless score @s ff_automatic_door_close_timestamp > #gametime ff_automatic_door_close_timestamp at @s run function fossil_frights:interactions/door/walk_next_to/close
execute as @e[type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] unless score @s ff_automatic_door_close_timestamp > #gametime ff_automatic_door_close_timestamp run tag @s remove ff_door.automatic

execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_door,tag=ff_door.automatic] run schedule function fossil_frights:interactions/door/walk_next_to/checker 1t append
