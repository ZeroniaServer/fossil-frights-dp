execute as @e[limit=1,distance=..1.6,type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] run effect clear @s minecraft:glowing
execute as @e[limit=1,distance=..1.6,type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] run data modify entity @s Glowing set value false
execute unless score $ice_sculpture ff_glowtrap_age matches 41.. run scoreboard players set $ice_sculpture ff_glowtrap_age 40
data modify entity @e[limit=1,type=minecraft:item_display,tag=ff_ice_sculpture] Glowing set value true
