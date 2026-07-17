# Open the nearest idle garage door temporarily, then close it again after 2 seconds.
tag @s add ff_gate_busy
scoreboard players set #gate_crush_lock ff_hazard_rng 0

tag @s add ff_garage_open_mid
scoreboard players set @s ff_gate_timer 6

execute at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:air replace minecraft:stripped_pale_oak_wood strict
execute at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^0 ^1 minecraft:air replace minecraft:polished_blackstone_button strict
execute at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^0 ^-1 minecraft:air replace minecraft:polished_blackstone_button strict
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row1 1t
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
