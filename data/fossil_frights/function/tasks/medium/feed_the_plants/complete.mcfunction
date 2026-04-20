execute unless score $feed_the_plants_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_plants_done ff_task_state matches 0 run return 0
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Feed the Plants"
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.eat block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.8 0.8
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.eat block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.8 1.2
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run playsound minecraft:entity.player.burp block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.45 1.45
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 at @s run particle minecraft:happy_villager ~ ~0.3 ~ 0.35 0.25 0.35 0.02 12 force
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $feed_the_plants_sel ff_task_state matches 1 if score $feed_the_plants_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_the_plants"}] 1
execute if score $feed_the_plants_sel ff_task_state matches 1 run scoreboard players set $feed_the_plants_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
