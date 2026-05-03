execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless score @s ff_top_time matches 1.. run scoreboard players operation @s ff_top_time = $timer_ticks ff_day
execute if score @s ff_top_time matches 1.. if score @s ff_top_time > $timer_ticks ff_day run scoreboard players operation @s ff_top_time = $timer_ticks ff_day
function fossil_frights:leaderboards/sync_entry
execute if score $present ff_plugin matches 1 run function fossil_frights:leaderboards/plugin/sync_current
