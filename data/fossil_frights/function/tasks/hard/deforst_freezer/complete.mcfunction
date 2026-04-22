execute unless score $deforst_freezer_sel ff_task_state matches 1 run return 0
execute unless score $deforst_freezer_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "Deforst Freezer"
execute positioned -13.5 73.5 41.5 run playsound minecraft:block.glass.break block @a[tag=ff_active,distance=..20] ~ ~ ~ 0.45 1.8
execute positioned -13.5 73.5 41.5 run playsound minecraft:entity.player.hurt_freeze block @a[tag=ff_active,distance=..20] ~ ~ ~ 0.75 1.2
execute positioned -13.5 73.5 41.5 run particle minecraft:snowflake ~ ~ ~ 0.3 0.35 0.3 0.02 22 force
execute positioned -13.5 73.5 41.5 run particle minecraft:item_snowball ~ ~ ~ 0.18 0.22 0.18 0.02 10 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"deforst_freezer"}] 1
scoreboard players set $deforst_freezer_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
