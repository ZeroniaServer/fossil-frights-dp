advancement revoke @s only fossil_frights:items/temple_run_restart/consume
execute unless entity @s[gamemode=adventure] run return 0
execute unless predicate fossil_frights:player/is_playing_temple_run run return 0
function fossil_frights:lobby_games/temple_run/music/stop
function fossil_frights:lobby_games/temple_run/restart
