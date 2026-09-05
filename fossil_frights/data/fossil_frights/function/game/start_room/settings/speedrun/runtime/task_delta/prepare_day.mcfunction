execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless score $task_selected_total ff_task_state matches 1.. run return 0
scoreboard players operation $day_final_index ff_speedrun_live = $tasks_completed ff_speedrun_live
scoreboard players operation $day_final_index ff_speedrun_live += $task_selected_total ff_task_state
execute unless score $day_final_index ff_speedrun_live matches 1..30 run return 0
execute store result storage fossil_frights:speedrun runtime.task int 1 run scoreboard players get $day_final_index ff_speedrun_live
execute store result storage fossil_frights:speedrun runtime.day int 1 run scoreboard players get $day_current ff_day
execute as @a[team=ff_guard,limit=1] run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/migrate_day_best_macro with storage fossil_frights:speedrun runtime
