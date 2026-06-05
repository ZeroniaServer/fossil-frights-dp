execute unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:admin/menu/heists/show
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute if score $timer_frozen ff_day matches 1 run function fossil_frights:admin/menu/heists/set_time_menu_paused
execute if score $timer_frozen ff_day matches 1 run return 0
function fossil_frights:admin/menu/heists/set_time_menu_running
