execute if score $snowball_fight_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $snowball_fight_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/snowball_fight
scoreboard players set $snowball_fight_sel ff_task_state 1
scoreboard players set $snowball_fight_done ff_task_state 0
scoreboard players set $snowball_fight_hits ff_task_state 0
function fossil_frights:tasks/hard/snowball_fight/spawn
function fossil_frights:tasks/tracker/refresh
