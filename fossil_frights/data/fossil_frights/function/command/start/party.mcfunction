# Start Frights if necessary, then use the same mode-switch flow as the settings board.
execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/end
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run function fossil_frights:join/guard/enter
execute if predicate fossil_frights:player/is_playing run return run function fossil_frights:game/start_room/settings/gamemode/party/click
execute unless predicate fossil_frights:player/is_playing if score $game_running ff_game_state matches 1 run function fossil_frights:join/queue/enter
