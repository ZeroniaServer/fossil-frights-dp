execute store result score $ball_count ff_sulfur if entity @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball]
execute if score $ball_count ff_sulfur matches 2.. run function fossil_frights:sulfur_strikers/ball/spawn
execute unless entity @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball,limit=1] run function fossil_frights:sulfur_strikers/ball/spawn
