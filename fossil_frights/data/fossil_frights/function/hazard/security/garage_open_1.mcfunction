place template minecraft:garage_door_1 -4 70 38
execute positioned -4 70 38 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.25 1.0
schedule function fossil_frights:hazard/security/garage_open_0 6t
