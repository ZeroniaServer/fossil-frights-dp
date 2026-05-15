execute store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1
tag @s add ff_run_remove_source
execute as @e[type=minecraft:marker,tag=ff_run_member] if score @s ff_active_uuid_0 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_run_remove_source,limit=1] ff_active_uuid_3 run kill @s
tag @s remove ff_run_remove_source
scoreboard players remove $run_roster_count ff_game_state 1
execute if score $run_roster_count ff_game_state matches ..0 run scoreboard players set $run_roster_count ff_game_state 0
