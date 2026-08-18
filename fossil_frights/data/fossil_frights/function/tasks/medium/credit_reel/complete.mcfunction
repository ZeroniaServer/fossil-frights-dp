execute unless score $credit_reel_sel ff_task_state matches 1 run return 0
execute unless score $credit_reel_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"credit_reel"}] unless items entity @s weapon.offhand *[custom_data~{itemID:"credit_reel"}] run return 0
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "credit_reel"
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 positioned 25.5 77 75 run playsound fossil-frights:task.credit_reel master @a[team=ff_guard,distance=..14] ~ ~ ~ 0.9 1.0
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 positioned 25.5 77 75 run playsound minecraft:block.note_block.chime master @a[team=ff_guard,distance=..14] ~ ~ ~ 0.8 1.2
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run function fossil_frights:tasks/medium/credit_reel/reel_sound_1
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 positioned 25.5 77 75 run particle minecraft:end_rod ~ ~ ~ 0.45 0.6 0.45 0.03 28 force
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run function fossil_frights:tasks/medium/credit_reel/cleanup
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run clear @s *[minecraft:custom_data~{itemID:"credit_reel"}] 1
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run function fossil_frights:animations/credits/start
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $credit_reel_sel ff_task_state matches 1 if score $credit_reel_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"credit_reel"}] 1
execute if score $credit_reel_sel ff_task_state matches 1 run scoreboard players set $credit_reel_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
