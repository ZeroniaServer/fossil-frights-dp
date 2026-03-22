# Continue opening every garage door with the middle row.
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:air replace minecraft:stripped_pale_oak_wood
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s run function fossil_frights:hazard/security/cleanup_garage_button_items
execute as @e[type=minecraft:armor_stand,tag=ff_garage_3x3] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.0
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row2 1t
schedule function fossil_frights:hazard/security/cleanup_garage_button_items 2t

schedule function fossil_frights:hazard/security/open_garage_top 6t
