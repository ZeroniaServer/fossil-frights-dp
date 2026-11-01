# One coin per well region, water-only bounds.
execute unless entity @a[limit=1,tag=ff_well_teleporting] as @e[type=minecraft:item,x=45,y=81,z=80,dx=0,dy=3,dz=0,limit=1,predicate=fossil_frights:entity/contents/dinocoin] at @s if block ~ ~ ~ minecraft:water run function fossil_frights:animations/dinocoin/well/trigger
execute unless entity @a[limit=1,tag=ff_well_teleporting] as @e[type=minecraft:item,x=43,y=79,z=78,dx=4,dy=5,dz=4,limit=1,predicate=fossil_frights:entity/contents/dinocoin] at @s if block ~ ~ ~ minecraft:water run function fossil_frights:animations/dinocoin/well/trigger
