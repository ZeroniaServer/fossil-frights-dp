tag @s remove ff_gate_open_mid
tag @s add ff_gate_open_top
scoreboard players set @s ff_gate_timer 4

execute at @s rotated as @s run fill ^-1 ^1 ^0 ^1 ^1 ^0 minecraft:air replace minecraft:iron_bars
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.0
