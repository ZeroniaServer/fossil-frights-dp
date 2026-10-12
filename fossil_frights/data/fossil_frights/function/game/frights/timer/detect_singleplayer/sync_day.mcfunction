execute as @a[team=ff_guard,limit=1] run scoreboard players operation $day_timer ff_day = @s ff_singleplayer_play_time
scoreboard players operation $day_timer ff_day -= $day_timer_play_time_start ff_day
execute if score $day_timer ff_day matches ..-1 run scoreboard players set $day_timer ff_day 0
