# Public leave route.
execute if entity @s[tag=ff_tutorial] run return run function fossil_frights:tutorial/stop_silent
execute unless entity @s[tag=ff_game_end_cleanup] unless score $victory_complete ff_game_state matches 1 if predicate fossil_frights:player/is_playing run function fossil_frights:messages/leave/player_left
execute unless entity @s[tag=ff_game_end_cleanup] unless score $victory_complete ff_game_state matches 1 unless entity @s[tag=ff_in_queue] if score $active_set ff_game_state matches 1 if score $game_running ff_game_state matches 0 run function fossil_frights:messages/leave/player_left
execute if predicate fossil_frights:player/is_playing run return run function fossil_frights:command/leave/active
execute if entity @s[gamemode=spectator] run return run function fossil_frights:command/leave/spectator
execute if entity @s[tag=ff_ant_fight] run return run function fossil_frights:lobby_games/ant_fight/exit
execute if score @s ff_parkour_running matches 1.. run return run function fossil_frights:lobby_games/parkour/end
execute if score @s ff_temple_run_running matches 1.. run return run function fossil_frights:lobby_games/temple_run/end
execute if entity @s[tag=ff_sulfur_strikers] run return run function fossil_frights:lobby_games/sulfur_strikers/exit
execute if entity @s[tag=!ff_game_end_cleanup,tag=ff_in_queue] run function fossil_frights:messages/leave/player_left
execute if entity @s[tag=ff_in_queue] run return run function fossil_frights:join/queue/remove_player
function fossil_frights:messages/error/cannot_leave_not_active
