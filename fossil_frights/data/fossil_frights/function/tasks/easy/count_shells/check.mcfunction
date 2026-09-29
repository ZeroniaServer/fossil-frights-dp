execute at @s unless predicate fossil_frights:location/room/floor_1/aquatic run return 0
execute unless entity @s[x=12.5,y=81.0,z=75.5,distance=..6] run return 0

execute at @s anchored eyes facing 12.5 81.0 75.5 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run return 1

return 0
