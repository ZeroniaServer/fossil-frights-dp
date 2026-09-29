execute at @s unless predicate fossil_frights:location/room/floor_2/left_hall run return 0
execute at @s unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{max:27},z:{max:48}}}} run return 0

execute at @s anchored eyes facing 19.5 97.5 30.0 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run return 1
execute at @s anchored eyes facing 19.5 97.00 33.00 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run return 1
execute at @s anchored eyes facing 19.5 97.0 37.5 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run return 1

return 0
