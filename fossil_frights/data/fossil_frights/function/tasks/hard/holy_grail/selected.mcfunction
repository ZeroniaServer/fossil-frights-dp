execute if score $holy_grail_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $holy_grail_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/holy_grail
scoreboard players set $holy_grail_sel ff_task_state 1
scoreboard players set $holy_grail_done ff_task_state 0
tag @e[type=minecraft:interaction,tag=ff_holy_grail.selected] remove ff_holy_grail.selected
kill @e[type=minecraft:item_display,x=64,y=82,z=47,dx=0,dy=0,dz=2]
execute store result score $holy_grail_pick ff_task_state run random value 1..6
execute if score $holy_grail_pick ff_task_state matches 1 run place template fossil_frights:sherd/1 64 82 47
execute if score $holy_grail_pick ff_task_state matches 2 run place template fossil_frights:sherd/2 64 82 47
execute if score $holy_grail_pick ff_task_state matches 3 run place template fossil_frights:sherd/3 64 82 47
execute if score $holy_grail_pick ff_task_state matches 4 run place template fossil_frights:sherd/4 64 82 47
execute if score $holy_grail_pick ff_task_state matches 5 run place template fossil_frights:sherd/5 64 82 47
execute if score $holy_grail_pick ff_task_state matches 6 run place template fossil_frights:sherd/6 64 82 47
execute if score $holy_grail_pick ff_task_state matches 1 run tag @e[type=minecraft:interaction,x=57.5,y=69,z=46.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 2 run tag @e[type=minecraft:interaction,x=59.5,y=69,z=46.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 3 run tag @e[type=minecraft:interaction,x=35.5,y=69,z=68.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 4 run tag @e[type=minecraft:interaction,x=58.5,y=69,z=63.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 5 run tag @e[type=minecraft:interaction,x=59.5,y=69,z=61.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 6 run tag @e[type=minecraft:interaction,x=40.5,y=69,z=71.5,distance=..0.01,limit=1] add ff_holy_grail.selected
function fossil_frights:tasks/tracker/refresh
