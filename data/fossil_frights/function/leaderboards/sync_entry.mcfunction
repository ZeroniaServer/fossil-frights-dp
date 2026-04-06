tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target] remove ff_lb_sync_target
data remove storage fossil_frights:leaderboards sync_entry
execute store result storage fossil_frights:leaderboards sync_entry.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:leaderboards sync_entry.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:leaderboards sync_entry.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:leaderboards sync_entry.u3 int 1 run scoreboard players get @s ff_active_uuid_3
data modify storage fossil_frights:leaderboards sync_entry.name set from entity @s bukkit.lastKnownName
function fossil_frights:leaderboards/select_sync_entry with storage fossil_frights:leaderboards sync_entry
execute unless entity @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target,limit=1] run function fossil_frights:leaderboards/create_entry
data modify entity @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target,limit=1] profile.name set from storage fossil_frights:leaderboards sync_entry.name
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target,limit=1] ff_top_time = @s ff_top_time
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target,limit=1] ff_top_day = @s ff_top_day
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target,limit=1] ff_run_count = @s ff_run_count
tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_sync_target,limit=1] remove ff_lb_sync_target
