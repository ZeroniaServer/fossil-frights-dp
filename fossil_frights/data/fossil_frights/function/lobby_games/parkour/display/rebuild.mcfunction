scoreboard players set $parkour_display_ready ff_parkour_display 0
function fossil_frights:lobby_games/parkour/display/cleanup
execute if score $parkour_best_exists ff_parkour_display matches 1.. run function fossil_frights:lobby_games/parkour/display/format_best
execute if score $parkour_best_exists ff_parkour_display matches 1.. run function fossil_frights:lobby_games/parkour/display/show_best
execute unless score $parkour_best_exists ff_parkour_display matches 1.. run function fossil_frights:lobby_games/parkour/display/show_empty
execute if entity @e[type=minecraft:text_display,tag=ff_parkour_board,limit=1] run scoreboard players set $parkour_display_ready ff_parkour_display 1
