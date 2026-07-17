scoreboard players operation $time_minutes ff_dummy = $day_seconds_left ff_day
scoreboard players operation $time_seconds ff_dummy = $day_seconds_left ff_day
scoreboard players operation $time_minutes ff_dummy /= #60 ff_constant
scoreboard players operation $time_seconds ff_dummy %= #60 ff_constant
data modify storage fossil_frights:bossbar seconds_padding set value ""
data modify storage fossil_frights:bossbar minutes_padding set value ""
execute if score $time_seconds ff_dummy matches 0..9 run data modify storage fossil_frights:bossbar seconds_padding set value "0"
execute if score $time_minutes ff_dummy matches 0..9 run data modify storage fossil_frights:bossbar minutes_padding set value "0"
execute if score $custom_day_active ff_day matches 1 run function fossil_frights:messages/bossbar/update_custom_day_name with storage fossil_frights:bossbar
execute if score $custom_day_active ff_day matches 1 run data remove storage fossil_frights:bossbar seconds_padding
execute if score $custom_day_active ff_day matches 1 run data remove storage fossil_frights:bossbar minutes_padding
execute if score $custom_day_active ff_day matches 1 run scoreboard players reset $time_minutes ff_dummy
execute if score $custom_day_active ff_day matches 1 run scoreboard players reset $time_seconds ff_dummy
execute if score $custom_day_active ff_day matches 1 run return 0
execute store result storage fossil_frights:bossbar day int 1 run scoreboard players get $day_current ff_day
function fossil_frights:messages/bossbar/update_bossbar with storage fossil_frights:bossbar
data remove storage fossil_frights:bossbar day
data remove storage fossil_frights:bossbar seconds_padding
data remove storage fossil_frights:bossbar minutes_padding
scoreboard players reset $time_minutes ff_dummy
scoreboard players reset $time_seconds ff_dummy
