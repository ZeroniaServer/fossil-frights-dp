execute unless score $naughty_or_nice_sel ff_task_state matches 1 run return 0
execute unless score $naughty_or_nice_done ff_task_state matches 0 run return 0
execute as @a[tag=ff_frights_feedback_viewer] at @s run playsound fossil_frights:task.hohoho master @s ~ ~ ~ 0.9 1.0
scoreboard players set #naughty_or_nice_done_1 ff_task_state 1
scoreboard players set #naughty_or_nice_done_2 ff_task_state 1
scoreboard players set #naughty_or_nice_done_3 ff_task_state 1
scoreboard players set #naughty_or_nice_done_4 ff_task_state 1
function fossil_frights:tasks/final/naughty_or_nice/recipients/update_lists
function fossil_frights:tasks/final/naughty_or_nice/cleanup
data modify storage fossil_frights:tasks complete.task_name set value "naughty_or_nice"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"naughty_or_nice"}}] 1
scoreboard players set $naughty_or_nice_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
