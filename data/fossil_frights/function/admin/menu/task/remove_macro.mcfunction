$execute unless score $$(task)_sel ff_task_state matches 1 run return 0
$execute if score $$(task)_done ff_task_state matches 1 run scoreboard players remove $task_completed_total ff_task_state 1
execute if score $task_completed_total ff_task_state matches ..-1 run scoreboard players set $task_completed_total ff_task_state 0
scoreboard players remove $task_selected_total ff_task_state 1
execute if score $task_selected_total ff_task_state matches ..-1 run scoreboard players set $task_selected_total ff_task_state 0
$scoreboard players set $$(task)_sel ff_task_state 0
$scoreboard players set $$(task)_done ff_task_state 0
$clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"$(task)"}] 1
$scoreboard players reset $tt_$(task) ff_task_tracker
$function fossil_frights:tasks/$(difficulty)/$(task)/reset
execute if score $day_active ff_day matches 1 if score $task_selected_total ff_task_state matches ..0 run function fossil_frights:game/day_completed
execute if score $day_active ff_day matches 1 run function fossil_frights:tasks/check_day_complete
execute if score $day_active ff_day matches 1 run function fossil_frights:tasks/tracker/refresh
