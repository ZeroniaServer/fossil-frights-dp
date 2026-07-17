execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:admin/menu/task/start_custom_day
execute unless score $day_active ff_day matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
scoreboard players set $admin_task_was_selected ff_gui 0
execute if score $heat_it_up_sel ff_task_state matches 1 run scoreboard players set $admin_task_was_selected ff_gui 1
execute if score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:admin/menu/task/complete_macro {difficulty:"medium",task:"heat_it_up"}
execute unless score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:tasks/medium/heat_it_up/selected
execute unless score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:tasks/tracker/refresh
