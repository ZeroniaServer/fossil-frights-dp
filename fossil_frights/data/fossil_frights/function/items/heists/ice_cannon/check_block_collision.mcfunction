execute if block ~ ~ ~ #fossil_frights:ice_projectile_pass_through run return 0
execute if block ~ ~ ~ #minecraft:doors[open=false,half=upper] positioned ~ ~-1 ~ run function fossil_frights:interactions/door/open_here
execute if block ~ ~ ~ #minecraft:doors[open=false,half=lower] positioned ~ ~ ~ run function fossil_frights:interactions/door/open_here
execute if block ~ ~ ~ #minecraft:doors[open=true] run return 0
execute if block ~ ~ ~ #fossil_frights:floor_heads_and_skulls align xyz positioned ^ ^ ^-0.9 positioned ~ ~0.5 ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] align xyz positioned ^ ^ ^-0.9 positioned ~ ~0.5 ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=top] align xyz positioned ^ ^ ^-0.9 positioned ~ ~-0.5 ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=north] align xyz positioned ^ ^ ^-0.9 positioned ~ ~ ~-0.5 if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=east] align xyz positioned ^ ^ ^-0.9 positioned ~0.5 ~ ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=south] align xyz positioned ^ ^ ^-0.9 positioned ~ ~ ~0.5 if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=west] align xyz positioned ^ ^ ^-0.9 positioned ~-0.5 ~ ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=false,half=bottom] align xyz positioned ^ ^ ^-0.9 positioned ~ ~0.5 ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=false,half=top] align xyz positioned ^ ^ ^-0.9 positioned ~ ~-0.5 ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=north] align xyz positioned ^ ^ ^-0.9 positioned ~ ~ ~-0.5 if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=east] align xyz positioned ^ ^ ^-0.9 positioned ~0.5 ~ ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=south] align xyz positioned ^ ^ ^-0.9 positioned ~ ~ ~0.5 if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=west] align xyz positioned ^ ^ ^-0.9 positioned ~-0.5 ~ ~ if entity @s[dx=0] run return 0
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run return 0
return 1
