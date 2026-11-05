execute as @e[limit=1,sort=nearest,type=#fossil_frights:thrown_items_and_fishing_bobbers,distance=..0.6,tag=!ff_anvil.display] at @s run return run function fossil_frights:items/heists/trap/types/explosive/trigger_item/handle_item
execute positioned ~ ~1 ~ as @e[limit=1,sort=nearest,type=#fossil_frights:thrown_items_and_fishing_bobbers,distance=..0.6,tag=!ff_anvil.display] at @s run return run function fossil_frights:items/heists/trap/types/explosive/trigger_item/handle_item
execute positioned ~ ~-1 ~ as @e[limit=1,sort=nearest,type=#fossil_frights:thrown_items_and_fishing_bobbers,distance=..0.6,tag=!ff_anvil.display] at @s run return run function fossil_frights:items/heists/trap/types/explosive/trigger_item/handle_item

return fail
