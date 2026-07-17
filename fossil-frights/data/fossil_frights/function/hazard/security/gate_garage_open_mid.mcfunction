tag @s remove ff_garage_open_mid
tag @s add ff_garage_open_top
scoreboard players set @s ff_gate_timer 6

execute at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button strict
execute at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button strict
execute at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:air replace minecraft:stripped_pale_oak_wood strict
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.0 1.0
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row2 1t
