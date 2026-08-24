# Public default start route. Starts Frights when idle, otherwise follows the current lobby.
execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/already_active
execute if predicate fossil_frights:player/is_playing run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/end
execute if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/party_mode_active run return run function fossil_frights:join/party/enter
execute if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 0 run return run function fossil_frights:join/heists/random
execute if predicate fossil_frights:game_state/game_running run return run function fossil_frights:join/queue/enter
execute if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run scoreboard players set $game_start_spawn_mode ff_game_state 0
execute if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run return run function fossil_frights:join/guard/enter
function fossil_frights:join/queue/enter
