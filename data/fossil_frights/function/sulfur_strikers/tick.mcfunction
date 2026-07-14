execute if score $score_cooldown ff_sulfur matches 1.. run scoreboard players remove $score_cooldown ff_sulfur 1
function fossil_frights:sulfur_strikers/ball/ensure
execute as @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball,x=61,y=66,z=-63,dx=4,dy=4,dz=5] at @s run function fossil_frights:sulfur_strikers/ball/return_to_start
execute if score $score_cooldown ff_sulfur matches 0 as @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball,x=46,y=66,z=-78,dx=0,dy=2,dz=4] at @s run function fossil_frights:sulfur_strikers/score/cyan
execute if score $score_cooldown ff_sulfur matches 0 as @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball,x=78,y=66,z=-78,dx=0,dy=2,dz=4] at @s run function fossil_frights:sulfur_strikers/score/yellow
