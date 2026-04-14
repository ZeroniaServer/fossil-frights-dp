scoreboard players reset * ff_top_time
scoreboard players reset * ff_top_day
scoreboard players reset * ff_run_count
scoreboard players set @a ff_top_time 0
scoreboard players set @a ff_top_day 0
scoreboard players set @a ff_run_count 0
kill @e[type=mannequin,tag=ff_lb_entry]
function fossil_frights:leaderboards/display/refresh
tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights leaderboard reset.","color":"green"}]
