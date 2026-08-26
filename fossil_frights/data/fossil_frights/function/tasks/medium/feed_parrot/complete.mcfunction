execute unless score $feed_parrot_sel ff_task_state matches 1 run return 0
execute unless score $feed_parrot_done ff_task_state matches 0 run return 0
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "feed_parrot"
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 positioned 24 99 84 run playsound fossil-frights:task.feed_parrot master @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.9 1.0
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run kill @e[type=minecraft:interaction,tag=ff_feed_parrot_click]
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 positioned 25.5 98.1 89.5 run playsound minecraft:entity.parrot.ambient block @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.8 1.1
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_parrot"}] 1
execute if score $feed_parrot_sel ff_task_state matches 1 run scoreboard players set $feed_parrot_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
