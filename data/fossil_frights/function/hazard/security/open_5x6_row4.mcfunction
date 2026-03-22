# Continue opening every 5x6 gate upward.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^4 ^0 ^2 ^4 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^4 ^0 ^2 ^4 ^0 minecraft:air replace minecraft:polished_tuff_wall
function fossil_frights:hazard/security/finalize_5x6_open
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.03
schedule function fossil_frights:hazard/security/open_5x6_row5 9t
