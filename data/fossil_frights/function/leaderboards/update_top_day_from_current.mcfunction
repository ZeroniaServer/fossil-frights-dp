execute unless score @s ff_top_day matches -2147483648..2147483647 run scoreboard players set @s ff_top_day 0
execute if score @s ff_top_day < $day_current ff_day run scoreboard players operation @s ff_top_day = $day_current ff_day
function fossil_frights:leaderboards/sync_entry
