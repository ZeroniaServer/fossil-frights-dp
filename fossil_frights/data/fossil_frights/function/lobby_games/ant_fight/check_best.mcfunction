execute if score $ant_best_exists ff_ant_display matches 0 if score @s ff_ant_score matches 1.. run function fossil_frights:lobby_games/ant_fight/update_best
execute if score $ant_best_exists ff_ant_display matches 1 if score @s ff_ant_score > $ant_best_score ff_ant_display run function fossil_frights:lobby_games/ant_fight/update_best
