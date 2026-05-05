scoreboard players set #holy_grail_count ff_task_state 0
execute if score $holy_grail_pick ff_task_state matches 1 if data block 57 69 46 {item:{id:"minecraft:nautilus_shell"}} store result score #holy_grail_count ff_task_state run data get block 57 69 46 item.count 1
execute if score $holy_grail_pick ff_task_state matches 2 if data block 59 69 46 {item:{id:"minecraft:nautilus_shell"}} store result score #holy_grail_count ff_task_state run data get block 59 69 46 item.count 1
execute if score $holy_grail_pick ff_task_state matches 3 if data block 35 69 68 {item:{id:"minecraft:nautilus_shell"}} store result score #holy_grail_count ff_task_state run data get block 35 69 68 item.count 1
execute if score $holy_grail_pick ff_task_state matches 4 if data block 58 69 63 {item:{id:"minecraft:nautilus_shell"}} store result score #holy_grail_count ff_task_state run data get block 58 69 63 item.count 1
execute if score $holy_grail_pick ff_task_state matches 5 if data block 59 69 61 {item:{id:"minecraft:nautilus_shell"}} store result score #holy_grail_count ff_task_state run data get block 59 69 61 item.count 1
execute if score $holy_grail_pick ff_task_state matches 6 if data block 40 69 71 {item:{id:"minecraft:nautilus_shell"}} store result score #holy_grail_count ff_task_state run data get block 40 69 71 item.count 1
execute if score #holy_grail_count ff_task_state matches 2.. run function fossil_frights:tasks/hard/holy_grail/complete
