execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_dna_done ff_task_state matches 0 run return 0
kill @e[type=minecraft:text_display,tag=ff_final_dna_marker]
kill @e[type=minecraft:interaction,tag=ff_final_dna_analyzer_click]
scoreboard players set $final_task_dna_done ff_task_state 1
scoreboard players set $final_task_fx_timer ff_task_state 100
scoreboard players set $final_task_preview_delay ff_task_state 20
playsound minecraft:block.conduit.activate block @a[team=ff_guard,distance=..24] -24.5 107.1 60.5 1 1.15
execute if score $final_task_item_done ff_task_state matches 1 if score $final_task_centrifuge_timer ff_task_state matches 0 run function fossil_frights:tasks/final/final_task/centrifuge_start
