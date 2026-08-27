
execute unless score $day_stopwatch_active ff_day matches 1 run return 0
execute store success score $day_stopwatch_active ff_day store result score $day_timer_query_now ff_day run stopwatch query fossil_frights:day_duration 20
execute unless score $day_stopwatch_active ff_day matches 1 run return 0
scoreboard players operation $day_timer ff_day = $day_timer_query_now ff_day
scoreboard players operation $day_timer ff_day -= $day_timer_offset ff_day
