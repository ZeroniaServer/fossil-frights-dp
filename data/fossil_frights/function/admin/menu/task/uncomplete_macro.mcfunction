$execute unless score $$(task)_sel ff_task_state matches 1 run return 0
$execute unless score $$(task)_done ff_task_state matches 1 run return 0
scoreboard players remove $task_completed_total ff_task_state 1
execute if score $task_completed_total ff_task_state matches ..-1 run scoreboard players set $task_completed_total ff_task_state 0
scoreboard players remove $task_selected_total ff_task_state 1
execute if score $task_selected_total ff_task_state matches ..-1 run scoreboard players set $task_selected_total ff_task_state 0
$function fossil_frights:tasks/$(difficulty)/$(task)/reset
$scoreboard players set $$(task)_sel ff_task_state 0
$scoreboard players set $$(task)_done ff_task_state 0
$function fossil_frights:tasks/$(difficulty)/$(task)/selected
execute if score $day_active ff_day matches 1 run function fossil_frights:tasks/tracker/refresh
