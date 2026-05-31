# Open the nearest idle 5x6 gate temporarily, then close it again after 2 seconds.
tag @s add ff_gate_busy
scoreboard players set #gate_crush_lock ff_hazard_rng 0

tag @s add ff_gate_5x6_open_1
scoreboard players set @s ff_gate_timer 9

function fossil_frights:hazard/security/place_5x6_5
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 0.95
