tag @s remove ff_gate_2x2_open_top
tag @s add ff_gate_2x2_wait_close
scoreboard players set @s ff_gate_timer 40

execute at @s rotated as @s run fill ^-1 ^1 ^0 ^0 ^1 ^0 minecraft:air replace minecraft:iron_bars
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
