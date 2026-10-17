function fossil_frights:lobby_games/parkour/timer/prepare
function fossil_frights:lobby_games/parkour/timer/sync with storage fossil_frights:parkour_timer
function fossil_frights:lobby_games/parkour/update_display
execute if score @s ff_parkour_time matches 30000.. run function fossil_frights:lobby_games/parkour/timeout

