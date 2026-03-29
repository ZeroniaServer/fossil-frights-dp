execute if score $timer_started ff_day matches 0 run scoreboard players set $timer_started ff_day 1
scoreboard players set $timer_frozen ff_day 0
function fossil_frights:game/timer/update_display
