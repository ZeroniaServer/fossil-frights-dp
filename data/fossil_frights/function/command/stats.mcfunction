scoreboard players set $stats_top_time ff_lb_calc 0
scoreboard players set $stats_duo_best ff_lb_calc 0
scoreboard players set $stats_duo_minutes ff_lb_calc 0
scoreboard players set $stats_duo_seconds_total ff_lb_calc 0
scoreboard players set $stats_duo_seconds ff_lb_calc 0
scoreboard players set $stats_duo_centis ff_lb_calc 0
scoreboard players set $stats_duo_min_tens ff_lb_calc 0
scoreboard players set $stats_duo_min_ones ff_lb_calc 0
scoreboard players set $stats_duo_sec_tens ff_lb_calc 0
scoreboard players set $stats_duo_sec_ones ff_lb_calc 0
scoreboard players set $stats_duo_centi_tens ff_lb_calc 0
scoreboard players set $stats_duo_centi_ones ff_lb_calc 0
scoreboard players set $stats_top_day ff_lb_calc 0
scoreboard players set $stats_run_total ff_lb_calc 0
scoreboard players set $stats_parkour_best ff_lb_calc 0
scoreboard players set $stats_parkour_minutes ff_lb_calc 0
scoreboard players set $stats_parkour_seconds ff_lb_calc 0
scoreboard players set $stats_parkour_centis ff_lb_calc 0
scoreboard players set $stats_parkour_min_tens ff_lb_calc 0
scoreboard players set $stats_parkour_min_ones ff_lb_calc 0
scoreboard players set $stats_parkour_sec_tens ff_lb_calc 0
scoreboard players set $stats_parkour_sec_ones ff_lb_calc 0
scoreboard players set $stats_parkour_centi_tens ff_lb_calc 0
scoreboard players set $stats_parkour_centi_ones ff_lb_calc 0
scoreboard players set $stats_temple_run_best ff_lb_calc 0
scoreboard players set $stats_temple_run_minutes ff_lb_calc 0
scoreboard players set $stats_temple_run_seconds ff_lb_calc 0
scoreboard players set $stats_temple_run_centis ff_lb_calc 0
scoreboard players set $stats_temple_run_min_tens ff_lb_calc 0
scoreboard players set $stats_temple_run_min_ones ff_lb_calc 0
scoreboard players set $stats_temple_run_sec_tens ff_lb_calc 0
scoreboard players set $stats_temple_run_sec_ones ff_lb_calc 0
scoreboard players set $stats_temple_run_centi_tens ff_lb_calc 0
scoreboard players set $stats_temple_run_centi_ones ff_lb_calc 0
scoreboard players set $stats_ant_score ff_lb_calc 0
scoreboard players set $stats_ant_top_score ff_lb_calc 0
scoreboard players set $stats_minutes ff_lb_calc 0
scoreboard players set $stats_seconds_total ff_lb_calc 0
scoreboard players set $stats_seconds ff_lb_calc 0
scoreboard players set $stats_centis ff_lb_calc 0
scoreboard players set $stats_min_tens ff_lb_calc 0
scoreboard players set $stats_min_ones ff_lb_calc 0
scoreboard players set $stats_sec_tens ff_lb_calc 0
scoreboard players set $stats_sec_ones ff_lb_calc 0
scoreboard players set $stats_centi_tens ff_lb_calc 0
scoreboard players set $stats_centi_ones ff_lb_calc 0
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_top_time ff_lb_calc = @s ff_top_time
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_best ff_lb_calc = @s ff_duo_best
execute if score @s ff_top_day matches 1.. run scoreboard players operation $stats_top_day ff_lb_calc = @s ff_top_day
scoreboard players operation $stats_run_total ff_lb_calc = @s ff_run_count
scoreboard players operation $stats_ant_score ff_lb_calc = @s ff_ant_score
scoreboard players operation $stats_ant_top_score ff_lb_calc = @s ff_ant_top_score
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_best ff_lb_calc = @s ff_parkour_best
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_minutes ff_lb_calc = $stats_parkour_best ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_minutes ff_lb_calc /= #100 ff_parkour_math
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_minutes ff_lb_calc /= #60 ff_parkour_math
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_best ff_lb_calc = @s ff_temple_run_best
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_minutes ff_lb_calc = $stats_temple_run_best ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_minutes ff_lb_calc /= #100 ff_temple_run_math
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_minutes ff_lb_calc /= #60 ff_temple_run_math
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_minutes ff_lb_calc = $stats_top_time ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_minutes ff_lb_calc /= #lb_twelve_hundred ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_seconds_total ff_lb_calc = $stats_top_time ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_seconds_total ff_lb_calc /= #lb_twenty ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_seconds ff_lb_calc = $stats_seconds_total ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_seconds ff_lb_calc %= #lb_sixty ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centis ff_lb_calc = $stats_top_time ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centis ff_lb_calc %= #lb_twenty ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centis ff_lb_calc *= #lb_five ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_min_tens ff_lb_calc = $stats_minutes ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_min_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_min_ones ff_lb_calc = $stats_minutes ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_min_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_sec_tens ff_lb_calc = $stats_seconds ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_sec_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_sec_ones ff_lb_calc = $stats_seconds ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_sec_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centi_tens ff_lb_calc = $stats_centis ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centi_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centi_ones ff_lb_calc = $stats_centis ff_lb_calc
execute if score @s ff_top_time matches 1.. run scoreboard players operation $stats_centi_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_minutes ff_lb_calc = $stats_duo_best ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_minutes ff_lb_calc /= #lb_twelve_hundred ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_seconds_total ff_lb_calc = $stats_duo_best ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_seconds_total ff_lb_calc /= #lb_twenty ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_seconds ff_lb_calc = $stats_duo_seconds_total ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_seconds ff_lb_calc %= #lb_sixty ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centis ff_lb_calc = $stats_duo_best ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centis ff_lb_calc %= #lb_twenty ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centis ff_lb_calc *= #lb_five ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_min_tens ff_lb_calc = $stats_duo_minutes ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_min_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_min_ones ff_lb_calc = $stats_duo_minutes ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_min_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_sec_tens ff_lb_calc = $stats_duo_seconds ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_sec_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_sec_ones ff_lb_calc = $stats_duo_seconds ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_sec_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centi_tens ff_lb_calc = $stats_duo_centis ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centi_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centi_ones ff_lb_calc = $stats_duo_centis ff_lb_calc
execute if score @s ff_duo_best matches 1.. run scoreboard players operation $stats_duo_centi_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_seconds ff_lb_calc = $stats_parkour_best ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_seconds ff_lb_calc /= #100 ff_parkour_math
execute if score @s ff_parkour_best matches 1.. if score $stats_parkour_minutes ff_lb_calc matches 1.. run scoreboard players operation $stats_parkour_seconds ff_lb_calc %= #lb_sixty ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_centis ff_lb_calc = $stats_parkour_best ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_centis ff_lb_calc %= #100 ff_parkour_math
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_min_tens ff_lb_calc = $stats_parkour_minutes ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_min_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_min_ones ff_lb_calc = $stats_parkour_minutes ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_min_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_sec_tens ff_lb_calc = $stats_parkour_seconds ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_sec_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_sec_ones ff_lb_calc = $stats_parkour_seconds ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_sec_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_centi_tens ff_lb_calc = $stats_parkour_centis ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_centi_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_centi_ones ff_lb_calc = $stats_parkour_centis ff_lb_calc
execute if score @s ff_parkour_best matches 1.. run scoreboard players operation $stats_parkour_centi_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_seconds ff_lb_calc = $stats_temple_run_best ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_seconds ff_lb_calc /= #100 ff_temple_run_math
execute if score @s ff_temple_run_best matches 1.. if score $stats_temple_run_minutes ff_lb_calc matches 1.. run scoreboard players operation $stats_temple_run_seconds ff_lb_calc %= #lb_sixty ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_centis ff_lb_calc = $stats_temple_run_best ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_centis ff_lb_calc %= #100 ff_temple_run_math
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_min_tens ff_lb_calc = $stats_temple_run_minutes ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_min_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_min_ones ff_lb_calc = $stats_temple_run_minutes ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_min_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_sec_tens ff_lb_calc = $stats_temple_run_seconds ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_sec_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_sec_ones ff_lb_calc = $stats_temple_run_seconds ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_sec_ones ff_lb_calc %= #lb_ten ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_centi_tens ff_lb_calc = $stats_temple_run_centis ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_centi_tens ff_lb_calc /= #lb_ten ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_centi_ones ff_lb_calc = $stats_temple_run_centis ff_lb_calc
execute if score @s ff_temple_run_best matches 1.. run scoreboard players operation $stats_temple_run_centi_ones ff_lb_calc %= #lb_ten ff_lb_calc
tellraw @s {"text":"========== Your Stats ==========","color":"gold"}
execute if score @s ff_top_time matches 1.. run tellraw @s [{"text":"Top Time: ","color":"yellow"},{"score":{"name":"$stats_min_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_min_ones","objective":"ff_lb_calc"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"$stats_sec_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_sec_ones","objective":"ff_lb_calc"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"$stats_centi_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_centi_ones","objective":"ff_lb_calc"},"color":"white"}]
execute unless score @s ff_top_time matches 1.. run tellraw @s [{"text":"Top Time: ","color":"yellow"},{"text":"--:--.--","color":"gray"}]
execute if score @s ff_top_day matches 1.. run tellraw @s [{"text":"Top Day: ","color":"yellow"},{"score":{"name":"$stats_top_day","objective":"ff_lb_calc"},"color":"white"}]
execute unless score @s ff_top_day matches 1.. run tellraw @s [{"text":"Top Day: ","color":"yellow"},{"text":"--","color":"gray"}]
tellraw @s [{"text":"Total Runs: ","color":"yellow"},{"score":{"name":"$stats_run_total","objective":"ff_lb_calc"},"color":"white"}]
execute if score @s ff_duo_best matches 1.. run tellraw @s [{"text":"Duo's Best Time: ","color":"yellow"},{"score":{"name":"$stats_duo_min_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_duo_min_ones","objective":"ff_lb_calc"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"$stats_duo_sec_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_duo_sec_ones","objective":"ff_lb_calc"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"$stats_duo_centi_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_duo_centi_ones","objective":"ff_lb_calc"},"color":"white"}]
execute unless score @s ff_duo_best matches 1.. run tellraw @s [{"text":"Duo's Best Time: ","color":"yellow"},{"text":"--:--.--","color":"gray"}]
tellraw @s {"text":"-------------------------------","color":"gold"}
execute if score @s ff_parkour_best matches 1.. if score $stats_parkour_minutes ff_lb_calc matches 1.. run tellraw @s [{"text":"Parkour: ","color":"yellow"},{"score":{"name":"$stats_parkour_min_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_parkour_min_ones","objective":"ff_lb_calc"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"$stats_parkour_sec_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_parkour_sec_ones","objective":"ff_lb_calc"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"$stats_parkour_centi_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_parkour_centi_ones","objective":"ff_lb_calc"},"color":"white"},{"text":"s","color":"white"}]
execute if score @s ff_parkour_best matches 1.. unless score $stats_parkour_minutes ff_lb_calc matches 1.. run tellraw @s [{"text":"Parkour: ","color":"yellow"},{"score":{"name":"$stats_parkour_seconds","objective":"ff_lb_calc"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"$stats_parkour_centi_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_parkour_centi_ones","objective":"ff_lb_calc"},"color":"white"},{"text":"s","color":"white"}]
execute unless score @s ff_parkour_best matches 1.. run tellraw @s [{"text":"Parkour: ","color":"yellow"},{"text":"--.--s","color":"gray"}]
execute if score @s ff_temple_run_best matches 1.. if score $stats_temple_run_minutes ff_lb_calc matches 1.. run tellraw @s [{"text":"Temple Run: ","color":"yellow"},{"score":{"name":"$stats_temple_run_min_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_temple_run_min_ones","objective":"ff_lb_calc"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"$stats_temple_run_sec_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_temple_run_sec_ones","objective":"ff_lb_calc"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"$stats_temple_run_centi_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_temple_run_centi_ones","objective":"ff_lb_calc"},"color":"white"},{"text":"s","color":"white"}]
execute if score @s ff_temple_run_best matches 1.. unless score $stats_temple_run_minutes ff_lb_calc matches 1.. run tellraw @s [{"text":"Temple Run: ","color":"yellow"},{"score":{"name":"$stats_temple_run_seconds","objective":"ff_lb_calc"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"$stats_temple_run_centi_tens","objective":"ff_lb_calc"},"color":"white"},{"score":{"name":"$stats_temple_run_centi_ones","objective":"ff_lb_calc"},"color":"white"},{"text":"s","color":"white"}]
execute unless score @s ff_temple_run_best matches 1.. run tellraw @s [{"text":"Temple Run: ","color":"yellow"},{"text":"--.--s","color":"gray"}]
tellraw @s [{"text":"Ant Score: ","color":"yellow"},{"score":{"name":"$stats_ant_score","objective":"ff_lb_calc"},"color":"white"}]
tellraw @s [{"text":"Ant Top Score: ","color":"yellow"},{"score":{"name":"$stats_ant_top_score","objective":"ff_lb_calc"},"color":"white"}]
