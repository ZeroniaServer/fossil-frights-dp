execute if score $smelly_toilet_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $smelly_toilet_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/smelly_toilet
execute if score $smelly_toilet_sel ff_task_state matches 0 run setblock 24 81 8 minecraft:pale_oak_wall_sign[facing=west]{front_text:{messages:[{translate:"ff.sign.lower_bathroom.smelly_toilet.0"},{translate:"ff.sign.lower_bathroom.smelly_toilet.1"},{translate:"ff.sign.lower_bathroom.smelly_toilet.2"},{translate:"ff.sign.lower_bathroom.smelly_toilet.3"}]}}
execute if score $smelly_toilet_sel ff_task_state matches 0 as @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{scale:[1.2,1.2,1.2]}}
scoreboard players set $smelly_toilet_sel ff_task_state 1
scoreboard players set $smelly_toilet_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
