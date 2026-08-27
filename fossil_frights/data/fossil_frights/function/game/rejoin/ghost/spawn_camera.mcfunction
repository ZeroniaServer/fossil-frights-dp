tag @s add ff_rejoin_camera_source
tag @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] remove ff_rejoin_camera_match
execute as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_camera_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_camera_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_camera_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_camera_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_camera_match
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] add ff_rejoin_ghost
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] add ff_rejoin_heists_guard
team join ff_guard @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match]
effect give @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] minecraft:resistance infinite 3 true
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] at @s run function fossil_frights:game/rejoin/ghost/spawn_display
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] remove ff_rejoin_camera_match
tag @s remove ff_rejoin_camera_source
