scoreboard players set $basketball_dance_head_tossed ff_task_state 1
summon minecraft:item -25.0 81.35 34.5 {PickupDelay:10,Motion:[0.22d,0.18d,0.0d],Tags:["ff_basketball_dance_toss"],Item:{id:"minecraft:stone",count:1}}
loot replace entity @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] contents loot fossil_frights:items/other/basketball
execute as @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] run data merge entity @s {Tags:[]}
execute positioned -25.0 81.3 34.5 run playsound minecraft:entity.item.pickup master @a[tag=ff_active,distance=..20] ~ ~ ~ 0.8 0.7
function fossil_frights:tasks/hard/basketball_dance/end_dance
