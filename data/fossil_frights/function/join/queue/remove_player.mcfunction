scoreboard players operation $queue_removed ff_queue_order = @s ff_queue_order
tag @s remove ff_in_queue
scoreboard players set @s ff_queue_order 0
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
tag @s add ff_queue_match_source
execute as @e[type=mannequin,tag=ff_queue_mannequin] if score @s ff_active_uuid_0 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_queue_match_source,limit=1] ff_active_uuid_3 run kill @s
tag @s remove ff_queue_match_source
execute as @a[tag=ff_in_queue] if score @s ff_queue_order > $queue_removed ff_queue_order run scoreboard players remove @s ff_queue_order 1
execute as @e[type=mannequin,tag=ff_queue_mannequin] if score @s ff_queue_order > $queue_removed ff_queue_order run scoreboard players remove @s ff_queue_order 1
function fossil_frights:join/queue/refresh_positions
function fossil_frights:join/queue/maybe_notify_next
