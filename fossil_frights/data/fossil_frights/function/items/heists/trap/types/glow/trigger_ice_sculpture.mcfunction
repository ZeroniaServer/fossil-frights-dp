execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,distance=..1.6,limit=1] run effect clear @s minecraft:glowing
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,distance=..1.6,limit=1] run data merge entity @s {Glowing:0b}
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run scoreboard players set @s ff_glowtrap_age 200
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run data merge entity @s {Glowing:1b}
function fossil_frights:items/heists/trap/types/glow/trigger
