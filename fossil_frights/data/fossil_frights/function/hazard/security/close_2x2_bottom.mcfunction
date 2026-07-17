# Finish closing every 2x2 gate with the bottom row. The stand sits on the left edge.
scoreboard players set #gate_crush_lock ff_hazard_rng 0
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s run fill ^-1 ^0 ^0 ^0 ^0 ^0 minecraft:iron_bars
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s positioned ^-1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s positioned ^0 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^-1 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^0 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.9
