scoreboard players set $display_available ff_speedrun_live 0
execute if score $tasks_completed ff_speedrun_live matches 30 run return run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/hold_final
execute if score $result_hold ff_speedrun_live matches 1.. run return run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/hold_result
function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/load_target
