data modify entity @s[tag=!ff_queue_mannequin.next_up] description set value {translate:"ff.queue_mannequin.description.next_up",color:"yellow",font:"fossil-frights:small_caps"}
tag @s add ff_queue_mannequin.next_up

execute if predicate fossil_frights:entity/periodic_tick/5 run particle minecraft:trial_omen ~ ~0.5 ~ 0.3 0.5 0.3 0 1 force
