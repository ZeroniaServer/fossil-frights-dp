data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
tag @e[type=minecraft:marker,tag=ff_run_member_new] remove ff_run_member_new
scoreboard players add $party_member_count ff_game_state 1
summon minecraft:marker 0 -64 0 {Tags:["ff_run_member","ff_run_member_new"]}
function fossil_frights:player/util/write_username {to:"storage fossil_frights:party member.name"}
function fossil_frights:game/party_mode/add_current_name_macro with storage fossil_frights:party member
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_run_order = $party_member_count ff_game_state
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] remove ff_run_member_new
tag @s add ff_active
team join ff_active_gold @s
