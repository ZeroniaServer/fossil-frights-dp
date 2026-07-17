execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
function fossil_frights:join/lobby
team join ff_guard @s
scoreboard players set @s ff_join_cooldown 40
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 run function fossil_frights:game/set_active_player
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run function fossil_frights:messages/start/entering_museum
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run function fossil_frights:game/start
