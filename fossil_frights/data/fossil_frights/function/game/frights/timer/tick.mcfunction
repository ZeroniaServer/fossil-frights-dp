execute if predicate fossil_frights:game_state/game_running if score $timer_started ff_day matches 1 if score $timer_frozen ff_day matches 0 run scoreboard players add $timer_ticks ff_day 1
execute if score $timer_started ff_day matches 1 run function fossil_frights:game/frights/timer/update_display
