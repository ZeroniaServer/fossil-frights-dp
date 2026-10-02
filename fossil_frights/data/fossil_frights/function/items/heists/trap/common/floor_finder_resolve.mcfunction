function fossil_frights:entity/match/active
execute as @a[limit=1,team=ff_guard,gamemode=!spectator,predicate=fossil_frights:entity/match/active] run function fossil_frights:items/heists/trap/common/floor_finder_resolve_player
