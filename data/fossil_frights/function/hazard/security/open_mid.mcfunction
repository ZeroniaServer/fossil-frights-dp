# Continue opening every 3x3 gate by clearing the middle row.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:air replace minecraft:iron_bars

schedule function fossil_frights:hazard/security/open_top 4t
