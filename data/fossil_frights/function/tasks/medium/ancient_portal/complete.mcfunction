execute unless score $ancient_portal_sel ff_task_state matches 1 run return 0
execute unless score $ancient_portal_done ff_task_state matches 0 run return 0
execute if score $ancient_portal_sel ff_task_state matches 1 if score $ancient_portal_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "ancient_portal"
execute if score $ancient_portal_sel ff_task_state matches 1 if score $ancient_portal_done ff_task_state matches 0 run scoreboard players set $ancient_portal_timer ff_task_state 300
execute if score $ancient_portal_sel ff_task_state matches 1 if score $ancient_portal_done ff_task_state matches 0 positioned 51.5 72.0 51.5 run playsound minecraft:item.bottle.empty block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.75 1.55
execute if score $ancient_portal_sel ff_task_state matches 1 if score $ancient_portal_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $ancient_portal_sel ff_task_state matches 1 if score $ancient_portal_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $ancient_portal_sel ff_task_state matches 1 if score $ancient_portal_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"ancient_portal"}] 1
execute if score $ancient_portal_sel ff_task_state matches 1 run scoreboard players set $ancient_portal_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/ancient_portal/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
