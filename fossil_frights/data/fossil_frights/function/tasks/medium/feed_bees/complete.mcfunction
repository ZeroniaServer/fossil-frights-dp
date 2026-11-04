execute unless score $feed_bees_sel ff_task_state matches 1 run return 0
execute unless score $feed_bees_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "feed_bees"
playsound minecraft:entity.bee.loop master @a[tag=ff_frights_feedback_viewer,distance=..18] -23.5 95.5 54.5 0.9 1.0
function fossil_frights:tasks/medium/feed_bees/cleanup
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"feed_bees"}}] 1
scoreboard players set $feed_bees_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
