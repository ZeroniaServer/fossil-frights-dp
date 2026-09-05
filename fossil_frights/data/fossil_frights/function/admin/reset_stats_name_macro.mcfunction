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
$scoreboard players set $(name) ff_speedrun_task1 0
$scoreboard players set $(name) ff_speedrun_task2 0
$scoreboard players set $(name) ff_speedrun_task3 0
$scoreboard players set $(name) ff_speedrun_task4 0
$scoreboard players set $(name) ff_speedrun_task5 0
$scoreboard players set $(name) ff_speedrun_task6 0
$scoreboard players set $(name) ff_speedrun_task7 0
$scoreboard players set $(name) ff_speedrun_task8 0
$scoreboard players set $(name) ff_speedrun_task9 0
$scoreboard players set $(name) ff_speedrun_task10 0
$scoreboard players set $(name) ff_speedrun_task11 0
$scoreboard players set $(name) ff_speedrun_task12 0
$scoreboard players set $(name) ff_speedrun_task13 0
$scoreboard players set $(name) ff_speedrun_task14 0
$scoreboard players set $(name) ff_speedrun_task15 0
$scoreboard players set $(name) ff_speedrun_task16 0
$scoreboard players set $(name) ff_speedrun_task17 0
$scoreboard players set $(name) ff_speedrun_task18 0
$scoreboard players set $(name) ff_speedrun_task19 0
$scoreboard players set $(name) ff_speedrun_task20 0
$scoreboard players set $(name) ff_speedrun_task21 0
$scoreboard players set $(name) ff_speedrun_task22 0
$scoreboard players set $(name) ff_speedrun_task23 0
$scoreboard players set $(name) ff_speedrun_task24 0
$scoreboard players set $(name) ff_speedrun_task25 0
$scoreboard players set $(name) ff_speedrun_task26 0
$scoreboard players set $(name) ff_speedrun_task27 0
$scoreboard players set $(name) ff_speedrun_task28 0
$scoreboard players set $(name) ff_speedrun_task29 0
$scoreboard players set $(name) ff_speedrun_task30 0
$scoreboard players set $(name) ff_speedrun_button1 0
$scoreboard players set $(name) ff_speedrun_button2 0
$scoreboard players set $(name) ff_speedrun_button3 0
$scoreboard players set $(name) ff_speedrun_button4 0
$scoreboard players set $(name) ff_speedrun_button5 0
$scoreboard players set $(name) ff_speedrun_button6 0
$scoreboard players set $(name) ff_speedrun_button7 0
$scoreboard players set $(name) ff_speedrun_button8 0
$scoreboard players set $(name) ff_speedrun_button9 0
$scoreboard players set $(name) ff_parkour_best 0
$scoreboard players set $(name) ff_temple_run_best 0
$scoreboard players set $(name) ff_ant_score 0
$scoreboard players reset $(name) ff_ant_combo
$scoreboard players reset $(name) ff_ant_combo_shown_until_timestamp
$scoreboard players set $(name) ff_ant_top_score 0
$data remove storage fossil_frights:leaderboards entries[{name:"$(name)"}]
$data remove storage fossil_frights:leaderboards revoked[{name:"$(name)"}]
$data modify storage fossil_frights:leaderboards revoked append value {name:"$(name)"}
function fossil_frights:leaderboards/display/refresh
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights stats reset for $(name).","color":"green"}]
