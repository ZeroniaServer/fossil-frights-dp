scoreboard players set $temple_run_display_ready ff_temple_run_display 0
function fossil_frights:lobby_games/temple_run/display/cleanup
execute if score $temple_run_best_exists ff_temple_run_display matches 1.. run function fossil_frights:lobby_games/temple_run/display/format_best
execute if score $temple_run_best_exists ff_temple_run_display matches 1.. run function fossil_frights:lobby_games/temple_run/display/show_best
execute unless score $temple_run_best_exists ff_temple_run_display matches 1.. run function fossil_frights:lobby_games/temple_run/display/show_empty
execute if entity @e[type=minecraft:text_display,tag=ff_temple_run_board,limit=1] run scoreboard players set $temple_run_display_ready ff_temple_run_display 1
