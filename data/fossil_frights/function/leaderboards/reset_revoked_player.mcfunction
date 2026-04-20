scoreboard players set @s ff_top_time 0
scoreboard players set @s ff_top_day 0
scoreboard players set @s ff_run_count 0
scoreboard players operation @s ff_lb_generation = $current ff_lb_generation
execute if score @s ff_active_uuid_0 = $lb_pending ff_active_uuid_0 if score @s ff_active_uuid_1 = $lb_pending ff_active_uuid_1 if score @s ff_active_uuid_2 = $lb_pending ff_active_uuid_2 if score @s ff_active_uuid_3 = $lb_pending ff_active_uuid_3 run function fossil_frights:leaderboards/clear_pending_disconnect
$data remove storage fossil_frights:leaderboards entries[{name:"$(name)"}]
$data remove storage fossil_frights:leaderboards revoked[{name:"$(name)"}]
