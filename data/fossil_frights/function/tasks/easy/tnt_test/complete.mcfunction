execute unless score $tnt_test_sel ff_task_state matches 1 run return 0
execute unless score $tnt_test_done ff_task_state matches 0 run return 0
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "TNT Test"
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 positioned 44 64 82 run playsound minecraft:entity.tnt.primed master @a[tag=ff_active,distance=..24] ~ ~ ~ 1.0 1.0
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run summon minecraft:tnt 44.5 64.25 82.5 {Fuse:15,fuse:15,ExplosionPower:0.0f,explosion_power:0.0f,NoGravity:1b,Tags:["ff_tnt_test"]}
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $tnt_test_sel ff_task_state matches 1 if score $tnt_test_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"tnt_test"}] 1
execute if score $tnt_test_sel ff_task_state matches 1 run scoreboard players set $tnt_test_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
