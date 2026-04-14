scoreboard players set @s ff_top_time 0
scoreboard players set @s ff_top_day 0
scoreboard players set @s ff_run_count 0
function fossil_frights:leaderboards/sync_entry
function fossil_frights:leaderboards/display/refresh
tellraw @s [{"text":"Fossil Frights leaderboard entry reset.","color":"green"}]

