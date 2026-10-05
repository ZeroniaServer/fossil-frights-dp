execute unless entity @s[gamemode=adventure] run function fossil_frights:lobby_games/sulfur_strikers/music/stop
execute unless predicate fossil_frights:location/lobby_games/sulfur_strikers run function fossil_frights:lobby_games/sulfur_strikers/music/stop
execute if entity @s[tag=ff_sulfur_strikers_music] run function fossil_frights:lobby_games/sulfur_strikers/music/tick
execute if entity @s[gamemode=adventure] if predicate fossil_frights:location/lobby_games/sulfur_strikers run function fossil_frights:lobby_games/sulfur_strikers/music/start
