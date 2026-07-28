kill @s

execute unless block ~ ~ ~ #fossil_frights:chorus_cola_valid positioned ~-0.5 ~ ~-0.5 run return run function fossil_frights:items/chorus_cola/editor/edit/bad
execute if block ~ ~ ~ #minecraft:slabs[type=top] positioned ~-0.5 ~ ~-0.5 run return run function fossil_frights:items/chorus_cola/editor/edit/bad
execute if block ~ ~ ~ #minecraft:stairs[half=top] positioned ~-0.5 ~ ~-0.5 run return run function fossil_frights:items/chorus_cola/editor/edit/bad

execute if block ~ ~ ~ #minecraft:stairs run return run execute align y positioned ~ ~1 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ #minecraft:cauldrons run return run execute align y positioned ~ ~0.25 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:dirt_path run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:lily_pad run return run execute align y positioned ~ ~0.09375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
function fossil_frights:items/chorus_cola/editor/edit/here
