# Continue closing every 5x6 gate one frame lower.
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run function fossil_frights:hazard/security/place_5x6_3
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-2 ^3 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-1 ^3 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^0 ^3 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^1 ^3 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^2 ^3 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.98
schedule function fossil_frights:hazard/security/close_5x6_row2 9t
