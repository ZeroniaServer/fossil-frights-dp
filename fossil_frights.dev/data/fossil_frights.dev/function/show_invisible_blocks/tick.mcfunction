execute store result score #period ff_dummy run time query gametime
execute store result storage fossil_frights:show_invisible_blocks tick int 1 run scoreboard players operation #period ff_dummy %= #80 ff_constant
execute as @a[gamemode=creative,sort=random] if items entity @s weapon.* minecraft:structure_void at @s anchored eyes positioned ^ ^ ^ run function fossil_frights.dev:show_invisible_blocks/scan_structure_voids with storage fossil_frights:show_invisible_blocks {}
execute as @a[gamemode=creative,sort=random] if items entity @s weapon.* minecraft:zombie_head at @s anchored eyes positioned ^ ^ ^ run function fossil_frights.dev:show_invisible_blocks/scan_zombie_heads with storage fossil_frights:show_invisible_blocks {}
execute as @a[gamemode=creative,sort=random] if items entity @s weapon.* #fossil_frights:weathered_copper_golem_statues at @s anchored eyes positioned ^ ^ ^ run function fossil_frights.dev:show_invisible_blocks/scan_weathered_copper_golem_statues with storage fossil_frights:show_invisible_blocks {}
data remove storage fossil_frights:show_invisible_blocks tick
