function fossil_frights:leaderboards/display/update
$execute if score #lb_slot_$(slot)_index ff_lb_calc matches 0.. run function fossil_frights:admin/reset_leaderboard_slot_copy with storage fossil_frights:leaderboards slot_$(slot)
function fossil_frights:leaderboards/display/refresh
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights leaderboard slot $(slot) reset.","color":"green"}]
