execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless score @s ff_duo_best matches 1.. run scoreboard players operation @s ff_duo_best = $timer_ticks ff_day
execute if score @s ff_duo_best matches 1.. if score @s ff_duo_best > $timer_ticks ff_day run scoreboard players operation @s ff_duo_best = $timer_ticks ff_day
execute if score $present ff_plugin matches 1 run function fossil_frights:leaderboards/plugin/sync_current
