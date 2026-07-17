$data modify storage fossil_frights:leaderboards slot_entry set from storage fossil_frights:leaderboards entries[$(index)]
$data modify storage fossil_frights:leaderboards slot_$(slot).name set from storage fossil_frights:leaderboards slot_entry.name
$scoreboard players set #lb_slot_$(slot)_time ff_lb_calc 0
$scoreboard players set #lb_slot_$(slot)_day ff_lb_calc 0
$execute store result score #lb_slot_$(slot)_time ff_lb_calc run data get storage fossil_frights:leaderboards slot_entry.top_time
$execute store result score #lb_slot_$(slot)_day ff_lb_calc run data get storage fossil_frights:leaderboards slot_entry.top_day
