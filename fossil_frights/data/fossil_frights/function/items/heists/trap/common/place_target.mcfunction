execute if block ~ ~ ~ #fossil_frights:raycast_ignore run return run function fossil_frights:items/heists/trap/common/invalid_target
execute if block ~ ~ ~ #fossil_frights:is_full_cube if block ~ ~1 ~ #fossil_frights:raycast_ignore run return run execute positioned ~ ~2 ~ run function fossil_frights:items/heists/trap/common/floor_finder_spawn
execute unless block ~ ~ ~ #fossil_frights:trap_valid_placement run return run function fossil_frights:items/heists/trap/common/invalid_target
execute if block ~ ~ ~ #minecraft:slabs[type=top] run return run function fossil_frights:items/heists/trap/common/invalid_target
execute if block ~ ~ ~ #minecraft:stairs run return run execute align y positioned ~ ~1 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute if block ~ ~ ~ #minecraft:cauldrons run return run execute align y positioned ~ ~0.25 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute if block ~ ~ ~ #fossil_frights:center_collision_height/15 run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute if block ~ ~ ~ minecraft:farmland run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute if block ~ ~ ~ minecraft:mud run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute if block ~ ~ ~ minecraft:soul_sand run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
execute if block ~ ~ ~ minecraft:lily_pad run return run execute align y positioned ~ ~0.09375 ~ run function fossil_frights:items/heists/trap/common/place_at_cursor
function fossil_frights:items/heists/trap/common/place_at_cursor
