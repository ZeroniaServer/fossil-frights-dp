tag @s remove ff_garage_close_bottom
tag @s remove ff_gate_busy
scoreboard players set @s ff_gate_timer 0
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button
execute at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button
execute at @s run function fossil_frights:hazard/security/cleanup_garage_button_items
execute at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:stripped_pale_oak_wood
execute at @s rotated as @s positioned ^-1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute at @s rotated as @s positioned ^0 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute at @s rotated as @s positioned ^1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^-1 ^0 ^0 0 0 0 0.01 2 force
execute at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^0 ^0 ^0 0 0 0 0.01 2 force
execute at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^1 ^0 ^0 0 0 0 0.01 2 force
execute at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.9
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row0 1t
schedule function fossil_frights:hazard/security/cleanup_garage_button_items 2t
