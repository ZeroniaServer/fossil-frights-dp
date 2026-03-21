particle minecraft:poof ~ ~ ~ 0.08 0.08 0.08 0.02 8 force
execute if data entity @s item.components."minecraft:custom_data".ff_reward run summon minecraft:item ~ ~ ~ {Tags:["ff_key_anim_pop"],PickupDelay:0,Item:{id:"minecraft:cobblestone",count:1}}
execute if data entity @s item.components."minecraft:custom_data".ff_reward run data modify entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] Item set from entity @s item.components."minecraft:custom_data".ff_reward
execute if entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] run data merge entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] {Motion:[0.0,0.12,0.0]}
kill @s
