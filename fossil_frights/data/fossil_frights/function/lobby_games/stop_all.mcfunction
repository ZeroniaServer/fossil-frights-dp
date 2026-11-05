execute if predicate fossil_frights:player/is_playing_parkour run function fossil_frights:lobby_games/parkour/music/stop
execute if predicate fossil_frights:player/is_playing_parkour run function fossil_frights:lobby_games/parkour/reset_player
execute if predicate fossil_frights:player/is_playing_temple_run run function fossil_frights:lobby_games/temple_run/music/stop
execute if predicate fossil_frights:player/is_playing_temple_run run function fossil_frights:lobby_games/temple_run/reset_player
execute if predicate fossil_frights:player/is_playing_ant_fight run function fossil_frights:lobby_games/ant_fight/music/stop
execute if predicate fossil_frights:player/is_playing_ant_fight run function fossil_frights:lobby_games/ant_fight/reset_player
execute if entity @s[tag=ff_sulfur_strikers] run function fossil_frights:lobby_games/sulfur_strikers/music/stop
tag @s remove ff_sulfur_strikers
