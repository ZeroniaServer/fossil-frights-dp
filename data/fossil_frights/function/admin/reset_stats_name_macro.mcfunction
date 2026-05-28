execute if score $present ff_plugin matches 1 run tellraw @s [{"text":"Fossil Frights plugin is managing stats. Use /admin leaderboard remove <player> or edit leaderboard.yml, then /admin leaderboard reload.","color":"red"}]
execute if score $present ff_plugin matches 1 run return 0
$scoreboard players set $(name) ff_top_time 0
$scoreboard players set $(name) ff_top_day 0
$scoreboard players set $(name) ff_run_count 0
$scoreboard players set $(name) ff_duo_best 0
$scoreboard players set $(name) ff_day1_best 0
$scoreboard players set $(name) ff_day2_best 0
$scoreboard players set $(name) ff_day3_best 0
$scoreboard players set $(name) ff_day4_best 0
$scoreboard players set $(name) ff_day5_best 0
$scoreboard players set $(name) ff_day6_best 0
$scoreboard players set $(name) ff_day7_best 0
$scoreboard players set $(name) ff_day8_best 0
$scoreboard players set $(name) ff_day9_best 0
$scoreboard players set $(name) ff_day10_best 0
$scoreboard players set $(name) ff_parkour_best 0
$scoreboard players set $(name) ff_temple_run_best 0
$scoreboard players set $(name) ff_ant_score 0
$scoreboard players set $(name) ff_ant_top_score 0
$data remove storage fossil_frights:leaderboards entries[{name:"$(name)"}]
$data remove storage fossil_frights:leaderboards revoked[{name:"$(name)"}]
$data modify storage fossil_frights:leaderboards revoked append value {name:"$(name)"}
function fossil_frights:leaderboards/display/refresh
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights stats reset for $(name).","color":"green"}]
