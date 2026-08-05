scoreboard players add @s ff_parkour_time 5
function fossil_frights:lobby_games/parkour/update_display
execute if score @s ff_parkour_time matches 30000.. run function fossil_frights:lobby_games/parkour/timeout

