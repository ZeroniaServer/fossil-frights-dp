scoreboard players remove @s ff_crab_timer 1
execute if score @s ff_crab_timer matches 22 run function fossil_frights:animations/payment/crab/pose_dip
execute if score @s ff_crab_timer matches 16 run function fossil_frights:animations/payment/crab/pose_reach
execute if score @s ff_crab_timer matches 10 run function fossil_frights:animations/payment/crab/pose_return
execute if score @s ff_crab_timer matches 10 run function fossil_frights:animations/payment/crab/body_return
execute if score @s ff_crab_timer matches 0 run function fossil_frights:animations/payment/crab/finish
