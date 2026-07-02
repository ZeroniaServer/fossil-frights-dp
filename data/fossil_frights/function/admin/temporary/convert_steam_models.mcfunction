execute positioned 0 95 52 as @e[type=item_display,distance=..1] if items entity @s contents milk_bucket[lore=[{text:"",extra:["coffee_steam"]}]] run data merge entity @s {Tags:["ff_steam"],billboard:"vertical",width:0.5,height:1,Rotation:[0,0]}
execute positioned 0 95 52 as @e[type=item_display,distance=..1] if items entity @s contents milk_bucket[lore=[{text:"",extra:["coffee_steam"]}]] run loot replace entity @s contents loot fossil_frights:display/steam

execute positioned -1 81 17 as @e[type=item_display,distance=..1] if items entity @s contents milk_bucket[lore=[{text:"",extra:["coffee_steam"]}]] at @s run summon minecraft:item_display ~ ~-0.03 ~ {Tags:["ff_steam"],billboard:"vertical",width:0.5,height:1,transformation:{scale:[0.6,0.6,0.6],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute positioned -1 81 17 as @e[type=item_display,distance=..1] if items entity @s contents milk_bucket[lore=[{text:"",extra:["coffee_steam"]}]] at @s run item replace entity @s contents with milk_bucket[lore=[{text:"",extra:["coffee"]}]]
execute positioned -1 81 17 as @e[type=item_display,tag=ff_steam,distance=..1] run loot replace entity @s contents loot fossil_frights:display/steam

execute positioned 16 81 22 as @e[type=item_display,distance=..1] if items entity @s contents milk_bucket[lore=[{text:"",extra:["coffee_steam"]}]] at @s run summon minecraft:item_display ~ ~-0.03 ~ {Tags:["ff_steam"],billboard:"vertical",width:0.5,height:1,transformation:{scale:[0.6,0.6,0.6],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute positioned 16 81 22 as @e[type=item_display,distance=..1] if items entity @s contents milk_bucket[lore=[{text:"",extra:["coffee_steam"]}]] at @s run item replace entity @s contents with milk_bucket[lore=[{text:"",extra:["coffee"]}]]
execute positioned 16 81 22 as @e[type=item_display,tag=ff_steam,distance=..1] run loot replace entity @s contents loot fossil_frights:display/steam

execute positioned 60.00 73.5 71.15 run kill @e[type=item_display,tag=ff_steam,distance=..1]
summon minecraft:item_display 60.00 73.51 71.15 {Tags:["ff_steam","fh_warden"],billboard:"vertical",width:0.5,height:1,transformation:{scale:[0.6,0.6,0.6],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute positioned 60.00 73.5 71.15 as @e[type=item_display,tag=ff_steam,distance=..1] run loot replace entity @s contents loot fossil_frights:display/steam

execute as @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] run data merge entity @s {billboard:"vertical",width:0.5,height:1,Rotation:[0,0],view_range:1,transformation:{scale:[0,0,0]}}
execute as @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] run loot replace entity @s contents loot fossil_frights:display/steam_green
tp @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] 26.5 80.9375 9.5
