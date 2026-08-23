execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 1 run return 0
particle minecraft:block{block_state:{Name:"minecraft:sand"}} 35.0 76.8 74.5 1.1 0.25 0.8 0.08 60 force
playsound minecraft:block.sand.place master @a[tag=ff_frights_feedback_viewer,distance=..14] 35 76.8 74.5 0.75 1.25
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"dig_sand"}] 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
