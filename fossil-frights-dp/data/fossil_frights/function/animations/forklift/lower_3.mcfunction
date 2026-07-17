function fossil_frights:animations/forklift/place_3
execute positioned -1 72 27 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.0 1.08
schedule function fossil_frights:animations/forklift/lower_4 2t
