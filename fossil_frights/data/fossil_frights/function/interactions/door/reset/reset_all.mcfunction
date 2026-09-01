kill @e[type=minecraft:interaction,tag=ff_door.interaction]
execute as @e[type=minecraft:item_display,tag=ff_door] at @s run function fossil_frights:interactions/door/reset/reset_door
