tag @s remove ff_gate_5x6_open_5
tag @s add ff_gate_5x6_wait_close
scoreboard players set @s ff_gate_timer 40

function fossil_frights:hazard/security/place_5x6_0
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
