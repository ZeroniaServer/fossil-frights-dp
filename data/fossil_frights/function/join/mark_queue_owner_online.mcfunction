tag @s add ff_queue_match_source
execute as @e[type=mannequin,tag=ff_queue_mannequin] if score @s ff_active_uuid_0 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_3 run tag @s add ff_queue_owner_online
tag @s remove ff_queue_match_source
