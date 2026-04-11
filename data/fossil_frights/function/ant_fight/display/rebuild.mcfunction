function fossil_frights:ant_fight/display/cleanup
execute if score $ant_best_exists ff_ant_display matches 1.. run function fossil_frights:ant_fight/display/show_best
execute unless score $ant_best_exists ff_ant_display matches 1.. run function fossil_frights:ant_fight/display/show_empty
