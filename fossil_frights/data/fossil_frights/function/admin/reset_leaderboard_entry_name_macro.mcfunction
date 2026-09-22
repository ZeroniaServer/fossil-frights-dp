execute if predicate fossil_frights:world/packs_enabled/plugin run tellraw @s [{"text":"Fossil Frights plugin is managing leaderboard data. Use /admin leaderboard remove <player> instead.","color":"red"}]
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
$scoreboard players set $(name) ff_top_time 0
$scoreboard players set $(name) ff_top_day 0
$scoreboard players set $(name) ff_run_count 0
$data remove storage fossil_frights:leaderboards entries[{name:"$(name)"}]
$data remove storage fossil_frights:leaderboards revoked[{name:"$(name)"}]
$data modify storage fossil_frights:leaderboards revoked append value {name:"$(name)"}
function fossil_frights:leaderboards/display/refresh
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights leaderboard entry reset for $(name).","color":"green"}]
