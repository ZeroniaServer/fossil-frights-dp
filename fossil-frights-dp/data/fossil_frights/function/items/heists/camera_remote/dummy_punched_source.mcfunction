tag @s add ff_camera_remote_punched_source
tp @s 0 -200 0
execute as @a[tag=ff_camera_remote_active] if score @s ff_active_uuid_0 = @e[type=minecraft:mannequin,tag=ff_camera_remote_punched_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:mannequin,tag=ff_camera_remote_punched_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:mannequin,tag=ff_camera_remote_punched_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:mannequin,tag=ff_camera_remote_punched_source,limit=1] ff_active_uuid_3 run function fossil_frights:items/heists/camera_remote/exit
kill @s
