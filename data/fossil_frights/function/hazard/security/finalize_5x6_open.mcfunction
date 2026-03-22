# Hard reset the 5x6 gate to its fully open visual state.
execute at @s rotated as @s run fill ^-2 ^0 ^0 ^2 ^5 ^0 minecraft:air replace minecraft:iron_bars
execute at @s rotated as @s run fill ^-2 ^0 ^0 ^2 ^5 ^0 minecraft:air replace minecraft:polished_tuff_wall
execute at @s rotated as @s run fill ^-2 ^0 ^0 ^2 ^5 ^0 minecraft:air replace minecraft:tuff_brick_wall
execute at @s rotated as @s run setblock ^-2 ^5 ^0 minecraft:lodestone
execute at @s rotated as @s run setblock ^2 ^5 ^0 minecraft:lodestone
