execute unless score $free_caveman_sel ff_task_state matches 1 run return 0
execute unless score $free_caveman_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "free_caveman"
function fossil_frights:tasks/medium/free_caveman/cleanup
setblock 25 94 40 minecraft:frosted_ice[age=0] strict
setblock 25 95 40 minecraft:frosted_ice[age=0] strict
setblock 24 95 40 minecraft:frosted_ice[age=0] strict
setblock 26 94 40 minecraft:frosted_ice[age=0] strict
setblock 26 95 40 minecraft:frosted_ice[age=0] strict
setblock 26 96 40 minecraft:frosted_ice[age=0] strict
execute positioned 25.5 95.5 40.5 run particle minecraft:snowflake ~ ~ ~ 1.5 1.5 0.8 0.03 60 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"free_caveman"}}] 1
scoreboard players set $free_caveman_done ff_task_state 1
execute store result score $free_caveman_variant ff_task_state run random value 1..3
schedule function fossil_frights:tasks/medium/free_caveman/crack_1 3t replace
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
