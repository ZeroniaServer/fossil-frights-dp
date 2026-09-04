execute store success score #can_open ff_dummy unless predicate fossil_frights:entity/door/one_way
execute unless score #can_open ff_dummy matches 1 if block ~ ~ ~ #doors[open=true] run scoreboard players set #can_open ff_dummy 1
execute unless score #can_open ff_dummy matches 1 if entity @s[tag=ff_door.one_way.front] if block ~ ~ ~ #doors[open=false] rotated as @s rotated ~ 0 positioned ^ ^ ^10 as @a[limit=1,tag=ff_door.player] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:10},z:{max:10}}}} run scoreboard players set #can_open ff_dummy 1
execute unless score #can_open ff_dummy matches 1 if entity @s[tag=ff_door.one_way.back] if block ~ ~ ~ #doors[open=false] rotated as @s rotated ~ 0 positioned ^ ^ ^-10 as @a[limit=1,tag=ff_door.player] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:10},z:{max:10}}}} run scoreboard players set #can_open ff_dummy 1

execute if score #can_open ff_dummy matches 1 if predicate fossil_frights:entity/door/one_way run function fossil_frights:interactions/door/interact/set_automatic_with_1_second_delay

execute if score #can_open ff_dummy matches 1 if block ~ ~ ~ #doors[open=true] unless predicate fossil_frights:entity/door/one_way if entity @a[limit=1,distance=..5,predicate=fossil_frights:location/near_door] run function fossil_frights:interactions/door/interact/set_automatic_with_1_second_delay
