$execute if entity @a[tag=ff_lb_slot_$(slot),limit=1] run return 0
tag @a remove ff_lb_best
scoreboard players set #lb_best_value ff_lb_calc 0
execute as @a[scores={ff_top_day=1..,ff_top_time=0},tag=!ff_lb_ranked] if score @s ff_top_day > #lb_best_value ff_lb_calc run function fossil_frights:leaderboards/display/select_day_candidate
$tag @a[tag=ff_lb_best] add ff_lb_slot_$(slot)
tag @a[tag=ff_lb_best] add ff_lb_day_entry
tag @a[tag=ff_lb_best] add ff_lb_ranked
tag @a[tag=ff_lb_best] remove ff_lb_best
