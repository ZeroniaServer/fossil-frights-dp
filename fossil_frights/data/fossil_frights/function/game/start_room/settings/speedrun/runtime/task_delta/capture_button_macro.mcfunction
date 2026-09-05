scoreboard players set $capture_available ff_speedrun_live 0
$execute if score @s ff_speedrun_button$(button) matches 1.. run scoreboard players operation $capture_baseline ff_speedrun_live = @s ff_speedrun_button$(button)
$execute if score @s ff_speedrun_button$(button) matches 1.. run scoreboard players set $capture_available ff_speedrun_live 1
$execute unless score $capture_available ff_speedrun_live matches 1 run scoreboard players operation @s ff_speedrun_button$(button) = $timer_ticks ff_day
execute unless score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_available ff_speedrun_live 0
execute unless score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_hold ff_speedrun_live 0
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players operation $result_delta ff_speedrun_live = $timer_ticks ff_day
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players operation $result_delta ff_speedrun_live -= $capture_baseline ff_speedrun_live
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_available ff_speedrun_live 1
execute if score $capture_available ff_speedrun_live matches 1 run scoreboard players set $result_hold ff_speedrun_live 20
$execute if score $capture_available ff_speedrun_live matches 1 if score $timer_ticks ff_day < @s ff_speedrun_button$(button) run scoreboard players operation @s ff_speedrun_button$(button) = $timer_ticks ff_day
