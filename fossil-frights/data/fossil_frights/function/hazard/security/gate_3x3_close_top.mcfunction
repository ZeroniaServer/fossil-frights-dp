tag @s remove ff_gate_wait_close
tag @s add ff_gate_close_mid
scoreboard players set @s ff_gate_timer 4
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:iron_bars
execute at @s rotated as @s positioned ^-1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^0 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
