execute if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:admin/menu/plugin/heists/timer/show
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
execute if score $timer_frozen ff_day matches 1 run function fossil_frights:admin/menu/plugin/timer/show_paused
execute unless score $timer_frozen ff_day matches 1 run function fossil_frights:admin/menu/plugin/timer/show_running
