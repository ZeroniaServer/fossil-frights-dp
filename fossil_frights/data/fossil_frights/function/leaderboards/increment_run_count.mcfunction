execute if score $run_admin_modified ff_game_state matches 1 run return 0
scoreboard players add @s ff_run_count 1
execute unless predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/sync_entry
execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:leaderboards/plugin/sync_current
