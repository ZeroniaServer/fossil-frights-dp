# Finish closing every garage door with the bottom row.
scoreboard players set #gate_crush_lock ff_hazard_rng 0
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s run function fossil_frights:hazard/security/cleanup_garage_button_items
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:stripped_pale_oak_wood
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s positioned ^-1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s positioned ^0 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s positioned ^1 ^0 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^-1 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^0 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run particle minecraft:campfire_cosy_smoke ^1 ^0 ^0 0 0 0 0.01 2 force
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.9
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row0 1t
schedule function fossil_frights:hazard/security/cleanup_garage_button_items 2t
