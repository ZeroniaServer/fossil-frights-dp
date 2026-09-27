scoreboard players operation #this ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation #this ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation #this ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation #this ff_active_uuid_3 = @s ff_active_uuid_3
execute as @e[type=mannequin,tag=ff_queue_mannequin] if score @s ff_active_uuid_0 = #this ff_active_uuid_0 if score @s ff_active_uuid_1 = #this ff_active_uuid_1 if score @s ff_active_uuid_2 = #this ff_active_uuid_2 if score @s ff_active_uuid_3 = #this ff_active_uuid_3 at @s run function fossil_frights:join/queue/update_next_up_mannequin_selected
