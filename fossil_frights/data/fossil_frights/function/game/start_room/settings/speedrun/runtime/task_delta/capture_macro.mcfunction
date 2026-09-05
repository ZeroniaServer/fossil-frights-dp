scoreboard players set $capture_available ff_speedrun_live 0
$execute unless score @s ff_speedrun_task$(task) matches 1.. if score $tasks_pending ff_speedrun_live matches 1 if score $task_completed_total ff_task_state = $task_selected_total ff_task_state if score @s ff_day$(day)_best matches 1.. run scoreboard players operation @s ff_speedrun_task$(task) = @s ff_day$(day)_best
$execute if score @s ff_speedrun_task$(task) matches 1.. run scoreboard players operation $capture_baseline ff_speedrun_live = @s ff_speedrun_task$(task)
$execute if score @s ff_speedrun_task$(task) matches 1.. run scoreboard players set $capture_available ff_speedrun_live 1
$execute unless score $capture_available ff_speedrun_live matches 1 run scoreboard players operation @s ff_speedrun_task$(task) = $timer_ticks ff_day
execute unless score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_available ff_speedrun_live 0
execute unless score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_hold ff_speedrun_live 0
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players operation $result_delta ff_speedrun_live = $timer_ticks ff_day
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players operation $result_delta ff_speedrun_live -= $capture_baseline ff_speedrun_live
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_available ff_speedrun_live 1
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_hold ff_speedrun_live 20
$execute if score $capture_available ff_speedrun_live matches 1 if score $timer_ticks ff_day < @s ff_speedrun_task$(task) run scoreboard players operation @s ff_speedrun_task$(task) = $timer_ticks ff_day
