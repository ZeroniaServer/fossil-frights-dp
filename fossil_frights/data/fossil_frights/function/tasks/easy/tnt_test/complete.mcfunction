execute unless score $tnt_test_sel ff_task_state matches 1 run return 0
execute unless score $tnt_test_done ff_task_state matches 0 run return 0
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "tnt_test"
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 positioned 45 64 80 as @e[type=minecraft:item_display,tag=animation.detonator.root,distance=..4,sort=nearest,limit=1] at @s run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/animations/activate/play_exclusive
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run schedule function fossil_frights:tasks/easy/tnt_test/piston 5t
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run schedule function fossil_frights:tasks/easy/tnt_test/ignite 10t
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run schedule function fossil_frights:tasks/easy/tnt_test/explode 20t
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"tnt_test"}] 1
execute if score $tnt_test_sel ff_task_state matches 1 run scoreboard players set $tnt_test_done ff_task_state 1
function fossil_frights:tasks/easy/tnt_test/cleanup
function fossil_frights:tasks/tracker/refresh
schedule function fossil_frights:tasks/check_day_complete 25t
