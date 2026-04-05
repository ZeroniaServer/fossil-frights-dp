tag @a remove ff_lb_best
scoreboard players set #lb_best_value ff_lb_calc 2147483647
execute as @a[scores={ff_top_time=1..},tag=!ff_lb_ranked] if score @s ff_top_time < #lb_best_value ff_lb_calc run function fossil_frights:leaderboards/display/select_time_candidate
$tag @a[tag=ff_lb_best] add ff_lb_slot_$(slot)
tag @a[tag=ff_lb_best] add ff_lb_time_entry
tag @a[tag=ff_lb_best] add ff_lb_ranked
tag @a[tag=ff_lb_best] remove ff_lb_best
