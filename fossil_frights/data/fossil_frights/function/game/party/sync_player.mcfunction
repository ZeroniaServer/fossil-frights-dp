tag @s add ff_run_sync_source
function fossil_frights:entity/match/active
execute as @e[limit=1,type=minecraft:marker,tag=ff_run_member,predicate=fossil_frights:entity/match/active] run function fossil_frights:game/party/sync_member
tag @s remove ff_run_sync_source
