summon minecraft:item ~ ~0.86 ~ {Tags:["ff_anvil_output"],Item:{id:"minecraft:barrier",count:1},PickupDelay:10}
data modify entity @e[type=minecraft:item,tag=ff_anvil_output,distance=..1,limit=1,sort=nearest] Item set from storage fossil_frights:anvil result.stack
kill @e[type=minecraft:item,tag=ff_anvil_output,distance=..1,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/vanilla/barrier]
