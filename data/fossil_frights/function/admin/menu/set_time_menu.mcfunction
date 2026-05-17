execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
execute if score $timer_frozen ff_day matches 1 run function fossil_frights:admin/menu/set_time_menu_paused
execute unless score $timer_frozen ff_day matches 1 run function fossil_frights:admin/menu/set_time_menu_running
