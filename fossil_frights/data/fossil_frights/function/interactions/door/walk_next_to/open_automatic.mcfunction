tag @s add ff_door.automatic
function fossil_frights:interactions/door/state/open with entity @s data.ff_door
execute store result score @s ff_automatic_door_close_timestamp run time query gametime
scoreboard players add @s ff_automatic_door_close_timestamp 20
schedule function fossil_frights:interactions/door/walk_next_to/checker 1t append
