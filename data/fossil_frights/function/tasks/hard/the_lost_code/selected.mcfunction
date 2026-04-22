execute if score $the_lost_code_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $the_lost_code_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/the_lost_code/selected_book
scoreboard players set $the_lost_code_sel ff_task_state 1
scoreboard players set $the_lost_code_done ff_task_state 0
function fossil_frights:tasks/hard/the_lost_code/reset_pad
execute store result score $the_lost_code_seq ff_task_state run random value 1..10
function fossil_frights:tasks/hard/the_lost_code/ensure_frames
function fossil_frights:tasks/hard/the_lost_code/apply_sequence
function fossil_frights:tasks/tracker/refresh
