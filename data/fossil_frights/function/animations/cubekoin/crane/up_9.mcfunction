execute positioned 51 78 59 run playsound minecraft:block.chain.place block @a[distance=..28] ~ ~ ~ 0.9 1.12
function fossil_frights:animations/cubekoin/crane/state_9
tp @a[tag=ff_crane_rider] 51.5 78 59.5
tag @a[tag=ff_crane_rider] remove ff_crane_rider
schedule function fossil_frights:animations/cubekoin/crane/down_1 60t
