execute unless predicate fossil_frights:game_state/game_running run return run function fossil_frights:game/bossbar/speedrun/delta/clear_name
execute unless score $settings_speedrun_show ff_game_state matches 1 run return run function fossil_frights:game/bossbar/speedrun/delta/clear_name
execute unless score $timer_started ff_day matches 1 run return run function fossil_frights:game/bossbar/speedrun/delta/clear_name
execute if score $run_multiplayer ff_game_state matches 1 run return run function fossil_frights:game/bossbar/speedrun/delta/clear_name
execute if score $run_admin_modified ff_game_state matches 1 run return run function fossil_frights:game/bossbar/speedrun/delta/clear_name
function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/compute_display
execute unless score $display_available ff_speedrun_live matches 1 run return run function fossil_frights:game/bossbar/speedrun/delta/clear_name
function fossil_frights:game/start_room/settings/speedrun/runtime/task_delta/format
execute if score $display_delta ff_speedrun_live matches ..-1 run return run function fossil_frights:game/bossbar/speedrun/delta/set_name_ahead
execute if score $display_delta ff_speedrun_live matches 0 run return run function fossil_frights:game/bossbar/speedrun/delta/set_name_tie
function fossil_frights:game/bossbar/speedrun/delta/set_name_behind
