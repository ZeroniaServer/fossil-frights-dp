scoreboard players operation $ant_best_score ff_ant_display = @s ff_ant_score
scoreboard players operation @s ff_ant_top_score = @s ff_ant_score
scoreboard players set $ant_best_exists ff_ant_display 1
function fossil_frights:player/util/write_username {to:"storage fossil_frights:ant_fight best.name"}
data modify storage fossil_frights:ant_fight best.profile.name set from storage fossil_frights:ant_fight best.name
data modify storage fossil_frights:ant_fight best.profile.id set value [I;0,0,0,0]
execute store result storage fossil_frights:ant_fight best.profile.id[0] int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:ant_fight best.profile.id[1] int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:ant_fight best.profile.id[2] int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:ant_fight best.profile.id[3] int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:lobby_games/ant_fight/display/rebuild
