execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 0 run return 0
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "dig_sand"
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 at @s run playsound minecraft:block.sand.break master @s ~ ~ ~ 0.9 1.0
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 at @s run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~0.15 ~ 0.45 0.12 0.45 0.08 28 force
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 run kill @e[tag=ff_dig_sand]
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $dig_sand_sel ff_task_state matches 1 if score $dig_sand_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"dig_sand"}] 1
execute if score $dig_sand_sel ff_task_state matches 1 run scoreboard players set $dig_sand_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
execute if score $dig_sand_sel ff_task_state matches 1 run schedule function fossil_frights:tasks/easy/dig_sand/anim_1 3t replace
function fossil_frights:tasks/check_day_complete
