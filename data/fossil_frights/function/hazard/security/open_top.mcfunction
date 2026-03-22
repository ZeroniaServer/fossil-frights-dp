# Finish opening every 3x3 gate by clearing the top row.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
