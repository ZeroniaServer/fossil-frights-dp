scoreboard players set $timer_ticks ff_day 0
scoreboard players set $timer_started ff_day 0
scoreboard players set $timer_frozen ff_day 0
scoreboard players set $timer_minutes ff_day 0
scoreboard players set $timer_seconds ff_day 0
scoreboard players set $timer_centis ff_day 0
scoreboard players set $timer_min_tens ff_day 0
scoreboard players set $timer_min_ones ff_day 0
scoreboard players set $timer_sec_tens ff_day 0
scoreboard players set $timer_sec_ones ff_day 0
scoreboard players set $timer_centi_tens ff_day 0
scoreboard players set $timer_centi_ones ff_day 0
data merge entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] {text:[{"text":"--:--.--","color":"#A6FBFF"}],text_opacity:-70b,shadow:1b,brightness:{sky:15,block:15},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
