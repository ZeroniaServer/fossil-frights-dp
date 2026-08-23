execute unless score $the_lost_code_sel ff_task_state matches 1 run return 0
execute unless score $the_lost_code_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "the_lost_code"
execute as @a[tag=ff_frights_feedback_viewer] at @s run playsound fossil-frights:task.the_lost_code master @s ~ ~ ~ 0.9 1.0
execute as @a[tag=ff_frights_feedback_viewer] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.9 1.0
execute as @a[tag=ff_frights_feedback_viewer] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.45 0.7 0.45 0.2 52 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"the_lost_code"}] 1
scoreboard players set $the_lost_code_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
