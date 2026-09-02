execute store success score #can_open ff_dummy unless predicate fossil_frights:entity/door/one_way
execute if entity @s[tag=ff_door.one_way.front] rotated as @s rotated ~ 0 positioned ^ ^ ^10 as @a[limit=1,tag=ff_door.player] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:10},z:{max:10}}}} run scoreboard players set #can_open ff_dummy 1
execute if entity @s[tag=ff_door.one_way.back] rotated as @s rotated ~ 0 positioned ^ ^ ^-10 as @a[limit=1,tag=ff_door.player] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:10},z:{max:10}}}} run scoreboard players set #can_open ff_dummy 1
execute if score #can_open ff_dummy matches 0 run return 0

tag @s add ff_door.automatic
function fossil_frights:interactions/door/state/open with entity @s data.ff_door
execute store result score @s ff_automatic_door_close_timestamp run time query gametime
scoreboard players add @s ff_automatic_door_close_timestamp 20
schedule function fossil_frights:interactions/door/walk_next_to/checker 20t append
