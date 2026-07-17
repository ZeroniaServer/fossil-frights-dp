tag @s remove ff_gate_5x6_open_3
tag @s add ff_gate_5x6_open_4
scoreboard players set @s ff_gate_timer 9

function fossil_frights:hazard/security/place_5x6_2
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.02
