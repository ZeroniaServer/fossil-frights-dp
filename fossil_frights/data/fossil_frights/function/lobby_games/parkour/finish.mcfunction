execute unless entity @s[gamemode=adventure] run return 0
execute unless predicate fossil_frights:player/is_playing_parkour run return 0
function fossil_frights:lobby_games/parkour/update_display
advancement grant @s only fossil_frights:03_lobby/busy_bee
function fossil_frights:messages/parkour/completed
function fossil_frights:lobby_games/parkour/update_personal_best
function fossil_frights:lobby_games/parkour/check_best
function fossil_frights:lobby_games/parkour/music/stop
function fossil_frights:lobby_games/parkour/reset_player
