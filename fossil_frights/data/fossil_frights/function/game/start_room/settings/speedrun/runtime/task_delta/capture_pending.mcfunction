execute if score $tasks_completed ff_speedrun_live matches 30.. run return 0
scoreboard players add $tasks_completed ff_speedrun_live 1
execute store result storage fossil_frights:speedrun runtime.task int 1 run scoreboard players get $tasks_completed ff_speedrun_live
execute store result storage fossil_frights:speedrun runtime.day int 1 run scoreboard players get $day_current ff_day
execute as @a[team=ff_guard,limit=1] run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/capture_macro with storage fossil_frights:speedrun runtime
scoreboard players add $tasks_seen_day ff_speedrun_live 1
scoreboard players remove $tasks_pending ff_speedrun_live 1
function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/set_next_target
execute if score $tasks_pending ff_speedrun_live matches 1.. run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/capture_pending
