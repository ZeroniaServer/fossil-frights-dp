execute if score $final_task_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
scoreboard players set $final_task_done ff_task_state 0
scoreboard players set $final_task_dna_done ff_task_state 0
scoreboard players set $final_task_fx_timer ff_task_state 0
scoreboard players set $final_task_preview_delay ff_task_state 0
scoreboard players set $final_task_item ff_task_state 0
scoreboard players set $final_task_item_done ff_task_state 0
scoreboard players set $final_task_centrifuge_timer ff_task_state 0
kill @e[type=minecraft:item_display,tag=ff_final_preview]
function fossil_frights:tasks/final/final_task/screen/cleanup
function fossil_frights:tasks/final/final_task/markers/setup
execute store result score $final_task_dino ff_task_state run random value 1..6
execute store result score $final_task_item ff_task_state run random value 1..11
function fossil_frights:tasks/final/final_task/open_lab_door
execute if score $final_task_sel ff_task_state matches 0 run function fossil_frights:tasks/final/final_task/selected_book
scoreboard players set $final_task_sel ff_task_state 1
function fossil_frights:tasks/final/final_task/screen/setup
function fossil_frights:tasks/tracker/refresh
