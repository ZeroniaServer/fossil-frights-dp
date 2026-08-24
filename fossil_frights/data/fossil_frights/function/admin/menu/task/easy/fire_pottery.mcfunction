execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:admin/menu/task/start_custom_day
execute unless score $day_active ff_day matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
scoreboard players set $admin_task_was_selected ff_gui 0
execute if score $fire_pottery_sel ff_task_state matches 1 run scoreboard players set $admin_task_was_selected ff_gui 1
execute if score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:admin/menu/task/complete_macro {difficulty:"easy",task:"fire_pottery"}
execute unless score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:tasks/easy/fire_pottery/selected
execute unless score $admin_task_was_selected ff_gui matches 1 run function fossil_frights:tasks/tracker/refresh
