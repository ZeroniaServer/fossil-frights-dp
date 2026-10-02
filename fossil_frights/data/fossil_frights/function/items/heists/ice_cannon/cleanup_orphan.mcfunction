function fossil_frights:entity/match/active
execute unless entity @e[limit=1,type=minecraft:block_display,tag=ff_ice_freeze,predicate=fossil_frights:entity/match/active] run function fossil_frights:items/heists/ice_cannon/restore_player
