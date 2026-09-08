execute if score lights ff_hazard_active matches 1 run loot replace entity @e[type=minecraft:item_display,tag=camera_computer,limit=1] contents loot fossil_frights:display/lights_hazard/active
execute unless score lights ff_hazard_active matches 1 run loot replace entity @e[type=minecraft:item_display,tag=camera_computer,limit=1] contents loot fossil_frights:display/lights_hazard/inactive
