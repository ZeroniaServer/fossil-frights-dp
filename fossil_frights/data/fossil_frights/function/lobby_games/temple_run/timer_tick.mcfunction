function fossil_frights:lobby_games/temple_run/timer/prepare
function fossil_frights:lobby_games/temple_run/timer/sync with storage fossil_frights:temple_run_timer
function fossil_frights:lobby_games/temple_run/update_display
execute if score @s ff_temple_run_time matches 60000.. run function fossil_frights:lobby_games/temple_run/timeout
