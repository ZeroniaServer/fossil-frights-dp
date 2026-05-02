execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
scoreboard players add @s ff_run_count 1
function fossil_frights:leaderboards/sync_entry
