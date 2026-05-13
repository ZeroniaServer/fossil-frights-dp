execute anchored eyes positioned ^ ^-0.2 ^0.7 run summon minecraft:marker ~ ~ ~ {Tags:["ff_confetti","ff_confetti_new"]}
data modify entity @e[type=minecraft:marker,tag=ff_confetti_new,sort=nearest,limit=1] Rotation set from entity @s Rotation
scoreboard players set @e[type=minecraft:marker,tag=ff_confetti_new,sort=nearest,limit=1] ff_confetti_age 0
execute as @e[type=minecraft:marker,tag=ff_confetti_new,sort=nearest,limit=1] at @s run function fossil_frights:seasonal/playtests/confetti/burst
tag @e[type=minecraft:marker,tag=ff_confetti_new,sort=nearest,limit=1] remove ff_confetti_new
