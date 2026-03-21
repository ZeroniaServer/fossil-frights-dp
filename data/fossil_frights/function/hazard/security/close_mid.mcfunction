# Continue closing every 3x3 gate with the middle row.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:iron_bars

schedule function fossil_frights:hazard/security/close_bottom 4t
