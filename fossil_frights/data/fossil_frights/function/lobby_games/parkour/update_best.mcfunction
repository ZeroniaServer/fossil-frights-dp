scoreboard players operation $parkour_best_time ff_parkour_display = @s ff_parkour_time
scoreboard players set $parkour_best_exists ff_parkour_display 1
function fossil_frights:player/util/write_username {to:"storage fossil_frights:parkour best.name"}
data modify storage fossil_frights:parkour best.profile.name set from storage fossil_frights:parkour best.name
data modify storage fossil_frights:parkour best.profile.id set value [I;0,0,0,0]
execute store result storage fossil_frights:parkour best.profile.id[0] int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:parkour best.profile.id[1] int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:parkour best.profile.id[2] int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:parkour best.profile.id[3] int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:lobby_games/parkour/display/rebuild
