tag @s remove ff_fence_gate.was_open
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run tag @s add ff_fence_gate.was_open

execute if entity @s[tag=ff_fence_gate.was_open] align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.fence_gate.close block @a[x=0] ~ ~ ~
execute if entity @s[tag=ff_fence_gate.was_open] run function fossil_frights:interactions/fence_gate/set_block/closed with entity @s data.ff_fence_gate

execute if entity @s[tag=!ff_fence_gate.was_open] align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.fence_gate.open block @a[x=0] ~ ~ ~
execute if entity @s[tag=!ff_fence_gate.was_open] run function fossil_frights:interactions/fence_gate/set_block/open with entity @s data.ff_fence_gate
