execute unless entity @e[type=minecraft:interaction,tag=ff_bunny_slippers_pickup_click,distance=..1] run return 0
execute store success score #slippers_given ff_dummy run loot give @s loot fossil_frights:items/bunny_slippers_pickup
execute unless score #slippers_given ff_dummy matches 1 run return 0
particle minecraft:poof ~ ~0.4 ~ 0.2 0.2 0.2 0.02 15 force
function fossil_frights:animations/bunny_slippers/reset
