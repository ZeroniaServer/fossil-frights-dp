$execute if entity @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_slot_$(slot),limit=1] run return 0
tag @e[type=mannequin,tag=ff_lb_entry] remove ff_lb_best
tag @e[type=mannequin,tag=ff_lb_entry] remove ff_lb_scan_done
execute as @e[type=mannequin,tag=ff_lb_entry,scores={ff_top_day=1..,ff_top_time=0},tag=!ff_lb_ranked,limit=1,sort=arbitrary] run function fossil_frights:leaderboards/display/select_day_candidate_seed
$tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_best] add ff_lb_slot_$(slot)
tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_best] add ff_lb_day_entry
tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_best] add ff_lb_ranked
tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_best] remove ff_lb_best
