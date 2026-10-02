tag @s add ff_rejoin_source

tag @e[type=minecraft:marker,tag=ff_rejoin_marker] remove ff_rejoin_match
function fossil_frights:entity/match/active
tag @e[limit=1,type=minecraft:marker,tag=ff_rejoin_marker,predicate=fossil_frights:entity/match/active] add ff_rejoin_match

execute unless entity @e[type=minecraft:marker,tag=ff_rejoin_match] run function fossil_frights:game/rejoin/state/register_new
function fossil_frights:game/rejoin/state/update
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_match
tag @s remove ff_rejoin_source
