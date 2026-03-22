# Open every security gate in reverse.
schedule clear fossil_frights:hazard/security/close_3x3_mid
schedule clear fossil_frights:hazard/security/close_3x3_bottom
schedule clear fossil_frights:hazard/security/close_2x2_bottom
schedule clear fossil_frights:hazard/security/open_3x3_mid
schedule clear fossil_frights:hazard/security/open_3x3_top
schedule clear fossil_frights:hazard/security/open_2x2_top

execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s rotated as @s run fill ^-1 ^0 ^0 ^0 ^0 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95

schedule function fossil_frights:hazard/security/open_3x3_mid 4t
schedule function fossil_frights:hazard/security/open_2x2_top 4t
