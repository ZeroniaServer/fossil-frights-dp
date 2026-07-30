kill @s

execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[limit=1,type=minecraft:text_display,dx=0.002,dy=0.002,dz=0.002] run return run kill @e[type=minecraft:text_display,dx=0.002,dy=0.002,dz=0.002]

execute unless block ~ ~ ~ #fossil_frights:chorus_cola_valid positioned ~-0.5 ~ ~-0.5 run return run function fossil_frights:items/chorus_cola/editor/edit/bad
execute if block ~ ~ ~ #minecraft:slabs[type=top] positioned ~-0.5 ~ ~-0.5 run return run function fossil_frights:items/chorus_cola/editor/edit/bad
execute if block ~ ~ ~ #minecraft:stairs[half=top] positioned ~-0.5 ~ ~-0.5 run return run function fossil_frights:items/chorus_cola/editor/edit/bad

execute if block ~ ~ ~ #minecraft:stairs run return run execute align y positioned ~ ~1 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ #minecraft:cauldrons run return run execute align y positioned ~ ~0.25 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:dirt_path run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:farmland run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:mud run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:soul_sand run return run execute align y positioned ~ ~0.9375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
execute if block ~ ~ ~ minecraft:lily_pad run return run execute align y positioned ~ ~0.09375 ~ run function fossil_frights:items/chorus_cola/editor/edit/here
function fossil_frights:items/chorus_cola/editor/edit/here
