# Keep the forcefield display in sync with the authoritative Curse score.
execute if score curse ff_hazard_active matches 1 run loot replace entity @e[type=minecraft:item_display,tag=ghost_forcefield,limit=1] contents loot fossil_frights:display/curse_hazard/active
execute unless score curse ff_hazard_active matches 1 run loot replace entity @e[type=minecraft:item_display,tag=ghost_forcefield,limit=1] contents loot fossil_frights:display/curse_hazard/inactive
