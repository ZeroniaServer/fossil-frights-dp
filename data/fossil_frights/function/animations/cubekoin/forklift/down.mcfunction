fill 0 72 27 0 72 28 air
fill -2 72 27 -2 72 28 air
fill 0 70 27 0 70 28 minecraft:polished_deepslate_slab[type=top]
fill -2 70 27 -2 70 28 minecraft:polished_deepslate_slab[type=top]
execute positioned -1 72 27 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.25 1.0
setblock 0 70 26 minecraft:polished_deepslate_wall[south=tall]
setblock -2 70 26 minecraft:polished_deepslate_wall[south=tall]
setblock -2 72 26 minecraft:polished_deepslate_wall[north=none]
setblock 0 72 26 minecraft:polished_deepslate_wall[north=none]
