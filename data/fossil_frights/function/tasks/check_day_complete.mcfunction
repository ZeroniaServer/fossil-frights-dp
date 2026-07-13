function fossil_frights:tasks/sync_totals
execute if score $day_active ff_day matches 1 if score $task_selected_total ff_task_state matches 1.. if score $task_completed_total ff_task_state = $task_selected_total ff_task_state run function fossil_frights:game/day_completed
