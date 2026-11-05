# Sync forcefield display
execute if predicate fossil_frights:game_state/hazard_active/curse run loot replace entity @e[type=minecraft:item_display,tag=ghost_forcefield,limit=1] contents loot fossil_frights:display/curse_hazard/active
execute unless predicate fossil_frights:game_state/hazard_active/curse run loot replace entity @e[type=minecraft:item_display,tag=ghost_forcefield,limit=1] contents loot fossil_frights:display/curse_hazard/inactive
