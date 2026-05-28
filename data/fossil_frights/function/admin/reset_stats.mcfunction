execute if score $present ff_plugin matches 1 run tellraw @s [{"text":"Fossil Frights plugin is managing stats. Use /admin leaderboard remove <player> or edit leaderboard.yml, then /admin leaderboard reload.","color":"red"}]
execute if score $present ff_plugin matches 1 run return 0
scoreboard players set @s ff_top_time 0
scoreboard players set @s ff_top_day 0
scoreboard players set @s ff_run_count 0
scoreboard players set @s ff_duo_best 0
scoreboard players set @s ff_day1_best 0
scoreboard players set @s ff_day2_best 0
scoreboard players set @s ff_day3_best 0
scoreboard players set @s ff_day4_best 0
scoreboard players set @s ff_day5_best 0
scoreboard players set @s ff_day6_best 0
scoreboard players set @s ff_day7_best 0
scoreboard players set @s ff_day8_best 0
scoreboard players set @s ff_day9_best 0
scoreboard players set @s ff_day10_best 0
scoreboard players set @s ff_parkour_best 0
scoreboard players set @s ff_temple_run_best 0
scoreboard players set @s ff_ant_score 0
scoreboard players set @s ff_ant_top_score 0
function fossil_frights:leaderboards/sync_entry
function fossil_frights:leaderboards/display/refresh
tellraw @s [{"text":"Fossil Frights stats reset.","color":"green"}]
