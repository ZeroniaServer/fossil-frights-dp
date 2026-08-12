place template fossil_frights:garage_door/2 -4 70 38
execute positioned -4 70 38 run playsound minecraft:block.piston.extend block @a[distance=..24] ~ ~ ~ 1.25 0.95
schedule function fossil_frights:hazard/security/garage_close_3 6t
