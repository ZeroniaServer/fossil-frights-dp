tp 0-0-0-0-0 ~ ~ ~ ~ ~
execute as 0-0-0-0-0 at @s rotated as @s rotated ~ 0 run function fossil_frights:player/position_cache/store
execute at @s align xyz positioned ~0.5 ~0.0 ~0.5 run function fossil_frights:items/hoverboard/enable_summon with storage fossil_frights:position_cache
execute at @s align xyz positioned ~0.5 ~0.0 ~0.5 run ride @s mount @e[limit=1,type=minecraft:happy_ghast,tag=ff_hoverboard_new,distance=..0.001]
execute on vehicle run tag @s remove ff_hoverboard_new

tag @s add ff_hoverboard_owner_current
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_0 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_0
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_1 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_1
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_2 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_2
execute on vehicle run scoreboard players operation @s ff_hoverboard_uuid_3 = @a[tag=ff_hoverboard_owner_current,limit=1] ff_active_uuid_3
tag @s remove ff_hoverboard_owner_current

scoreboard players operation #hoverboard_color ff_dummy = @s ff_hoverboard_color
execute on vehicle on passengers run item modify entity @s[type=minecraft:item_display,tag=ff_hoverboard_display_model] contents {function:"minecraft:set_custom_model_data",colors:{values:[{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#hoverboard_color"},score:"ff_dummy"}],mode:"replace_all"}}

tag @s add ff_hoverboard_active
tag @s add ff_hoverboard_activation_grace
execute at @s run playsound fossil-frights:task.hoveraptor master @a[distance=..5] ~ ~ ~ 1 1
