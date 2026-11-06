function fossil_frights:entity/match/active
execute as @a[limit=1,predicate=fossil_frights:player/team/guard,predicate=fossil_frights:entity/match/active] run function fossil_frights:game/heists/key/steal
