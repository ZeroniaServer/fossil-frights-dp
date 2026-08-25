execute as @e[limit=1,sort=nearest,type=minecraft:item,distance=..0.6] run return run function fossil_frights:items/heists/trap/types/explosive/trigger_item/handle_item
execute positioned ~ ~1 ~ as @e[limit=1,sort=nearest,type=minecraft:item,distance=..0.6] run return run function fossil_frights:items/heists/trap/types/explosive/trigger_item/handle_item
execute positioned ~ ~-1 ~ as @e[limit=1,sort=nearest,type=minecraft:item,distance=..0.6] run return run function fossil_frights:items/heists/trap/types/explosive/trigger_item/handle_item

return fail
