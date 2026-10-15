data modify storage fossil_frights:session player_data set from entity @s {}
function fossil_frights:player/util/write_username {to:"storage fossil_frights:session player_name"}

execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:session player_data.UUID[0]
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:session player_data.UUID[1]
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:session player_data.UUID[2]
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:session player_data.UUID[3]

execute positioned 0.5 0.5 16.5 summon minecraft:area_effect_cloud run function fossil_frights:player/session/tracker/init with storage fossil_frights:session {}

data remove storage fossil_frights:session player_data
data remove storage fossil_frights:session player_name
scoreboard players set @s ff_session_state -1
