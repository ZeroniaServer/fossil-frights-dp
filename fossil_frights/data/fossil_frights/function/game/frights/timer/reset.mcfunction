scoreboard players set $speedrun_stopwatch_active ff_day 0
scoreboard players set $day_stopwatch_active ff_day 0
stopwatch remove fossil_frights:speedrun
stopwatch remove fossil_frights:day_duration
scoreboard players set $timer_ticks ff_day 0
scoreboard players set $timer_started ff_day 0
scoreboard players set $timer_frozen ff_day 0
scoreboard players set $timer_pause_offset ff_day 0
scoreboard players set $timer_pause_now ff_day 0
scoreboard players set $day_timer_offset ff_day 0
scoreboard players set $day_timer_pause_now ff_day 0
scoreboard players set $timer_query_now ff_day 0
scoreboard players set $day_timer_query_now ff_day 0
scoreboard players set $timer_minutes ff_day 0
scoreboard players set $timer_seconds ff_day 0
scoreboard players set $timer_centis ff_day 0
scoreboard players set $timer_min_tens ff_day 0
scoreboard players set $timer_min_ones ff_day 0
scoreboard players set $timer_sec_tens ff_day 0
scoreboard players set $timer_sec_ones ff_day 0
scoreboard players set $timer_centi_tens ff_day 0
scoreboard players set $timer_centi_ones ff_day 0
data merge entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] {text:[{text:"--:--.--",color:"#8DFF9E"}],text_opacity:186,shadow:true,brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[2,2,2]}}
