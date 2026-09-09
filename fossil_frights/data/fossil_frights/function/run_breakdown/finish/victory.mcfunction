execute unless data storage fossil_frights:run_breakdown current{active:1b,finalized:0b} run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
function fossil_frights:run_breakdown/finish/close_active_hazards
data modify storage fossil_frights:run_breakdown finish.hash set from storage fossil_frights:run_breakdown current.hash
execute store result storage fossil_frights:run_breakdown finish.day int 1 run scoreboard players get $day_current ff_day
execute store result storage fossil_frights:run_breakdown finish.ticks int 1 run scoreboard players get $timer_ticks ff_day
data modify storage fossil_frights:run_breakdown finish.result set value "V"
function fossil_frights:run_breakdown/finish/append_result_macro with storage fossil_frights:run_breakdown finish
data modify storage fossil_frights:run_breakdown current.finalized set value 1b

