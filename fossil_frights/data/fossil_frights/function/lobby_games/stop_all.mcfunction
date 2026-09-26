execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/music/stop
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/reset_player
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/music/stop
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/reset_player
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/music/stop
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/reset_player
execute if entity @s[tag=ff_sulfur_strikers] run function fossil_frights:lobby_games/sulfur_strikers/music/stop
tag @s remove ff_sulfur_strikers
