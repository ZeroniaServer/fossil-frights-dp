tag @s add ff_hoverboard_owner_current
summon minecraft:happy_ghast ~ ~ ~ {Tags:["ff_hoverboard","ff_hoverboard_new"],Silent:true,Invulnerable:true,PersistenceRequired:true,equipment:{body:{id:"minecraft:white_harness",count:1}},attributes:[{id:"minecraft:scale",base:0.2}]}
ride @s mount @e[type=minecraft:happy_ghast,tag=ff_hoverboard_new,distance=..2,sort=nearest,limit=1]
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_0 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_0
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_1 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_1
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_2 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_2
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_3 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_3
execute on vehicle run tag @s remove ff_hoverboard_new
tag @s remove ff_hoverboard_owner_current
tag @s add ff_hoverboard_active
execute at @s run playsound fossil-frights:task.hoveraptor master @a[distance=..5] ~ ~ ~ 1 1
function fossil_frights:items/hoverboard/visibility
