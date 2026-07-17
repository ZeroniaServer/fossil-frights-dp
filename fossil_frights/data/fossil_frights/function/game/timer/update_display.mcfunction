execute unless score $timer_started ff_day matches 1 run data merge entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] {text:[{text:"--:--.--",color:"#8DFF9E"}],text_opacity:186,shadow:true,brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[2,2,2]}}
execute unless score $timer_started ff_day matches 1 run return 0
scoreboard players operation $timer_minutes ff_day = $timer_ticks ff_day
scoreboard players operation $timer_minutes ff_day /= #ticks_per_minute ff_constant
scoreboard players operation $timer_seconds ff_day = $timer_ticks ff_day
scoreboard players operation $timer_seconds ff_day /= #ticks_per_second ff_constant
scoreboard players operation $timer_seconds ff_day %= #60 ff_constant
scoreboard players operation $timer_centis ff_day = $timer_ticks ff_day
scoreboard players operation $timer_centis ff_day %= #ticks_per_second ff_constant
scoreboard players operation $timer_centis ff_day *= #5 ff_constant
scoreboard players operation $timer_min_tens ff_day = $timer_minutes ff_day
scoreboard players operation $timer_min_tens ff_day /= #10 ff_constant
scoreboard players operation $timer_min_tens ff_day %= #10 ff_constant
scoreboard players operation $timer_min_ones ff_day = $timer_minutes ff_day
scoreboard players operation $timer_min_ones ff_day %= #10 ff_constant
scoreboard players operation $timer_sec_tens ff_day = $timer_seconds ff_day
scoreboard players operation $timer_sec_tens ff_day /= #10 ff_constant
scoreboard players operation $timer_sec_ones ff_day = $timer_seconds ff_day
scoreboard players operation $timer_sec_ones ff_day %= #10 ff_constant
scoreboard players operation $timer_centi_tens ff_day = $timer_centis ff_day
scoreboard players operation $timer_centi_tens ff_day /= #10 ff_constant
scoreboard players operation $timer_centi_ones ff_day = $timer_centis ff_day
scoreboard players operation $timer_centi_ones ff_day %= #10 ff_constant
data merge entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] {text:[{score:{name:"$timer_min_tens",objective:"ff_day"},color:"#8DFF9E"},{score:{name:"$timer_min_ones",objective:"ff_day"},color:"#8DFF9E"},{text:":",color:"#8DFF9E"},{score:{name:"$timer_sec_tens",objective:"ff_day"},color:"#8DFF9E"},{score:{name:"$timer_sec_ones",objective:"ff_day"},color:"#8DFF9E"},{text:".",color:"#8DFF9E"},{score:{name:"$timer_centi_tens",objective:"ff_day"},color:"#8DFF9E"},{score:{name:"$timer_centi_ones",objective:"ff_day"},color:"#8DFF9E"}],text_opacity:186,shadow:true,brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[2,2,2]}}
