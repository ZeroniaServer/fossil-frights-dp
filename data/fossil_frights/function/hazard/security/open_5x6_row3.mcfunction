# Continue opening every 5x6 gate upward.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^3 ^0 ^2 ^3 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^3 ^0 ^2 ^3 ^0 minecraft:air replace minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^3 ^0 ^2 ^3 ^0 minecraft:air replace minecraft:tuff_brick_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-2 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-1 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^0 ^4 ^0 minecraft:tuff_brick_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^1 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^2 ^4 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.02
schedule function fossil_frights:hazard/security/open_5x6_row4 9t
