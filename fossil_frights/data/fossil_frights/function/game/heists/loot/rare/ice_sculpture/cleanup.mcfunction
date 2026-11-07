kill @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver]
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 68.5 82.0 46.5 0 0
execute if score $loot_ice_sculpture ff_heist_loot_state matches 3 as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run data merge entity @s {view_range:0f}
execute unless score $loot_ice_sculpture ff_heist_loot_state matches 3 as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run data merge entity @s {view_range:1f}
