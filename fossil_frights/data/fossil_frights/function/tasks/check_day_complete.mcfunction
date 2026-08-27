execute if score $day_active ff_day matches 1 if score $timer_frozen ff_day matches 0 run function fossil_frights:game/frights/timer/sync_day
execute if score $day_active ff_day matches 1 if score $timer_frozen ff_day matches 0 unless score $day_stopwatch_active ff_day matches 1 run return 0
execute if score $day_active ff_day matches 1 if score $timer_frozen ff_day matches 0 if score $day_stopwatch_active ff_day matches 1 if score $day_timer ff_day matches 6000.. run return run function fossil_frights:game/timeout/day
function fossil_frights:tasks/sync_totals
execute if score $day_active ff_day matches 1 if score $task_selected_total ff_task_state matches 1.. if score $task_completed_total ff_task_state = $task_selected_total ff_task_state run function fossil_frights:game/frights/day/completed
