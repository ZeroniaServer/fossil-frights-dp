tag @e[type=minecraft:marker,tag=ff_rejoin_marker] remove ff_rejoin_cleanup_current
function fossil_frights:entity/match/active
tag @e[limit=1,type=minecraft:marker,tag=ff_rejoin_marker,predicate=fossil_frights:entity/match/active] add ff_rejoin_cleanup_current
execute as @e[type=minecraft:marker,tag=ff_rejoin_cleanup_current] run function fossil_frights:game/rejoin/cleanup/marker
