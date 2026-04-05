$execute if entity @a[tag=ff_lb_slot_$(slot),limit=1] run function fossil_frights:leaderboards/display/append_row_filled with storage fossil_frights:leaderboards slot_$(slot)
$execute unless entity @a[tag=ff_lb_slot_$(slot),limit=1] run function fossil_frights:leaderboards/display/append_row_empty with storage fossil_frights:leaderboards slot_$(slot)
