execute as @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball] run data merge entity @s {Size:0}
kill @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball]
kill @e[type=minecraft:block_display,tag=ff_sulfur_strikers_ball_visual]
execute store result score $type_roll ff_sulfur run random value 1..7
execute store result score $size_roll ff_sulfur run random value 1..30
function fossil_frights:lobby_games/sulfur_strikers/ball/random_type
function fossil_frights:lobby_games/sulfur_strikers/ball/random_size
execute positioned 62 70 -76 run particle minecraft:poof ~ ~0.5 ~ 0.35 0.35 0.35 0.02 24 force
function fossil_frights:lobby_games/sulfur_strikers/ball/summon_macro with storage fossil_frights:sulfur_strikers ball
