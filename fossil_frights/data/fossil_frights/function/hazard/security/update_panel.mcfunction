execute if score security ff_hazard_active matches 1 run loot replace entity @e[type=minecraft:item_display,tag=security_panel,limit=1] contents loot fossil_frights:display/security_hazard/active
execute unless score security ff_hazard_active matches 1 run loot replace entity @e[type=minecraft:item_display,tag=security_panel,limit=1] contents loot fossil_frights:display/security_hazard/inactive
