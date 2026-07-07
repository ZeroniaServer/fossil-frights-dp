execute as @e[type=minecraft:item,tag=ff_ag_float] run data merge entity @s {NoGravity:0b,PickupDelay:0}
tag @e[type=minecraft:item,tag=ff_ag_float] remove ff_ag_float
