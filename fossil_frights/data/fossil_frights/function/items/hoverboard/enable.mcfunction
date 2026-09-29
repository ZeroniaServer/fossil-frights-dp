tp 0-0-0-0-0 ~ ~ ~ ~ ~
execute as 0-0-0-0-0 at @s rotated as @s rotated ~ 0 run function fossil_frights:player/position_cache/store
execute at @s align xyz positioned ~0.5 ~0.0 ~0.5 run function fossil_frights:items/hoverboard/enable_summon with storage fossil_frights:position_cache
execute at @s align xyz positioned ~0.5 ~0.0 ~0.5 run ride @s mount @e[limit=1,type=minecraft:happy_ghast,tag=ff_hoverboard_new,distance=..0.001]
execute on vehicle run tag @s remove ff_hoverboard_new

execute if entity @s[team=ff_lobby] run tag @s add ff_hoverboard_setup_owner
execute if entity @s[tag=ff_hoverboard_setup_owner] as @a[team=ff_lobby,tag=!ff_hoverboard_setup_owner,gamemode=!spectator,distance=..0.5,sort=nearest,limit=1] unless predicate fossil_frights:entity/has_vehicle run tag @s add ff_hoverboard_setup_passenger
execute if entity @s[tag=ff_hoverboard_setup_owner] on vehicle run tag @s add ff_hoverboard_setup_vehicle
execute if entity @s[tag=ff_hoverboard_setup_owner] on vehicle on passengers if entity @s[tag=ff_hoverboard_display_model] run ride @a[tag=ff_hoverboard_setup_passenger,limit=1] mount @s
execute if entity @s[tag=ff_hoverboard_setup_owner] run ride @s dismount
execute if entity @s[tag=ff_hoverboard_setup_owner] run ride @s mount @e[type=minecraft:happy_ghast,tag=ff_hoverboard_setup_vehicle,distance=..2,sort=nearest,limit=1]
function fossil_frights:lobby_games/stop_all
execute as @a[tag=ff_hoverboard_setup_passenger,limit=1] run function fossil_frights:lobby_games/stop_all
tag @a[tag=ff_hoverboard_setup_passenger] add ff_hoverboard_back_rider
tag @a[tag=ff_hoverboard_setup_passenger] remove ff_hoverboard_setup_passenger
execute if entity @s[tag=ff_hoverboard_setup_vehicle] on vehicle run tag @s remove ff_hoverboard_setup_vehicle
tag @s remove ff_hoverboard_setup_owner

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
execute at @s run playsound fossil-frights:hoverboard.enable master @a[distance=..5] ~ ~ ~ 1 1
