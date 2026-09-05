scoreboard players set $target_available ff_speedrun_live 0
execute if score $target_type ff_speedrun_live matches 0 if score $target_index ff_speedrun_live matches 1..30 as @a[team=ff_guard,limit=1] run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/load_target_macro with storage fossil_frights:speedrun runtime
execute if score $target_type ff_speedrun_live matches 1 if score $target_index ff_speedrun_live matches 1..9 as @a[team=ff_guard,limit=1] run function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/load_button_target_macro with storage fossil_frights:speedrun runtime
execute if score $target_available ff_speedrun_live matches 1 run scoreboard players operation $display_delta ff_speedrun_live = $timer_ticks ff_day
execute if score $target_available ff_speedrun_live matches 1 run scoreboard players operation $display_delta ff_speedrun_live -= $target_ticks ff_speedrun_live
execute if score $target_available ff_speedrun_live matches 1 run scoreboard players set $display_available ff_speedrun_live 1
