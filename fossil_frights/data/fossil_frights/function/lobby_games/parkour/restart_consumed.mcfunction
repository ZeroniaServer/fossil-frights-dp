advancement revoke @s only fossil_frights:parkour_restart_consumed
execute unless entity @s[gamemode=adventure] run return 0
execute unless score @s ff_parkour_running matches 1.. run return 0
function fossil_frights:lobby_games/parkour/music/stop
function fossil_frights:lobby_games/parkour/restart
