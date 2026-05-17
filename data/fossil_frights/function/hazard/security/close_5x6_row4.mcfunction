# Continue closing every 5x6 gate one row lower.
scoreboard players set #gate_crush_lock ff_hazard_rng 0
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^4 ^0 ^2 ^4 ^0 minecraft:iron_bars
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-2 ^4 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-1 ^4 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^0 ^4 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^1 ^4 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^2 ^4 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^5 ^0 ^2 ^5 ^0 minecraft:iron_bars replace minecraft:polished_tuff_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^5 ^0 ^2 ^5 ^0 minecraft:iron_bars replace minecraft:tuff_brick_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-2 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-1 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run setblock ^0 ^4 ^0 minecraft:tuff_brick_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run setblock ^1 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s run setblock ^2 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.0
schedule function fossil_frights:hazard/security/close_5x6_row3 9t
