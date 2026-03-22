tag @s remove ff_gate_close_bottom
tag @s remove ff_gate_busy
scoreboard players set @s ff_gate_timer 0
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:iron_bars
execute at @s rotated as @s positioned ^-1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^0 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s positioned ^1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^-1 ^0 ^0 0 0 0 0.01 2 force
execute at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^0 ^0 ^0 0 0 0 0.01 2 force
execute at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^1 ^0 ^0 0 0 0 0.01 2 force
execute at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.9
