scoreboard players set $lb_best_index ff_lb_calc -1
scoreboard players set $lb_best_kind ff_lb_calc 0
scoreboard players set $lb_best_value ff_lb_calc 0
function fossil_frights:leaderboards/display/scan_best
$scoreboard players operation #lb_slot_$(slot)_index ff_lb_calc = $lb_best_index ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_kind ff_lb_calc = $lb_best_kind ff_lb_calc
$execute store result storage fossil_frights:leaderboards slot_$(slot).index int 1 run scoreboard players get #lb_slot_$(slot)_index ff_lb_calc
$execute store result storage fossil_frights:leaderboards slot_$(slot).kind int 1 run scoreboard players get #lb_slot_$(slot)_kind ff_lb_calc
$execute if score #lb_slot_$(slot)_index ff_lb_calc matches 0.. run function fossil_frights:leaderboards/display/copy_slot_entry with storage fossil_frights:leaderboards slot_$(slot)
