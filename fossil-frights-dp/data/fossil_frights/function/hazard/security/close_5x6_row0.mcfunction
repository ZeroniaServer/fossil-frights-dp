# Finish closing every 5x6 gate with the bottom frame.
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run function fossil_frights:hazard/security/place_5x6_6
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-2 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^0 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^2 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^-2 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^-1 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^0 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^1 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^2 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.9
