execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 unless score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
function fossil_frights:hazard/start/curse
function fossil_frights:admin/menu/hazard/show
