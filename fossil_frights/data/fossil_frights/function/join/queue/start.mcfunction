execute if entity @s[tag=ff_fade_tp_active] run return 0
scoreboard players set $queue_notify_lock ff_game_state 1
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/exit
function fossil_frights:join/queue/remove_player
scoreboard players set $game_start_spawn_mode ff_game_state 0
function fossil_frights:join/guard
scoreboard players set $queue_notify_lock ff_game_state 0
