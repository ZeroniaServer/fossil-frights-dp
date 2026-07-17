# Idle: quick start. Otherwise normal join.
execute if score $game_running ff_game_state matches 0 if score $heist_mode_active ff_game_state matches 0 run return run function fossil_frights:command/join_quick_start_thief
function fossil_frights:command/join_thief
