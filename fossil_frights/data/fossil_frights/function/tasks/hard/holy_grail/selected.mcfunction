execute if score $holy_grail_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $holy_grail_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/holy_grail
scoreboard players set $holy_grail_sel ff_task_state 1
scoreboard players set $holy_grail_done ff_task_state 0
function fossil_frights:tasks/hard/holy_grail/clear_pots
kill @e[type=minecraft:item_display,x=64,y=82,z=47,dx=0,dy=0,dz=2]
execute store result score $holy_grail_pick ff_task_state run random value 1..6
execute if score $holy_grail_pick ff_task_state matches 1 run place template fossil_frights:sherd_1 64 82 47
execute if score $holy_grail_pick ff_task_state matches 2 run place template fossil_frights:sherd_2 64 82 47
execute if score $holy_grail_pick ff_task_state matches 3 run place template fossil_frights:sherd_3 64 82 47
execute if score $holy_grail_pick ff_task_state matches 4 run place template fossil_frights:sherd_4 64 82 47
execute if score $holy_grail_pick ff_task_state matches 5 run place template fossil_frights:sherd_5 64 82 47
execute if score $holy_grail_pick ff_task_state matches 6 run place template fossil_frights:sherd_6 64 82 47
function fossil_frights:tasks/tracker/refresh
