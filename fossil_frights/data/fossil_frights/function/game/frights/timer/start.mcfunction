execute if score $timer_started ff_day matches 0 run scoreboard players set $speedrun_stopwatch_active ff_day 0
execute if score $timer_started ff_day matches 0 run stopwatch remove fossil_frights:speedrun
execute if score $timer_started ff_day matches 0 store success score $speedrun_stopwatch_active ff_day run stopwatch create fossil_frights:speedrun
execute if score $timer_started ff_day matches 0 run scoreboard players set $timer_pause_offset ff_day 0
execute if score $timer_started ff_day matches 0 if score $speedrun_stopwatch_active ff_day matches 1 run scoreboard players set $timer_started ff_day 1
execute if score $timer_frozen ff_day matches 1 if score $speedrun_stopwatch_active ff_day matches 1 store success score $speedrun_stopwatch_active ff_day store result score $timer_pause_now ff_day run stopwatch query fossil_frights:speedrun 20
execute if score $timer_frozen ff_day matches 1 if score $speedrun_stopwatch_active ff_day matches 1 run scoreboard players operation $timer_pause_offset ff_day = $timer_pause_now ff_day
execute if score $timer_frozen ff_day matches 1 if score $speedrun_stopwatch_active ff_day matches 1 run scoreboard players operation $timer_pause_offset ff_day -= $timer_ticks ff_day
execute if score $timer_frozen ff_day matches 1 if score $day_active ff_day matches 1 if score $day_stopwatch_active ff_day matches 1 store success score $day_stopwatch_active ff_day store result score $day_timer_pause_now ff_day run stopwatch query fossil_frights:day_duration 20
execute if score $timer_frozen ff_day matches 1 if score $day_active ff_day matches 1 if score $day_stopwatch_active ff_day matches 1 run scoreboard players operation $day_timer_offset ff_day = $day_timer_pause_now ff_day
execute if score $timer_frozen ff_day matches 1 if score $day_active ff_day matches 1 if score $day_stopwatch_active ff_day matches 1 run scoreboard players operation $day_timer_offset ff_day -= $day_timer ff_day
scoreboard players set $timer_frozen ff_day 0
function fossil_frights:game/frights/timer/update_display
