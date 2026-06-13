execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Lab Experiment"
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"pterodactyl_clone"}] 1
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"plesiosaur_clone"}] 1
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"trike_clone"}] 1
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"sniffer_clone"}] 1
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"t_rex_clone"}] 1
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"velociraptor_clone"}] 1
execute if score $final_task_sel ff_task_state matches 1 run scoreboard players set $final_task_done ff_task_state 1
scoreboard players set $final_task_preview_delay ff_task_state 0
function fossil_frights:tasks/final/final_task/markers/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
