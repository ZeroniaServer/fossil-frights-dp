# Open every security gate in reverse.
schedule clear fossil_frights:hazard/security/close_3x3_mid
schedule clear fossil_frights:hazard/security/close_3x3_bottom
schedule clear fossil_frights:hazard/security/close_2x2_bottom
schedule clear fossil_frights:hazard/security/close_5x6_row4
schedule clear fossil_frights:hazard/security/close_5x6_row3
schedule clear fossil_frights:hazard/security/close_5x6_row2
schedule clear fossil_frights:hazard/security/close_5x6_row1
schedule clear fossil_frights:hazard/security/close_5x6_row0
schedule clear fossil_frights:hazard/security/open_3x3_mid
schedule clear fossil_frights:hazard/security/open_3x3_top
schedule clear fossil_frights:hazard/security/open_2x2_top
schedule clear fossil_frights:hazard/security/open_5x6_row1
schedule clear fossil_frights:hazard/security/open_5x6_row2
schedule clear fossil_frights:hazard/security/open_5x6_row3
schedule clear fossil_frights:hazard/security/open_5x6_row4
schedule clear fossil_frights:hazard/security/open_5x6_row5

execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s rotated as @s run fill ^-1 ^0 ^0 ^0 ^0 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-2 ^0 ^0 ^2 ^0 ^0 minecraft:air replace
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-2 ^5 ^0 minecraft:lodestone
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-2 ^1 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^-1 ^1 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^0 ^1 ^0 minecraft:tuff_brick_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^1 ^1 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^2 ^1 ^0 minecraft:polished_tuff_wall
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run setblock ^2 ^5 ^0 minecraft:lodestone
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95

schedule function fossil_frights:hazard/security/open_3x3_mid 4t
schedule function fossil_frights:hazard/security/open_2x2_top 4t
schedule function fossil_frights:hazard/security/open_5x6_row1 9t
schedule function fossil_frights:hazard/security/finalize_5x6_open 54t
