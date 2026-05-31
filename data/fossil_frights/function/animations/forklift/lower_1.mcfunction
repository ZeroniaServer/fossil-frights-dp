function fossil_frights:animations/forklift/place_1
execute positioned -1 72 27 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.0 0.92
schedule function fossil_frights:animations/forklift/lower_2 2t
