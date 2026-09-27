tag @s add ff_return_position_source
execute as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] if score @s ff_active_uuid_0 = @a[tag=ff_return_position_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_return_position_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_return_position_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_return_position_source,limit=1] ff_active_uuid_3 at @s summon minecraft:marker run function fossil_frights:cameras/forced_spectate_get_position
tag @s remove ff_return_position_source
