$execute as @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_slot_$(slot),limit=1] run function fossil_frights:admin/reset_leaderboard_slot_target
function fossil_frights:leaderboards/display/refresh
$tellraw @a[team=ff_dev_mode] [{"text":"Fossil Frights leaderboard slot $(slot) reset.","color":"green"}]

