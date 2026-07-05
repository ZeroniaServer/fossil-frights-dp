scoreboard players set $task_compass_item ff_compass -1
execute unless score $final_task_dna_done ff_task_state matches 1 run return 0
scoreboard players set $task_compass_item ff_compass 0
$execute if entity @a[team=ff_guard,predicate=fossil_frights:player/inventory/$(item),limit=1] run scoreboard players set $task_compass_item ff_compass 1
$execute if entity @e[type=minecraft:item,predicate=fossil_frights:entity/contents/$(item),limit=1] run scoreboard players set $task_compass_item ff_compass 1
