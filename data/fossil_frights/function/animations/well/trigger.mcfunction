kill @e[type=minecraft:item,distance=..0.6,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/cubekoin]
tag @a[tag=ff_well_teleporting] remove ff_well_teleporting
tag @a[tag=ff_active,sort=nearest,limit=1] add ff_well_teleporting
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.75 ~0.1 ~ 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.53 ~0.1 ~0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~0.75 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.53 ~0.1 ~0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.75 ~0.1 ~ 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.53 ~0.1 ~-0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~-0.75 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.53 ~0.1 ~-0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.38 ~0.1 ~ 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.27 ~0.1 ~0.27 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~0.38 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.27 ~0.1 ~0.27 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.38 ~0.1 ~ 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.27 ~0.1 ~-0.27 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~-0.38 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.27 ~0.1 ~-0.27 0.02 0.03 0.02 0.0 2 force
schedule function fossil_frights:animations/well/chest 5t replace
schedule function fossil_frights:animations/well/head 10t replace
schedule function fossil_frights:animations/well/finish 15t replace
