execute unless score @s ff_temple_run_best matches 1.. run scoreboard players operation @s ff_temple_run_best = @s ff_temple_run_time
execute if score @s ff_temple_run_best matches 1.. if score @s ff_temple_run_time < @s ff_temple_run_best run scoreboard players operation @s ff_temple_run_best = @s ff_temple_run_time

