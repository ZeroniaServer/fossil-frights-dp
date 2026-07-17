scoreboard players operation $temple_run_best_time ff_temple_run_display = @s ff_temple_run_time
scoreboard players set $temple_run_best_exists ff_temple_run_display 1
function fossil_frights:player/util/write_username {to:"storage fossil_frights:temple_run best.name"}
data modify storage fossil_frights:temple_run best.profile.name set from storage fossil_frights:temple_run best.name
data modify storage fossil_frights:temple_run best.profile.id set from entity @s UUID
function fossil_frights:temple_run/display/rebuild

