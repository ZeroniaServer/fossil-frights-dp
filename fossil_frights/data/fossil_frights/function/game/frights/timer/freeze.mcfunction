execute if score $timer_frozen ff_day matches 0 if score $timer_started ff_day matches 1 run function fossil_frights:game/frights/timer/sync_speedrun
execute if score $timer_frozen ff_day matches 0 if score $day_active ff_day matches 1 run function fossil_frights:game/frights/timer/sync_day
scoreboard players set $timer_frozen ff_day 1
function fossil_frights:game/frights/timer/update_display
