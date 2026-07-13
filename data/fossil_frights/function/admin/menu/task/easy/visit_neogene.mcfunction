execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:admin/menu/task/start_custom_day
execute unless score $day_active ff_day matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
scoreboard players set $admin_task_was_selected ff_gui 0
execute if score $visit_neogene_sel ff_task_state matches 1 run scoreboard players set $admin_task_was_selected ff_gui 1
execute if score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:admin/menu/task/remove_macro {difficulty:"easy",task:"visit_neogene"}
execute unless score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:tasks/easy/visit_neogene/selected
execute unless score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:tasks/tracker/refresh
