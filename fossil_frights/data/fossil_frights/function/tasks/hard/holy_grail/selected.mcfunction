execute if score $holy_grail_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $holy_grail_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/holy_grail
scoreboard players set $holy_grail_sel ff_task_state 1
scoreboard players set $holy_grail_done ff_task_state 0
tag @e[type=minecraft:interaction,tag=ff_holy_grail.selected] remove ff_holy_grail.selected
execute store result score $holy_grail_pick ff_task_state run random value 1..6
execute if score $holy_grail_pick ff_task_state matches 1 run loot replace block 0 0 0 container.0 3 loot fossil_frights:game/tasks/holy_grail/sherds/1
execute if score $holy_grail_pick ff_task_state matches 2 run loot replace block 0 0 0 container.0 3 loot fossil_frights:game/tasks/holy_grail/sherds/2
execute if score $holy_grail_pick ff_task_state matches 3 run loot replace block 0 0 0 container.0 3 loot fossil_frights:game/tasks/holy_grail/sherds/3
execute if score $holy_grail_pick ff_task_state matches 4 run loot replace block 0 0 0 container.0 3 loot fossil_frights:game/tasks/holy_grail/sherds/4
execute if score $holy_grail_pick ff_task_state matches 5 run loot replace block 0 0 0 container.0 3 loot fossil_frights:game/tasks/holy_grail/sherds/5
execute if score $holy_grail_pick ff_task_state matches 6 run loot replace block 0 0 0 container.0 3 loot fossil_frights:game/tasks/holy_grail/sherds/6
item replace entity @e[limit=1,type=minecraft:item_display,tag=ff_holy_grail_sherd,tag=ff_holy_grail_sherd.left] contents from block 0 0 0 container.0
item replace entity @e[limit=1,type=minecraft:item_display,tag=ff_holy_grail_sherd,tag=ff_holy_grail_sherd.middle] contents from block 0 0 0 container.1
item replace entity @e[limit=1,type=minecraft:item_display,tag=ff_holy_grail_sherd,tag=ff_holy_grail_sherd.right] contents from block 0 0 0 container.2
execute if score $holy_grail_pick ff_task_state matches 1 run tag @e[type=minecraft:interaction,tag=ff_decorated_pot,x=57.5,y=69,z=46.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 2 run tag @e[type=minecraft:interaction,tag=ff_decorated_pot,x=59.5,y=69,z=46.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 3 run tag @e[type=minecraft:interaction,tag=ff_decorated_pot,x=35.5,y=69,z=68.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 4 run tag @e[type=minecraft:interaction,tag=ff_decorated_pot,x=58.5,y=69,z=63.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 5 run tag @e[type=minecraft:interaction,tag=ff_decorated_pot,x=59.5,y=69,z=61.5,distance=..0.01,limit=1] add ff_holy_grail.selected
execute if score $holy_grail_pick ff_task_state matches 6 run tag @e[type=minecraft:interaction,tag=ff_decorated_pot,x=40.5,y=69,z=71.5,distance=..0.01,limit=1] add ff_holy_grail.selected
function fossil_frights:tasks/tracker/refresh
