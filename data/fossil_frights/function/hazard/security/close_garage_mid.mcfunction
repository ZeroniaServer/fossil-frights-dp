# Continue closing every garage door with the middle row.
scoreboard players set #gate_crush_lock ff_hazard_rng 0
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^2 ^-1 minecraft:air replace minecraft:polished_blackstone_button strict
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^2 ^1 minecraft:air replace minecraft:polished_blackstone_button strict
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:stripped_pale_oak_wood strict
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s positioned ^-1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s positioned ^0 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s rotated as @s positioned ^1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute as @e[type=minecraft:marker,tag=ff_garage_3x3] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 0.95
schedule function fossil_frights:hazard/security/refresh_garage_buttons_row1 1t

schedule function fossil_frights:hazard/security/close_garage_bottom 6t
