scoreboard players set $queue_notify_lock ff_game_state 1
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
function fossil_frights:join/remove_player_from_queue
function fossil_frights:game/set_active_player
scoreboard players set $game_start_spawn_mode ff_game_state 0
function fossil_frights:game/start
function fossil_frights:messages/start/entering_museum
scoreboard players set $queue_notify_lock ff_game_state 0
