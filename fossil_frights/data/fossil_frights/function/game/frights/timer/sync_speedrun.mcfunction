
execute unless score $speedrun_stopwatch_active ff_day matches 1 run return 0
execute store success score $speedrun_stopwatch_active ff_day store result score $timer_query_now ff_day run stopwatch query fossil_frights:speedrun 20
execute unless score $speedrun_stopwatch_active ff_day matches 1 run return 0
scoreboard players operation $timer_ticks ff_day = $timer_query_now ff_day
scoreboard players operation $timer_ticks ff_day -= $timer_pause_offset ff_day
