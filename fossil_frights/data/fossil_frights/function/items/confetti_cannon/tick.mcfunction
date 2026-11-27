scoreboard players set #confetti_exists ff_dummy 0
execute as @e[type=minecraft:marker,tag=ff_confetti] at @s run function fossil_frights:items/confetti_cannon/confetti_tick

execute if score #confetti_exists ff_dummy matches 1 run schedule function fossil_frights:items/confetti_cannon/tick 1t
