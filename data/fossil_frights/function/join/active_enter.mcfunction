execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 run function fossil_frights:game/set_active_player
execute if entity @s[tag=ff_active] run function fossil_frights:game/start
execute if entity @s[tag=ff_active] run function fossil_frights:messages/start/entering_museum
