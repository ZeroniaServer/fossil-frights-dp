# Finish opening every 2x2 gate by clearing the top row.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s rotated as @s run fill ^-1 ^1 ^0 ^0 ^1 ^0 minecraft:air replace minecraft:iron_bars
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
