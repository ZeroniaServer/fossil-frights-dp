execute unless score $check_ankylo_sel ff_task_state matches 1 run return 0
execute unless score $check_ankylo_done ff_task_state matches 0 run return 0
execute if score $check_ankylo_sel ff_task_state matches 1 if score $check_ankylo_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Check Ankylo"
execute if score $check_ankylo_sel ff_task_state matches 1 if score $check_ankylo_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $check_ankylo_sel ff_task_state matches 1 if score $check_ankylo_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $check_ankylo_sel ff_task_state matches 1 if score $check_ankylo_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"check_ankylo"}] 1
execute if score $check_ankylo_sel ff_task_state matches 1 run scoreboard players set $check_ankylo_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
