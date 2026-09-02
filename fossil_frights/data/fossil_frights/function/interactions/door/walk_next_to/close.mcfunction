function fossil_frights:interactions/door/state/closed with entity @s data.ff_door
tag @s remove ff_door.automatic
scoreboard players reset @s ff_automatic_door_close_timestamp
