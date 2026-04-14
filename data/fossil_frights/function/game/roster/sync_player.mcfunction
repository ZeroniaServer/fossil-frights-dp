tag @s add ff_run_sync_source
execute as @e[type=minecraft:marker,tag=ff_run_member] if score @s ff_active_uuid_0 = @a[tag=ff_run_sync_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_run_sync_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_run_sync_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_run_sync_source,limit=1] ff_active_uuid_3 run tag @a[tag=ff_run_sync_source,limit=1] add ff_active
tag @s remove ff_run_sync_source

