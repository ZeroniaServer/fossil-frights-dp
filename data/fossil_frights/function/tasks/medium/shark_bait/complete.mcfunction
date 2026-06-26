execute unless score $shark_bait_sel ff_task_state matches 1 run return 0
execute unless score $shark_bait_done ff_task_state matches 0 run return 0
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "shark_bait"
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 positioned -24.5 82.5 74.5 run playsound minecraft:entity.generic.eat block @a[tag=ff_active,distance=..24] ~ ~ ~ 1.4 0.65
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 positioned -24.5 82.5 74.5 run playsound minecraft:entity.generic.eat block @a[tag=ff_active,distance=..24] ~ ~ ~ 1.4 0.95
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 positioned -24.5 82.5 74.5 run playsound minecraft:entity.player.burp block @a[tag=ff_active,distance=..24] ~ ~ ~ 0.7 0.75
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 positioned -24.5 82.5 74.5 run particle minecraft:block{block_state:{Name:"minecraft:raw_gold_block"}} ~ ~0.25 ~ 0.35 0.25 0.35 0.08 34 force
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $shark_bait_sel ff_task_state matches 1 if score $shark_bait_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"shark_bait"}] 1
execute if score $shark_bait_sel ff_task_state matches 1 run scoreboard players set $shark_bait_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/shark_bait/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
