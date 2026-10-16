scoreboard players operation $party_record_minutes ff_lb_calc = $party_record_time ff_lb_calc
scoreboard players operation $party_record_minutes ff_lb_calc /= #lb_twelve_hundred ff_lb_calc
scoreboard players operation $party_record_min_tens ff_lb_calc = $party_record_minutes ff_lb_calc
scoreboard players operation $party_record_min_tens ff_lb_calc /= #lb_ten ff_lb_calc
scoreboard players operation $party_record_min_ones ff_lb_calc = $party_record_minutes ff_lb_calc
scoreboard players operation $party_record_min_ones ff_lb_calc %= #lb_ten ff_lb_calc
scoreboard players operation $party_record_seconds_total ff_lb_calc = $party_record_time ff_lb_calc
scoreboard players operation $party_record_seconds_total ff_lb_calc /= #lb_twenty ff_lb_calc
scoreboard players operation $party_record_seconds ff_lb_calc = $party_record_seconds_total ff_lb_calc
scoreboard players operation $party_record_seconds ff_lb_calc %= #lb_sixty ff_lb_calc
scoreboard players operation $party_record_centis ff_lb_calc = $party_record_time ff_lb_calc
scoreboard players operation $party_record_centis ff_lb_calc %= #lb_twenty ff_lb_calc
scoreboard players operation $party_record_centis ff_lb_calc *= #lb_five ff_lb_calc
execute if score $party_record_time ff_lb_calc matches 1200000.. run scoreboard players set $party_record_minutes ff_lb_calc 999
execute if score $party_record_time ff_lb_calc matches 1200000.. run scoreboard players set $party_record_seconds ff_lb_calc 59
execute if score $party_record_time ff_lb_calc matches 1200000.. run scoreboard players set $party_record_centis ff_lb_calc 99
scoreboard players operation $party_record_sec_tens ff_lb_calc = $party_record_seconds ff_lb_calc
scoreboard players operation $party_record_sec_tens ff_lb_calc /= #lb_ten ff_lb_calc
scoreboard players operation $party_record_sec_ones ff_lb_calc = $party_record_seconds ff_lb_calc
scoreboard players operation $party_record_sec_ones ff_lb_calc %= #lb_ten ff_lb_calc
scoreboard players operation $party_record_centi_tens ff_lb_calc = $party_record_centis ff_lb_calc
scoreboard players operation $party_record_centi_tens ff_lb_calc /= #lb_ten ff_lb_calc
scoreboard players operation $party_record_centi_ones ff_lb_calc = $party_record_centis ff_lb_calc
scoreboard players operation $party_record_centi_ones ff_lb_calc %= #lb_ten ff_lb_calc
