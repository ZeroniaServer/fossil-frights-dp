$scoreboard players set $(name) ff_top_time 0
$scoreboard players set $(name) ff_top_day 0
$scoreboard players set $(name) ff_run_count 0
$scoreboard players set $(name) ff_duo_best 0
$scoreboard players set $(name) ff_parkour_best 0
$scoreboard players set $(name) ff_temple_run_best 0
$scoreboard players set $(name) ff_ant_score 0
$scoreboard players set $(name) ff_ant_top_score 0
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights stats reset for $(name).","color":"green"}]

