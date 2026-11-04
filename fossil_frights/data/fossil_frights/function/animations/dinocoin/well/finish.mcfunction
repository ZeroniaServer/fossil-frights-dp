execute at @a[limit=1,tag=ff_well_teleporting] run playsound minecraft:entity.enderman.teleport player @a[distance=..24] ~ ~ ~ 0.9 1.2
execute at @a[limit=1,tag=ff_well_teleporting] run playsound minecraft:block.portal.travel player @a[distance=..24] ~ ~ ~ 0.7 1.0
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:portal ~ ~1 ~ 0.35 0.6 0.35 0.15 40 force
tp @a[limit=1,tag=ff_well_teleporting] 20 70 25 0 0
execute positioned 20 70 25 run particle minecraft:portal ~ ~1 ~ 0.35 0.6 0.35 0.15 40 force
tag @a[limit=1,tag=ff_well_teleporting] remove ff_well_teleporting
