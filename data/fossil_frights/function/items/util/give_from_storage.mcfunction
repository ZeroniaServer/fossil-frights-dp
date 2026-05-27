execute at @s run summon minecraft:item ~ ~ ~ {Tags:["ff_item_delivery_new"],PickupDelay:0s,Item:{id:"minecraft:stone",count:1}}
$execute at @s run data modify entity @e[type=minecraft:item,tag=ff_item_delivery_new,distance=..1,sort=nearest,limit=1] Item set from storage fossil_frights:items $(path)
execute at @s run data modify entity @e[type=minecraft:item,tag=ff_item_delivery_new,distance=..1,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @s run tag @e[type=minecraft:item,tag=ff_item_delivery_new,distance=..1,sort=nearest,limit=1] remove ff_item_delivery_new
