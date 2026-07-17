execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_item_done ff_task_state matches 0 run return 0
kill @e[type=minecraft:text_display,tag=ff_final_centrifuge_marker]
kill @e[type=minecraft:interaction,tag=ff_final_centrifuge_click]
scoreboard players set $final_task_item_done ff_task_state 1
function fossil_frights:tasks/final/final_task/screen/setup
function fossil_frights:tasks/final/final_task/centrifuge_start
