scoreboard players set $basketball_dance_head_tossed ff_task_state 1
function fossil_frights:items/other/basketball
summon minecraft:item -19 81.25 36.5 {PickupDelay:10,Motion:[0.0d,0.18d,-0.22d],Tags:["ff_basketball_dance_toss"],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] Item set from storage fossil_frights:items definitions.other.basketball
execute as @e[type=minecraft:item,tag=ff_basketball_dance_toss,limit=1,sort=nearest] run data merge entity @s {Tags:[]}
execute positioned -19 81.2 36.5 run playsound minecraft:entity.item.pickup master @a[tag=ff_active,distance=..20] ~ ~ ~ 0.8 0.7
function fossil_frights:tasks/hard/basketball_dance/end_dance
