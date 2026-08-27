tag @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] remove ff_rejoin_camera_dummy_match
execute as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_camera_dummy_match
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_camera_dummy_match,limit=1] at @s rotated as @s run tp @e[type=minecraft:marker,tag=ff_rejoin_match] ~ ~ ~ ~ ~
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_dummy_match] remove ff_rejoin_camera_dummy_match
