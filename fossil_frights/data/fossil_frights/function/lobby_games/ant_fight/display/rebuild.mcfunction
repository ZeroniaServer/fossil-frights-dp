scoreboard players set $ant_display_ready ff_ant_display 0
function fossil_frights:lobby_games/ant_fight/display/cleanup
execute if score $ant_best_exists ff_ant_display matches 1.. run function fossil_frights:lobby_games/ant_fight/display/show_best
execute unless score $ant_best_exists ff_ant_display matches 1.. run function fossil_frights:lobby_games/ant_fight/display/show_empty
execute if entity @e[type=minecraft:text_display,tag=ff_ant_board,limit=1] run scoreboard players set $ant_display_ready ff_ant_display 1
