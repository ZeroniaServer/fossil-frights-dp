# Finish opening every garage door by clearing the top row.
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:air replace minecraft:stripped_pale_oak_wood
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s run function fossil_frights:hazard/security/cleanup_garage_button_items
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
schedule function fossil_frights:hazard/security/cleanup_garage_button_items 2t
