execute as @e[type=minecraft:item_display,tag=ff_door] at @s run function fossil_frights:interactions/door/state/closed with entity @s data.ff_door
scoreboard players reset @e[type=minecraft:item_display,tag=ff_door] ff_block_door_interaction_until_timestamp
scoreboard players reset @e[type=minecraft:item_display,tag=ff_door] ff_automatic_door_close_timestamp
tag @e[type=minecraft:item_display,tag=ff_door] remove ff_door.automatic
