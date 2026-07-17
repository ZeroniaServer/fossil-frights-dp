tag @s remove ff_gate_5x6_wait_close
tag @s add ff_gate_5x6_close_4
scoreboard players set @s ff_gate_timer 9
scoreboard players set #gate_crush_lock ff_hazard_rng 0

function fossil_frights:hazard/security/place_5x6_1
execute at @s rotated as @s positioned ^-2 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^-1 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^0 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^1 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^2 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
