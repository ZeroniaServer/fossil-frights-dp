$execute if score @s ff_speedrun_task$(target) matches 1.. run scoreboard players operation $target_ticks ff_speedrun_live = @s ff_speedrun_task$(target)
$execute if score @s ff_speedrun_task$(target) matches 1.. run scoreboard players set $target_available ff_speedrun_live 1
