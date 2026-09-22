execute if score $lb_pending_day ff_day matches 1.. if score @s ff_top_day < $lb_pending_day ff_day run scoreboard players operation @s ff_top_day = $lb_pending_day ff_day
scoreboard players set $lb_pending_day ff_day 0
scoreboard players set $lb_pending ff_active_uuid_0 0
scoreboard players set $lb_pending ff_active_uuid_1 0
scoreboard players set $lb_pending ff_active_uuid_2 0
scoreboard players set $lb_pending ff_active_uuid_3 0
execute unless predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/sync_entry
execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/plugin/sync_current
function fossil_frights:leaderboards/display/refresh
