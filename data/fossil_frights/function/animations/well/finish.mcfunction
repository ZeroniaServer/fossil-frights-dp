execute as @a[tag=ff_well_teleporting,limit=1] at @s run playsound minecraft:entity.enderman.teleport player @a[distance=..24] ~ ~ ~ 0.9 1.2
execute as @a[tag=ff_well_teleporting,limit=1] at @s run playsound minecraft:block.portal.travel player @a[distance=..24] ~ ~ ~ 0.7 1.0
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:portal ~ ~1 ~ 0.35 0.6 0.35 0.15 40 force
tp @a[tag=ff_well_teleporting,limit=1] 20 70 25 0 0
execute positioned 20 70 25 run particle minecraft:portal ~ ~1 ~ 0.35 0.6 0.35 0.15 40 force
tag @a[tag=ff_well_teleporting] remove ff_well_teleporting
