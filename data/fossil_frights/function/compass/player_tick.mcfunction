scoreboard players add @s ff_compass 0
scoreboard players remove @s ff_compass 1
execute if score @s ff_compass matches ..0 run scoreboard players operation @s ff_compass = #compass_refresh_interval ff_compass
execute if score @s ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:compass/update/player
