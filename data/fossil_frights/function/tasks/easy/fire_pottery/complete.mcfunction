execute unless score $fire_pottery_sel ff_task_state matches 1 run return 0
execute unless score $fire_pottery_done ff_task_state matches 0 run return 0
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run setblock 66 79 54 minecraft:campfire[lit=true]
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run setblock 66 79 56 minecraft:campfire[lit=true]
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run setblock 66 79 58 minecraft:campfire[lit=true]
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Fire Pottery"
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $fire_pottery_sel ff_task_state matches 1 if score $fire_pottery_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"fire_pottery"}] 1
execute if score $fire_pottery_sel ff_task_state matches 1 run scoreboard players set $fire_pottery_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
