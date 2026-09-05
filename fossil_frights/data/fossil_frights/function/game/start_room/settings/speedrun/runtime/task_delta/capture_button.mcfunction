execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_current ff_day matches 1..9 run return 0
execute unless score $timer_started ff_day matches 1 run return 0
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute if score $timer_frozen ff_day matches 0 run function fossil_frights:game/frights/timer/sync_speedrun
execute unless score $speedrun_stopwatch_active ff_day matches 1 run return 0
execute store result storage fossil_frights:speedrun runtime.button int 1 run scoreboard players get $day_current ff_day
execute as @a[team=ff_guard,limit=1] run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/capture_button_macro with storage fossil_frights:speedrun runtime
scoreboard players set $target_type ff_speedrun_live 0
scoreboard players operation $target_index ff_speedrun_live = $tasks_completed ff_speedrun_live
scoreboard players add $target_index ff_speedrun_live 1
execute store result storage fossil_frights:speedrun runtime.target int 1 run scoreboard players get $target_index ff_speedrun_live
execute store result storage fossil_frights:speedrun runtime.type int 1 run scoreboard players get $target_type ff_speedrun_live
