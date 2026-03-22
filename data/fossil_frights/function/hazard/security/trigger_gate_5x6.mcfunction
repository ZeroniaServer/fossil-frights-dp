# Open the nearest idle 5x6 gate temporarily, then close it again after 2 seconds.
tag @s add ff_gate_busy
scoreboard players set #gate_crush_lock ff_hazard_rng 0

tag @s add ff_gate_5x6_open_1
scoreboard players set @s ff_gate_timer 9

execute at @s rotated as @s run fill ^-2 ^0 ^0 ^2 ^0 ^0 minecraft:air replace
execute at @s rotated as @s run setblock ^-2 ^1 ^0 minecraft:polished_tuff_wall
execute at @s rotated as @s run setblock ^-1 ^1 ^0 minecraft:polished_tuff_wall
execute at @s rotated as @s run setblock ^0 ^1 ^0 minecraft:tuff_brick_wall
execute at @s rotated as @s run setblock ^1 ^1 ^0 minecraft:polished_tuff_wall
execute at @s rotated as @s run setblock ^2 ^1 ^0 minecraft:polished_tuff_wall
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
