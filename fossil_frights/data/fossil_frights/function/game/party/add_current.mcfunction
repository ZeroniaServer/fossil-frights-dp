tag @e[type=minecraft:marker,tag=ff_run_member_new] remove ff_run_member_new
scoreboard players add $party_member_count ff_game_state 1
summon minecraft:marker 0 -64 0 {Tags:["ff_run_member","ff_run_member_new"]}
function fossil_frights:player/util/write_username {to:"storage fossil_frights:party member.name"}
function fossil_frights:game/party/add_current_name_macro with storage fossil_frights:party member
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_run_order = $party_member_count ff_game_state
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @e[type=minecraft:marker,tag=ff_run_member_new,limit=1] remove ff_run_member_new
