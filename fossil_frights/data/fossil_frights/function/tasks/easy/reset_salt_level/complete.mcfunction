execute unless score $reset_salt_level_sel ff_task_state matches 1 run return 0
execute unless score $reset_salt_level_done ff_task_state matches 0 run return 0
execute if score $reset_salt_level_sel ff_task_state matches 1 if score $reset_salt_level_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "reset_salt_level"
execute if score $reset_salt_level_sel ff_task_state matches 1 if score $reset_salt_level_done ff_task_state matches 0 as @a[tag=ff_frights_feedback_viewer] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.8
execute if score $reset_salt_level_sel ff_task_state matches 1 if score $reset_salt_level_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $reset_salt_level_sel ff_task_state matches 1 if score $reset_salt_level_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $reset_salt_level_sel ff_task_state matches 1 if score $reset_salt_level_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"reset_salt_level"}] 1
execute if score $reset_salt_level_sel ff_task_state matches 1 if score $reset_salt_level_done ff_task_state matches 0 run function fossil_frights:tasks/easy/reset_salt_level/sign_ok
execute if score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players set $reset_salt_level_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
