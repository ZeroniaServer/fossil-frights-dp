execute unless entity @s[gamemode=adventure] run return 0
execute unless score @s ff_temple_run_running matches 1.. run return 0
function fossil_frights:temple_run/update_display
advancement grant @s only fossil_frights:03_lobby/temple_runner
function fossil_frights:messages/temple_run/completed
function fossil_frights:temple_run/update_personal_best
function fossil_frights:temple_run/check_best
function fossil_frights:temple_run/music/stop
function fossil_frights:temple_run/reset_player
