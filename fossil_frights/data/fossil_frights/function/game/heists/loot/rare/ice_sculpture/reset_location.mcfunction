execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run data merge entity @s {Glowing:0b}
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run scoreboard players reset @s ff_glowtrap_age
kill @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver]
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 68.5 82.0 46.5 0 0
data merge entity @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] {view_range:1f}
