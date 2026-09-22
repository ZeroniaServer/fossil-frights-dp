execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless score @s ff_top_day matches -2147483648..2147483647 run scoreboard players set @s ff_top_day 0
scoreboard players set $run_breakdown_new_best ff_run_breakdown 0
execute if score @s ff_top_day < $day_current ff_day run scoreboard players set $run_breakdown_new_best ff_run_breakdown 1
execute if score $run_breakdown_new_best ff_run_breakdown matches 1 run scoreboard players operation @s ff_top_day = $day_current ff_day
execute unless predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/sync_entry
execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/plugin/sync_current
scoreboard players set $run_breakdown_new_best ff_run_breakdown 0
