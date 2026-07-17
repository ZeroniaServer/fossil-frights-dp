execute at @s run summon minecraft:item ~ ~ ~ {Tags:["ff_item_replace_new"],PickupDelay:32767s,Item:{id:"minecraft:stone",count:1}}
$execute at @s run data modify entity @e[type=minecraft:item,tag=ff_item_replace_new,distance=..1,sort=nearest,limit=1] Item set from storage fossil_frights:items $(path)
execute at @s run item replace entity @s weapon.mainhand from entity @e[type=minecraft:item,tag=ff_item_replace_new,distance=..1,sort=nearest,limit=1] contents
execute at @s run kill @e[type=minecraft:item,tag=ff_item_replace_new,distance=..1,sort=nearest,limit=1]
