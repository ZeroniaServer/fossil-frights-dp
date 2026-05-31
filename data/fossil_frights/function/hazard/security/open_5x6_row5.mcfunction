# Finish opening every 5x6 gate at the top frame.
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run function fossil_frights:hazard/security/place_5x6_0
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
