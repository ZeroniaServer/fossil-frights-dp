execute unless data storage fossil_frights:run_breakdown current{active:1b,finalized:0b} run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless score $timer_started ff_day matches 1 run return 0
execute if score $run_breakdown_events ff_run_breakdown matches 128.. run return 0
execute if score $timer_frozen ff_day matches 0 run function fossil_frights:game/frights/timer/sync_speedrun
data modify storage fossil_frights:run_breakdown append.hash set from storage fossil_frights:run_breakdown current.hash
$data modify storage fossil_frights:run_breakdown append.code set value "$(code)"
$data modify storage fossil_frights:run_breakdown append.id set value "$(id)"
execute store result storage fossil_frights:run_breakdown append.ticks int 1 run scoreboard players get $timer_ticks ff_day
function fossil_frights:run_breakdown/event/append_macro with storage fossil_frights:run_breakdown append
scoreboard players add $run_breakdown_events ff_run_breakdown 1
