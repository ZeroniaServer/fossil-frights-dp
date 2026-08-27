tag @s add ff_run_remove_source
execute as @e[type=minecraft:marker,tag=ff_run_member] if score @s ff_active_uuid_0 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_3 run kill @s
tag @s remove ff_run_remove_source
scoreboard players remove $party_member_count ff_game_state 1
execute if score $party_member_count ff_game_state matches ..0 run scoreboard players set $party_member_count ff_game_state 0
