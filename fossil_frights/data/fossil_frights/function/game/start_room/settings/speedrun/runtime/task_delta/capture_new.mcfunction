execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $timer_started ff_day matches 1 run return 0
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute if score $timer_frozen ff_day matches 0 run function fossil_frights:game/frights/timer/sync_speedrun
execute unless score $speedrun_stopwatch_active ff_day matches 1 run return 0
scoreboard players operation $tasks_pending ff_speedrun_live = $task_completed_total ff_task_state
scoreboard players operation $tasks_pending ff_speedrun_live -= $tasks_seen_day ff_speedrun_live
execute if score $tasks_pending ff_speedrun_live matches 1.. run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/capture_pending
