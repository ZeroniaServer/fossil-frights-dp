$execute unless score $$(task)_sel ff_task_state matches 1 run return 0
scoreboard players set $admin_task_was_completed ff_gui 0
$execute if score $$(task)_done ff_task_state matches 1 run scoreboard players set $admin_task_was_completed ff_gui 1
$execute if score $admin_task_was_completed ff_gui matches 1 run function fossil_frights:admin/menu/task/uncomplete_macro {difficulty:"$(difficulty)",task:"$(task)"}
execute if score $admin_task_was_completed ff_gui matches 1 run return 0
$function fossil_frights:tasks/$(difficulty)/$(task)/complete
execute if score $day_active ff_day matches 1 run function fossil_frights:tasks/tracker/refresh
