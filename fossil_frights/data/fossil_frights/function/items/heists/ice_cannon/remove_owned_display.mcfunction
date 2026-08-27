tag @s add ff_ice_freeze_cleanup_source
execute as @e[type=minecraft:block_display,tag=ff_ice_freeze] if score @s ff_active_uuid_0 = @a[tag=ff_ice_freeze_cleanup_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_ice_freeze_cleanup_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_ice_freeze_cleanup_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_ice_freeze_cleanup_source,limit=1] ff_active_uuid_3 run kill @s
tag @s remove ff_ice_freeze_cleanup_source
