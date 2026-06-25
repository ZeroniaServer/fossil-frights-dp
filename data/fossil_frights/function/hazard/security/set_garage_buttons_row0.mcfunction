# Decorative garage buttons: 3 across the front and 3 across the back, bottom row only.
execute if entity @s[y_rotation=-45..45] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^0 ^-1 minecraft:polished_blackstone_button[face=wall,facing=north] strict
execute if entity @s[y_rotation=-45..45] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^0 ^1 minecraft:polished_blackstone_button[face=wall,facing=south] strict
execute if entity @s[y_rotation=45..135] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^0 ^-1 minecraft:polished_blackstone_button[face=wall,facing=east] strict
execute if entity @s[y_rotation=45..135] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^0 ^1 minecraft:polished_blackstone_button[face=wall,facing=west] strict
execute if entity @s[y_rotation=-135..-45] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^0 ^-1 minecraft:polished_blackstone_button[face=wall,facing=west] strict
execute if entity @s[y_rotation=-135..-45] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^0 ^1 minecraft:polished_blackstone_button[face=wall,facing=east] strict
execute if entity @s[y_rotation=135..180] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^0 ^-1 minecraft:polished_blackstone_button[face=wall,facing=south] strict
execute if entity @s[y_rotation=135..180] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^0 ^1 minecraft:polished_blackstone_button[face=wall,facing=north] strict
execute if entity @s[y_rotation=-180..-135] at @s rotated as @s run fill ^-1 ^0 ^-1 ^1 ^0 ^-1 minecraft:polished_blackstone_button[face=wall,facing=south] strict
execute if entity @s[y_rotation=-180..-135] at @s rotated as @s run fill ^-1 ^0 ^1 ^1 ^0 ^1 minecraft:polished_blackstone_button[face=wall,facing=north] strict
