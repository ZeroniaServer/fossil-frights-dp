execute unless score @s ff_top_time matches 1.. run scoreboard players operation @s ff_top_time = $timer_ticks ff_day
execute if score @s ff_top_time matches 1.. if score @s ff_top_time > $timer_ticks ff_day run scoreboard players operation @s ff_top_time = $timer_ticks ff_day
function fossil_frights:leaderboards/sync_entry
