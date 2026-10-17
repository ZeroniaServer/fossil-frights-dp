scoreboard players operation $temple_run_best_time ff_temple_run_display = @s ff_temple_run_time
scoreboard players set $temple_run_best_exists ff_temple_run_display 1

data modify storage fossil_frights:temple_run best set value {uuid:[I;0,0,0,0]}
execute store result storage fossil_frights:temple_run best.uuid[0] int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:temple_run best.uuid[1] int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:temple_run best.uuid[2] int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:temple_run best.uuid[3] int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:player/util/write_username {to:"storage fossil_frights:temple_run best.name"}

function fossil_frights:lobby_games/temple_run/display/rebuild
