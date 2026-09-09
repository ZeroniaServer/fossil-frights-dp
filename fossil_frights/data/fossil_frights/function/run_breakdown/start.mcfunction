data remove storage fossil_frights:run_breakdown current
scoreboard players set $run_breakdown_events ff_run_breakdown 0
execute unless score $settings_speedrun_show ff_game_state matches 1 run return 0
execute unless score $run_multiplayer ff_game_state matches 0 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run return 0
data modify storage fossil_frights:run_breakdown current set value {active:1b,finalized:0b,hash:""}
execute as @a[team=ff_guard,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:run_breakdown current.username"}
function fossil_frights:run_breakdown/start_macro with storage fossil_frights:run_breakdown current

