execute if score $scrape_resin_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $scrape_resin_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/scrape_resin
execute if score $scrape_resin_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/scrape_resin/set_display_hidden
scoreboard players set $scrape_resin_sel ff_task_state 1
scoreboard players set $scrape_resin_done ff_task_state 0
function fossil_frights:tasks/easy/scrape_resin/apply_resin
function fossil_frights:tasks/easy/scrape_resin/spawn
function fossil_frights:tasks/tracker/refresh
