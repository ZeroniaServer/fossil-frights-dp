scoreboard players set $final_task_sel ff_task_state 0
scoreboard players set $final_task_done ff_task_state 0
scoreboard players set $final_task_dino ff_task_state 0
scoreboard players set $final_task_dna_done ff_task_state 0
scoreboard players set $final_task_fx_timer ff_task_state 0
scoreboard players set $final_task_preview_delay ff_task_state 0
scoreboard players set $final_task_item ff_task_state 0
scoreboard players set $final_task_item_done ff_task_state 0
scoreboard players set $final_task_centrifuge_timer ff_task_state 0
kill @e[type=minecraft:item_display,tag=ff_final_preview]
function fossil_frights:tasks/final/final_task/markers/cleanup
function fossil_frights:tasks/final/final_task/screen/cleanup
clear @a[team=ff_guard] minecraft:amethyst_shard[minecraft:custom_data~{ff_dna:1b}]
execute as @a[team=ff_guard] run function fossil_frights:tasks/final/plushies/clear_items
