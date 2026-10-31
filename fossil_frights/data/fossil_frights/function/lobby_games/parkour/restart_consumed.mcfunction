advancement revoke @s only fossil_frights:items/parkour_restart/consume
execute unless entity @s[gamemode=adventure] run return 0
execute unless predicate fossil_frights:player/is_playing_parkour run return 0
function fossil_frights:lobby_games/parkour/music/stop
function fossil_frights:lobby_games/parkour/restart
