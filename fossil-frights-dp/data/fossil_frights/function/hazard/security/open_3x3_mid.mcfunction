# Continue opening every 3x3 gate by clearing the middle row.
execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.0

schedule function fossil_frights:hazard/security/open_3x3_top 4t
