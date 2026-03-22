tag @s remove ff_gate_5x6_open_3
tag @s add ff_gate_5x6_open_4
scoreboard players set @s ff_gate_timer 9

execute at @s rotated as @s run fill ^-2 ^3 ^0 ^2 ^3 ^0 minecraft:air replace
execute at @s rotated as @s run setblock ^-2 ^4 ^0 minecraft:polished_tuff_wall
execute at @s rotated as @s run setblock ^-1 ^4 ^0 minecraft:polished_tuff_wall
execute at @s rotated as @s run setblock ^0 ^4 ^0 minecraft:tuff_brick_wall
execute at @s rotated as @s run setblock ^1 ^4 ^0 minecraft:polished_tuff_wall
execute at @s rotated as @s run setblock ^2 ^4 ^0 minecraft:polished_tuff_wall
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.02
