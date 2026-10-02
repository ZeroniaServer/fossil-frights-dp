function fossil_frights:entity/match/active
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_run_member,predicate=fossil_frights:entity/match/active] run function fossil_frights:game/rejoin/state/register
