$scoreboard players set $(name) ff_top_time 0
$scoreboard players set $(name) ff_top_day 0
$scoreboard players set $(name) ff_run_count 0
$kill @e[type=mannequin,tag=ff_lb_entry,nbt={profile:{name:"$(name)"}}]
function fossil_frights:leaderboards/display/refresh
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights leaderboard entry reset for $(name).","color":"green"}]

