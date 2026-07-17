summon minecraft:item ~ ~0.86 ~ {Tags:["ff_anvil_output","ff_anvil_output_new"],Item:{id:"minecraft:barrier",count:1},PickupDelay:10}
tag @s add ff_anvil_has_output
data modify entity @e[type=minecraft:item,tag=ff_anvil_output_new,distance=..1,limit=1,sort=nearest] Item set from storage fossil_frights:anvil result.stack
tag @e[type=minecraft:item,tag=ff_anvil_output_new,distance=..1,limit=1,sort=nearest] remove ff_anvil_output_new
