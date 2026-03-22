tag @s remove ff_garage_wait_close
tag @s add ff_garage_close_mid
scoreboard players set @s ff_gate_timer 6
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button
execute at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button
execute at @s run function fossil_frights:hazard/security/cleanup_garage_button_items
execute at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:stripped_pale_oak_wood
execute at @s rotated as @s positioned ^-1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute at @s rotated as @s positioned ^0 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute at @s rotated as @s positioned ^1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row2 1t
schedule function fossil_frights:hazard/security/cleanup_garage_button_items 2t
