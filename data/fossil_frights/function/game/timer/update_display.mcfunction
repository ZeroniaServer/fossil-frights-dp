execute unless score $timer_started ff_day matches 1 run data merge entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] {text:"--:--.--"}
execute unless score $timer_started ff_day matches 1 run return 0
scoreboard players operation $timer_minutes ff_day = $timer_ticks ff_day
scoreboard players operation $timer_minutes ff_day /= #day_minute ff_day
scoreboard players operation $timer_seconds ff_day = $timer_ticks ff_day
scoreboard players operation $timer_seconds ff_day /= #day_tick ff_day
scoreboard players operation $timer_seconds ff_day %= #sixty ff_day
scoreboard players operation $timer_centis ff_day = $timer_ticks ff_day
scoreboard players operation $timer_centis ff_day %= #day_tick ff_day
scoreboard players operation $timer_centis ff_day *= #five ff_day
scoreboard players operation $timer_min_tens ff_day = $timer_minutes ff_day
scoreboard players operation $timer_min_tens ff_day /= #ten ff_day
scoreboard players operation $timer_min_tens ff_day %= #ten ff_day
scoreboard players operation $timer_min_ones ff_day = $timer_minutes ff_day
scoreboard players operation $timer_min_ones ff_day %= #ten ff_day
scoreboard players operation $timer_sec_tens ff_day = $timer_seconds ff_day
scoreboard players operation $timer_sec_tens ff_day /= #ten ff_day
scoreboard players operation $timer_sec_ones ff_day = $timer_seconds ff_day
scoreboard players operation $timer_sec_ones ff_day %= #ten ff_day
scoreboard players operation $timer_centi_tens ff_day = $timer_centis ff_day
scoreboard players operation $timer_centi_tens ff_day /= #ten ff_day
scoreboard players operation $timer_centi_ones ff_day = $timer_centis ff_day
scoreboard players operation $timer_centi_ones ff_day %= #ten ff_day
data merge entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] {text:[{"score":{"name":"$timer_min_tens","objective":"ff_day"}},{"score":{"name":"$timer_min_ones","objective":"ff_day"}},{"text":":"},{"score":{"name":"$timer_sec_tens","objective":"ff_day"}},{"score":{"name":"$timer_sec_ones","objective":"ff_day"}},{"text":"."},{"score":{"name":"$timer_centi_tens","objective":"ff_day"}},{"score":{"name":"$timer_centi_ones","objective":"ff_day"}}]}
