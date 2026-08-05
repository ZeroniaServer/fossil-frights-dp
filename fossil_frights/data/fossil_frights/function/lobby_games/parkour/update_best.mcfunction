scoreboard players operation $parkour_best_time ff_parkour_display = @s ff_parkour_time
scoreboard players set $parkour_best_exists ff_parkour_display 1
function fossil_frights:player/util/write_username {to:"storage fossil_frights:parkour best.name"}
data modify storage fossil_frights:parkour best.profile.name set from storage fossil_frights:parkour best.name
data modify storage fossil_frights:parkour best.profile.id set from entity @s UUID
function fossil_frights:lobby_games/parkour/display/rebuild

