scoreboard players set @s ff_top_time 0
scoreboard players set @s ff_top_day 0
scoreboard players set @s ff_run_count 0
scoreboard players operation @s ff_lb_generation = $current ff_lb_generation
data remove storage fossil_frights:leaderboards reset_entry
data modify storage fossil_frights:leaderboards reset_entry.name set from entity @s bukkit.lastKnownName
function fossil_frights:admin/remove_leaderboard_entry_name with storage fossil_frights:leaderboards reset_entry
function fossil_frights:leaderboards/display/refresh
tellraw @s [{"text":"Fossil Frights leaderboard entry reset.","color":"green"}]
