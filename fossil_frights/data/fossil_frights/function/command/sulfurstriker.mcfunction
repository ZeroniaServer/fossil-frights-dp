execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[gamemode=spectator] if predicate fossil_frights:game_state/game_running run return run function fossil_frights:messages/error/cannot_spawn_while_active
execute if entity @s[gamemode=spectator] run function fossil_frights:join/spectator/command_exit
execute if entity @s[tag=ff_tutorial] run function fossil_frights:messages/error/cannot_spawn_while_tutorial
execute if entity @s[tag=ff_tutorial] run return 0
function fossil_frights:lobby_games/stop_all
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_spawn_while_active
execute if predicate fossil_frights:player/is_playing run return 0
execute unless predicate fossil_frights:player/is_lobby_freeplay run function fossil_frights:messages/error/lobby_command_lobby_only
execute unless predicate fossil_frights:player/is_lobby_freeplay run return 0
function fossil_frights:lobby_games/sulfur_strikers/teleporter_click
