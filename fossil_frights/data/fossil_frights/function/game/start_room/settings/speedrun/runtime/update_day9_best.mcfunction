execute unless score @s ff_day9_best matches 1.. run scoreboard players operation @s ff_day9_best = $timer_ticks ff_day
execute if score @s ff_day9_best > $timer_ticks ff_day run scoreboard players operation @s ff_speedrun_delta = @s ff_day9_best
execute if score @s ff_day9_best > $timer_ticks ff_day run scoreboard players operation @s ff_speedrun_delta -= $timer_ticks ff_day
execute if score @s ff_day9_best > $timer_ticks ff_day run scoreboard players operation @s ff_day9_best = $timer_ticks ff_day
execute if score @s ff_day9_best < $timer_ticks ff_day run scoreboard players operation @s ff_speedrun_delta = $timer_ticks ff_day
execute if score @s ff_day9_best < $timer_ticks ff_day run scoreboard players operation @s ff_speedrun_delta -= @s ff_day9_best
execute if score @s ff_day9_best < $timer_ticks ff_day run scoreboard players set @s ff_speedrun_sign 1

