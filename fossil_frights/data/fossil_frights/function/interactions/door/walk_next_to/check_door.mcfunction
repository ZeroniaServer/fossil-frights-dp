execute if predicate fossil_frights:entity/door/one_way run return run function fossil_frights:interactions/door/walk_next_to/check_door_one_way

execute align xyz positioned ~-1 ~ ~-1 if entity @a[dx=2,dy=1,dz=2,gamemode=!spectator,predicate=fossil_frights:player/can_automatically_open_doors,predicate=fossil_frights:location/near_door] run return 1
execute rotated ~ 0 positioned ^ ^0.5 ^1 if block ~ ~ ~ oxidized_copper_door[open=true] align xyz positioned ~-1 ~ ~-1 if entity @a[dx=2,dy=1,dz=2,gamemode=!spectator,predicate=fossil_frights:player/can_automatically_open_doors,predicate=fossil_frights:location/near_door] run return 1
