execute if score $game_running ff_game_state matches 1 if score $timer_started ff_day matches 1 if score $timer_frozen ff_day matches 0 run scoreboard players add $timer_ticks ff_day 1
execute if score $timer_started ff_day matches 1 run function fossil_frights:game/timer/update_display
