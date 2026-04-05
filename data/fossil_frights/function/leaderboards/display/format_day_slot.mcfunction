$execute unless entity @a[tag=ff_lb_slot_$(slot),tag=ff_lb_day_entry,limit=1] run return 0
$scoreboard players operation #lb_slot_$(slot)_day ff_lb_calc = @a[tag=ff_lb_slot_$(slot),limit=1] ff_top_day
