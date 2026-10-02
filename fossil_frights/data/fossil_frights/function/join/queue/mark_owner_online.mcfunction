function fossil_frights:entity/match/active
execute as @e[limit=1,type=mannequin,tag=ff_queue_mannequin,predicate=fossil_frights:entity/match/active] run tag @s add ff_queue_owner_online
