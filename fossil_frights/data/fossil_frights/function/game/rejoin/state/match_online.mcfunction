tag @s add ff_rejoin_source
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_online
tag @s remove ff_rejoin_source
