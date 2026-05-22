execute unless score $restock_plushies_sel ff_task_state matches 1 run return 0
execute unless score $restock_plushies_done ff_task_state matches 0 run return 0
execute if score $restock_plushies_sel ff_task_state matches 1 if score $restock_plushies_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Restock Plushies"
execute if score $restock_plushies_sel ff_task_state matches 1 if score $restock_plushies_done ff_task_state matches 0 positioned -24.5 80.5 26.5 run particle minecraft:poof ~ ~ ~ 0.35 0.25 0.35 0.04 28 force
execute if score $restock_plushies_sel ff_task_state matches 1 if score $restock_plushies_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $restock_plushies_sel ff_task_state matches 1 if score $restock_plushies_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $restock_plushies_sel ff_task_state matches 1 if score $restock_plushies_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"restock_plushies"}] 1
execute if score $restock_plushies_sel ff_task_state matches 1 run scoreboard players set $restock_plushies_done ff_task_state 1
execute as @e[type=item_display,tag=ff_deposited_skeleton_plushie] run data merge entity @s {view_range:1}
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/restock_plushies/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
