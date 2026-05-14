execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_item_done ff_task_state matches 0 run return 0
kill @s
function fossil_frights:tasks/final/final_task/item_stage_finish
