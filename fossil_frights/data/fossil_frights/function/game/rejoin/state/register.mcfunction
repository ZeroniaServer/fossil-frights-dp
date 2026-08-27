tag @s add ff_rejoin_source
function fossil_frights:game/rejoin/state/match
execute unless entity @e[type=minecraft:marker,tag=ff_rejoin_match] run function fossil_frights:game/rejoin/state/register_new
function fossil_frights:game/rejoin/state/update
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_match
tag @s remove ff_rejoin_source
