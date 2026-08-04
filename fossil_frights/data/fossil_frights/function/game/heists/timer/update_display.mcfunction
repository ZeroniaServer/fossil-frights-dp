scoreboard players operation $heist_seconds_left ff_heist = $heist_timer ff_heist
scoreboard players operation $heist_seconds_left ff_heist /= #heist_tick ff_heist
scoreboard players operation $time_minutes ff_dummy = $heist_seconds_left ff_heist
scoreboard players operation $time_seconds ff_dummy = $heist_seconds_left ff_heist
scoreboard players operation $time_minutes ff_dummy /= #60 ff_constant
scoreboard players operation $time_seconds ff_dummy %= #60 ff_constant
data modify storage fossil_frights:bossbar seconds_padding set value ""
data modify storage fossil_frights:bossbar minutes_padding set value ""
execute if score $time_seconds ff_dummy matches 0..9 run data modify storage fossil_frights:bossbar seconds_padding set value "0"
execute if score $time_minutes ff_dummy matches 0..9 run data modify storage fossil_frights:bossbar minutes_padding set value "0"
function fossil_frights:game/bossbar/set_heists_timer with storage fossil_frights:bossbar
data remove storage fossil_frights:bossbar seconds_padding
data remove storage fossil_frights:bossbar minutes_padding
scoreboard players reset $time_minutes ff_dummy
scoreboard players reset $time_seconds ff_dummy