# Continue opening every 5x6 gate upward.
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run function fossil_frights:hazard/security/place_5x6_4
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.0
schedule function fossil_frights:hazard/security/open_5x6_row2 9t
