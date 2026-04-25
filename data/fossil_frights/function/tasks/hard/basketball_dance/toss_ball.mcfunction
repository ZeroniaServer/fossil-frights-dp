scoreboard players set $basketball_dance_head_tossed ff_task_state 1
summon minecraft:item -19 81.25 36.5 {PickupDelay:10,Motion:[0.0d,0.18d,-0.22d],Tags:["ff_basketball_dance_toss"],Item:{id:"minecraft:player_head",count:1}}
execute positioned -19 80 37 if data entity @e[type=minecraft:item_frame,distance=..1.5,limit=1,sort=nearest] Item run data modify entity @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] Item set from entity @e[type=minecraft:item_frame,distance=..1.5,limit=1,sort=nearest] Item
execute positioned -19 80 37 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1,sort=nearest] Item run data modify entity @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] Item set from entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1,sort=nearest] Item
execute as @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] run data merge entity @s {Tags:[]}
execute positioned -19 81.2 36.5 run playsound minecraft:entity.item.pickup master @a[tag=ff_active,distance=..20] ~ ~ ~ 0.8 0.7
function fossil_frights:tasks/hard/basketball_dance/end_dance
