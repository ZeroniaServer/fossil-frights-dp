execute store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1
tag @e[type=minecraft:marker,tag=ff_run_member_new] remove ff_run_member_new
scoreboard players add $party_member_count ff_game_state 1
summon minecraft:marker 0 -64 0 {Tags:["ff_run_member","ff_run_member_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_run_order = $party_member_count ff_game_state
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] remove ff_run_member_new
tag @s add ff_active
team join ff_active_gold @s
