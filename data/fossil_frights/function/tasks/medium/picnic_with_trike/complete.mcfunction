execute unless score $picnic_with_trike_sel ff_task_state matches 1 run return 0
execute unless score $picnic_with_trike_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "Picnic with Trike"
playsound minecraft:entity.generic.eat player @a[tag=ff_active,distance=..18] ~ ~ ~ 0.8 1.0
schedule function fossil_frights:tasks/medium/picnic_with_trike/eat_2 3t
schedule function fossil_frights:tasks/medium/picnic_with_trike/eat_3 6t
schedule function fossil_frights:tasks/medium/picnic_with_trike/eat_4 9t
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"picnic_with_trike"}] 1
scoreboard players set $picnic_with_trike_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
