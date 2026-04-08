scoreboard players operation $parkour_best_sec ff_parkour_display = $parkour_best_time ff_parkour_display
scoreboard players operation $parkour_best_sec ff_parkour_display /= #100 ff_parkour_math
scoreboard players operation $parkour_best_centi ff_parkour_display = $parkour_best_time ff_parkour_display
scoreboard players operation $parkour_best_centi ff_parkour_display %= #100 ff_parkour_math
scoreboard players operation $parkour_best_centi_tens ff_parkour_display = $parkour_best_centi ff_parkour_display
scoreboard players operation $parkour_best_centi_tens ff_parkour_display /= #10 ff_parkour_math
scoreboard players operation $parkour_best_centi_ones ff_parkour_display = $parkour_best_centi ff_parkour_display
scoreboard players operation $parkour_best_centi_ones ff_parkour_display %= #10 ff_parkour_math

