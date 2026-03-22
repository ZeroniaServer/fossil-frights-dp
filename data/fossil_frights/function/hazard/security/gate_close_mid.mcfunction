tag @s remove ff_gate_close_mid
tag @s add ff_gate_close_bottom
scoreboard players set @s ff_gate_timer 4
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:iron_bars
execute at @s rotated as @s positioned ^-1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^0 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.95
