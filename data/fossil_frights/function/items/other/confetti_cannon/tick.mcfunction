scoreboard players add @s ff_confetti_age 1
execute if score @s ff_confetti_age matches 2 run function fossil_frights:items/other/confetti_cannon/frame_2
execute if score @s ff_confetti_age matches 4 run function fossil_frights:items/other/confetti_cannon/frame_3
execute if score @s ff_confetti_age matches 6 run function fossil_frights:items/other/confetti_cannon/frame_4
execute if score @s ff_confetti_age matches 8 run function fossil_frights:items/other/confetti_cannon/frame_5
execute if score @s ff_confetti_age matches 11 run function fossil_frights:items/other/confetti_cannon/frame_6
execute if score @s ff_confetti_age matches 14 run function fossil_frights:items/other/confetti_cannon/frame_7
execute if score @s ff_confetti_age matches 18 run function fossil_frights:items/other/confetti_cannon/frame_8
execute if score @s ff_confetti_age matches 22.. run kill @s
