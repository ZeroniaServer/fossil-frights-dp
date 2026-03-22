# Open the nearest idle gate temporarily, then close it again after 1 second.
tag @s add ff_gate_busy
scoreboard players set #gate_crush_lock ff_hazard_rng 0

tag @s add ff_gate_open_mid
scoreboard players set @s ff_gate_timer 4

execute at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:air replace minecraft:iron_bars
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
