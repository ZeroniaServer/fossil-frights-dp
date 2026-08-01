advancement revoke @s only fossil_frights:temple_run_restart_consumed
execute unless entity @s[gamemode=adventure] run return 0
execute unless score @s ff_temple_run_running matches 1.. run return 0
function fossil_frights:temple_run/music/stop
function fossil_frights:temple_run/restart
