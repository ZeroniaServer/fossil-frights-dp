execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:messages/error/cannot_spawn_while_tutorial
execute if entity @s[tag=ff_tutorial] run return 0
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_spawn_while_active
execute if predicate fossil_frights:player/is_playing run return 0
execute if entity @s[tag=ff_in_queue] run function fossil_frights:messages/error/cannot_spawn_while_in_queue
execute if entity @s[tag=ff_in_queue] run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_spawn_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:messages/error/cannot_spawn_while_ant_fight
execute if entity @s[tag=ff_ant_fight] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:messages/error/cannot_spawn_while_parkour
execute if score @s ff_parkour_running matches 1.. run return 0
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:messages/error/cannot_spawn_while_temple_run
execute if score @s ff_temple_run_running matches 1.. run return 0
execute unless predicate fossil_frights:player/is_lobby_freeplay run function fossil_frights:messages/error/lobby_command_lobby_only
execute unless predicate fossil_frights:player/is_lobby_freeplay run return 0
function fossil_frights:lobby_games/parkour/teleporter_click
