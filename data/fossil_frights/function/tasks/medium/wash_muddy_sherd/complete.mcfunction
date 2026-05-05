execute unless score $wash_muddy_sherd_sel ff_task_state matches 1 run return 0
execute unless score $wash_muddy_sherd_done ff_task_state matches 0 run return 0
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Wash Muddy Sherd"
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 positioned 55.5 68.5 61.5 run particle minecraft:block{block_state:{Name:"minecraft:mud"}} ~ ~0.2 ~ 0.35 0.2 0.35 0.08 34 force
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 positioned 55.5 68.5 61.5 run particle minecraft:splash ~ ~0.2 ~ 0.35 0.2 0.35 0.06 24 force
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 positioned 55.5 68.5 61.5 run playsound minecraft:entity.generic.splash block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.8 1.2
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 if score $wash_muddy_sherd_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"wash_muddy_sherd"}] 1
execute if score $wash_muddy_sherd_sel ff_task_state matches 1 run scoreboard players set $wash_muddy_sherd_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
