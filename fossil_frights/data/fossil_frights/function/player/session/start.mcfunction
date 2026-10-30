data modify storage fossil_frights:session player_data set value {}
data modify storage fossil_frights:session player_data.entity_data set from entity @s {}
data modify storage fossil_frights:session player_data.uuid set from storage fossil_frights:session player_data.entity_data.UUID
function fossil_frights:player/util/write_username {to:"storage fossil_frights:session player_data.name"}

execute unless function fossil_frights:player/session/start/new_player_data_entry run function fossil_frights:player/session/start/restore_scores

execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:session player_data.uuid[0]
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:session player_data.uuid[1]
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:session player_data.uuid[2]
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:session player_data.uuid[3]

execute positioned 0.5 0.5 16.5 summon minecraft:area_effect_cloud run function fossil_frights:player/session/tracker/init with storage fossil_frights:session player_data

function fossil_frights:player/session/start/update_leaderboards with storage fossil_frights:session player_data

data remove storage fossil_frights:session player_data
scoreboard players set @s ff_session_state -1

team leave @s
execute if predicate fossil_frights:player/team/dev_mode run team join ff_dev_mode
execute if predicate fossil_frights:player/team/lobby run team join ff_lobby
execute if predicate fossil_frights:player/team/guard run team join ff_guard
execute if predicate fossil_frights:player/team/thief run team join ff_thief
execute if predicate fossil_frights:player/team/spectator run team join ff_spectator
