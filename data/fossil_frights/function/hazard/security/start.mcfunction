# Close every security gate in staged passes.
schedule clear fossil_frights:hazard/security/close_3x3_mid
schedule clear fossil_frights:hazard/security/close_3x3_bottom
schedule clear fossil_frights:hazard/security/close_2x2_bottom
schedule clear fossil_frights:hazard/security/open_3x3_mid
schedule clear fossil_frights:hazard/security/open_3x3_top
schedule clear fossil_frights:hazard/security/open_2x2_top
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s positioned ^-1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s positioned ^0 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s positioned ^1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s rotated as @s run fill ^-1 ^1 ^0 ^0 ^1 ^0 minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s rotated as @s positioned ^-1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s rotated as @s positioned ^0 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05

schedule function fossil_frights:hazard/security/close_3x3_mid 4t
schedule function fossil_frights:hazard/security/close_2x2_bottom 4t
