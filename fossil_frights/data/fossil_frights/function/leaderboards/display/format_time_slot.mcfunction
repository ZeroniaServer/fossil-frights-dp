$scoreboard players operation #lb_slot_$(slot)_minutes ff_lb_calc = #lb_slot_$(slot)_time ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_minutes ff_lb_calc /= #lb_twelve_hundred ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_seconds_total ff_lb_calc = #lb_slot_$(slot)_time ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_seconds_total ff_lb_calc /= #lb_twenty ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_seconds ff_lb_calc = #lb_slot_$(slot)_seconds_total ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_seconds ff_lb_calc %= #lb_sixty ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centis ff_lb_calc = #lb_slot_$(slot)_time ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centis ff_lb_calc %= #lb_twenty ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centis ff_lb_calc *= #lb_five ff_lb_calc
$execute if score #lb_slot_$(slot)_time ff_lb_calc matches 1200000.. run scoreboard players set #lb_slot_$(slot)_minutes ff_lb_calc 999
$execute if score #lb_slot_$(slot)_time ff_lb_calc matches 1200000.. run scoreboard players set #lb_slot_$(slot)_seconds ff_lb_calc 59
$execute if score #lb_slot_$(slot)_time ff_lb_calc matches 1200000.. run scoreboard players set #lb_slot_$(slot)_centis ff_lb_calc 99
$scoreboard players operation #lb_slot_$(slot)_min_tens ff_lb_calc = #lb_slot_$(slot)_minutes ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_min_tens ff_lb_calc /= #lb_ten ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_min_ones ff_lb_calc = #lb_slot_$(slot)_minutes ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_min_ones ff_lb_calc %= #lb_ten ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_sec_tens ff_lb_calc = #lb_slot_$(slot)_seconds ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_sec_tens ff_lb_calc /= #lb_ten ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_sec_ones ff_lb_calc = #lb_slot_$(slot)_seconds ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_sec_ones ff_lb_calc %= #lb_ten ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centi_tens ff_lb_calc = #lb_slot_$(slot)_centis ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centi_tens ff_lb_calc /= #lb_ten ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centi_ones ff_lb_calc = #lb_slot_$(slot)_centis ff_lb_calc
$scoreboard players operation #lb_slot_$(slot)_centi_ones ff_lb_calc %= #lb_ten ff_lb_calc
