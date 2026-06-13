execute if score $evolution_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $evolution_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/evolution/selected_book
scoreboard players set $evolution_sel ff_task_state 1
scoreboard players set $evolution_done ff_task_state 0
scoreboard players set $evolution_step ff_task_state 1
scoreboard players set $evolution_flash_red ff_task_state 0
function fossil_frights:tasks/hard/evolution/cleanup
function fossil_frights:tasks/hard/evolution/summon_moving
function fossil_frights:tasks/tracker/refresh
