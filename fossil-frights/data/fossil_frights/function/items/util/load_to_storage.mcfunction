summon minecraft:item ~ ~ ~ {Tags:["ff_item_definition_temp"],PickupDelay:32767s,Age:-32768,Item:{id:"minecraft:stone",count:1}}
$loot replace entity @e[type=minecraft:item,tag=ff_item_definition_temp,distance=..1,sort=nearest,limit=1] contents loot fossil_frights:$(loot)
$data modify storage $(storage) $(path) set from entity @e[type=minecraft:item,tag=ff_item_definition_temp,distance=..1,sort=nearest,limit=1] Item
kill @e[type=minecraft:item,tag=ff_item_definition_temp,distance=..1,sort=nearest,limit=1]
