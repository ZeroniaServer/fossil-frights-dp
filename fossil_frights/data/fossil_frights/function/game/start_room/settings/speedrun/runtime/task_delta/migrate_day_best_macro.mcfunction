$execute unless score @s ff_speedrun_task$(task) matches 1.. if score @s ff_day$(day)_best matches 1.. run scoreboard players operation @s ff_speedrun_task$(task) = @s ff_day$(day)_best
