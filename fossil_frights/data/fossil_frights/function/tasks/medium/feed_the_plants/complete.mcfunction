execute unless score $feed_the_plants_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_plants_done ff_task_state matches 0 run return 0
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "feed_the_plants"
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound fossil-frights:task.feed_the_plants master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.eat block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.8 0.8
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.eat block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.8 1.2
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound minecraft:entity.player.burp block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.45 1.45
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_the_plants"}] 1
execute if score $feed_the_plants_sel ff_task_state matches 1 run scoreboard players set $feed_the_plants_done ff_task_state 1
execute if entity @s[type=minecraft:item] run function fossil_frights:items/util/return_all_but_one_to_thrower
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/feed_the_plants/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
