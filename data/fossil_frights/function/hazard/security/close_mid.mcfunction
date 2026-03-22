# Continue closing every 3x3 gate with the middle row.
scoreboard players set #gate_crush_lock ff_hazard_rng 0
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s positioned ^-1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s positioned ^0 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s positioned ^1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.95

schedule function fossil_frights:hazard/security/close_bottom 4t
