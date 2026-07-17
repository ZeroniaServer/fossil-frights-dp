function fossil_frights:animations/forklift/place_2
execute positioned -1 72 27 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.0 1.0
schedule function fossil_frights:animations/forklift/lower_3 2t
