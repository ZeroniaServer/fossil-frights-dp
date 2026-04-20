function fossil_frights:temple_run/display/cleanup
execute if score $temple_run_best_exists ff_temple_run_display matches 1.. run function fossil_frights:temple_run/display/format_best
execute if score $temple_run_best_exists ff_temple_run_display matches 1.. run function fossil_frights:temple_run/display/show_best
execute unless score $temple_run_best_exists ff_temple_run_display matches 1.. run function fossil_frights:temple_run/display/show_empty

