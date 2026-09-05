scoreboard players set $target_type ff_speedrun_live 0
scoreboard players operation $target_index ff_speedrun_live = $tasks_completed ff_speedrun_live
scoreboard players add $target_index ff_speedrun_live 1
execute if score $tasks_pending ff_speedrun_live matches 0 if score $task_completed_total ff_task_state = $task_selected_total ff_task_state if score $day_current ff_day matches 1..9 run scoreboard players set $target_type ff_speedrun_live 1
execute if score $target_type ff_speedrun_live matches 1 run scoreboard players operation $target_index ff_speedrun_live = $day_current ff_day
execute store result storage fossil_frights:speedrun runtime.target int 1 run scoreboard players get $target_index ff_speedrun_live
execute store result storage fossil_frights:speedrun runtime.type int 1 run scoreboard players get $target_type ff_speedrun_live
