advancement revoke @s only fossil_frights:items/temple_run_restart/consume
execute unless entity @s[gamemode=adventure] run return 0
execute unless score @s ff_temple_run_running matches 1.. run return 0
function fossil_frights:lobby_games/temple_run/music/stop
function fossil_frights:lobby_games/temple_run/restart
