execute if predicate fossil_frights:world/packs_enabled/plugin run tellraw @s [{"text":"Fossil Frights plugin is managing leaderboard data. Use /admin leaderboard reset instead.","color":"red"}]
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
scoreboard players add $current ff_lb_generation 1
data modify storage fossil_frights:leaderboards entries set value []
data modify storage fossil_frights:leaderboards revoked set value []
function fossil_frights:leaderboards/clear_pending_disconnect
scoreboard players reset * ff_top_time
scoreboard players reset * ff_top_day
scoreboard players reset * ff_run_count
scoreboard players set @a ff_top_time 0
scoreboard players set @a ff_top_day 0
scoreboard players set @a ff_run_count 0
scoreboard players operation @a ff_lb_generation = $current ff_lb_generation
function fossil_frights:leaderboards/display/refresh
tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights leaderboard reset.","color":"green"}]
