function fossil_frights:entity/match/active
execute as @e[limit=1,type=mannequin,tag=ff_queue_mannequin,predicate=fossil_frights:entity/match/active] at @s run function fossil_frights:join/queue/update_next_up_mannequin_selected
