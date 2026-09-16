execute unless score $fix_sculker_sel ff_task_state matches 1 run return 0
execute unless score $fix_sculker_done ff_task_state matches 0 run return 0
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "fix_sculker"
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 run setblock 36 68 61 minecraft:sculk_catalyst[bloom=true]
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 positioned 36.5 68.5 61.5 run particle minecraft:sculk_soul ~ ~ ~ 0.35 0.45 0.35 0.04 18 force
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 positioned 36.5 68.5 61.5 run particle minecraft:sculk_charge_pop ~ ~ ~ 0.28 0.35 0.28 0.03 22 force
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 positioned 36.5 68.5 61.5 run particle minecraft:glow ~ ~ ~ 0.32 0.42 0.32 0.02 16 force
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 positioned 36.5 68.5 61.5 run playsound minecraft:block.sculk_catalyst.bloom master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 1.0 1.0
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 positioned 36.5 68.5 61.5 run playsound minecraft:block.sculk_sensor.clicking master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 0.85
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $fix_sculker_sel ff_task_state matches 1 if score $fix_sculker_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"fix_sculker"}] 1
execute if score $fix_sculker_sel ff_task_state matches 1 run scoreboard players set $fix_sculker_done ff_task_state 1
execute if entity @s[type=minecraft:item] run function fossil_frights:items/util/return_all_but_one_to_thrower
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/fix_sculker/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
