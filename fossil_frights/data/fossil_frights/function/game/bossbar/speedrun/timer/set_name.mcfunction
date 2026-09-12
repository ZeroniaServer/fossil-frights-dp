scoreboard players set #8 ff_dummy 8
scoreboard players set #20 ff_dummy 20
execute store result score $timer_anim_frame ff_dummy run scoreboard players get $day_timer ff_day
scoreboard players operation $timer_anim_frame ff_dummy /= #20 ff_dummy
scoreboard players operation $timer_anim_frame ff_dummy %= #8 ff_dummy
execute store result storage fossil_frights:spedrun_timer anim_frame int 1 run scoreboard players get $timer_anim_frame ff_dummy
function fossil_frights:game/bossbar/speedrun/timer/set_name_macro with storage fossil_frights:spedrun_timer
