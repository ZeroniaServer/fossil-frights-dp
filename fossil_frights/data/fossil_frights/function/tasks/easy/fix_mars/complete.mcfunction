execute unless score $fix_mars_sel ff_task_state matches 1 run return 0
execute unless score $fix_mars_done ff_task_state matches 0 run return 0
execute if score $fix_mars_sel ff_task_state matches 1 if score $fix_mars_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "fix_mars"
execute if score $fix_mars_sel ff_task_state matches 1 if score $fix_mars_done ff_task_state matches 0 positioned -22.5 103.0 70.5 run playsound minecraft:block.sand.place master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
execute if score $fix_mars_sel ff_task_state matches 1 if score $fix_mars_done ff_task_state matches 0 run function fossil_frights:tasks/easy/fix_mars/cleanup
execute if score $fix_mars_sel ff_task_state matches 1 if score $fix_mars_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $fix_mars_sel ff_task_state matches 1 if score $fix_mars_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $fix_mars_sel ff_task_state matches 1 if score $fix_mars_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"fix_mars"}] 1
execute if score $fix_mars_sel ff_task_state matches 1 run scoreboard players set $fix_mars_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
schedule function fossil_frights:tasks/easy/fix_mars/anim_1 2t replace
