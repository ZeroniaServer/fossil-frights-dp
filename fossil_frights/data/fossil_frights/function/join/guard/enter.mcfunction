execute if entity @s[tag=ff_fade_tp_active] unless score @s ff_tp_action matches 14 run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_tp_action matches 14 run tag @s remove ff_fade_tp_active
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:lobby_games/temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/end
function fossil_frights:join/lobby
team join ff_guard @s
scoreboard players set @s ff_join_cooldown 40
execute unless entity @s[tag=ff_invite_join_source] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 run function fossil_frights:game/players/set_active
execute unless entity @s[tag=ff_invite_join_source] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run function fossil_frights:messages/start/entering_museum
execute unless entity @s[tag=ff_invite_join_source] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run tag @s add ff_join_start_teleport
execute unless entity @s[tag=ff_invite_join_source] if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 1 run function fossil_frights:game/start
