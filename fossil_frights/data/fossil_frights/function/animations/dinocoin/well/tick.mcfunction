# One coin per well region, water-only bounds.
execute unless entity @a[limit=1,tag=ff_well_teleporting] as @e[type=minecraft:item,x=46,y=70,z=37,dx=0,dy=10,dz=0,limit=1,predicate=fossil_frights:entity/contents/dinocoin] at @s if block ~ ~ ~ minecraft:water run function fossil_frights:animations/dinocoin/well/trigger
execute unless entity @a[limit=1,tag=ff_well_teleporting] as @e[type=minecraft:item,x=43,y=69,z=35,dx=5,dy=0,dz=4,limit=1,predicate=fossil_frights:entity/contents/dinocoin] at @s if block ~ ~ ~ minecraft:water run function fossil_frights:animations/dinocoin/well/trigger
