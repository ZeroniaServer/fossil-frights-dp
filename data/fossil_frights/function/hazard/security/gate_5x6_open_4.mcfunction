tag @s remove ff_gate_5x6_open_4
tag @s add ff_gate_5x6_open_5
scoreboard players set @s ff_gate_timer 9

execute at @s rotated as @s run fill ^-2 ^4 ^0 ^2 ^4 ^0 minecraft:air replace
execute at @s rotated as @s run fill ^-1 ^5 ^0 ^1 ^5 ^0 minecraft:air replace
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.03
