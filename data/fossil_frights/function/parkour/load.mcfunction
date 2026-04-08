scoreboard objectives add ff_parkour_time dummy
scoreboard objectives add ff_parkour_best dummy
scoreboard objectives add ff_parkour_running dummy
scoreboard objectives add ff_parkour_restart_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ff_parkour_restart_seen dummy
scoreboard objectives add ff_parkour_sec dummy
scoreboard objectives add ff_parkour_centi dummy
scoreboard objectives add ff_parkour_centi_tens dummy
scoreboard objectives add ff_parkour_centi_ones dummy
scoreboard objectives add ff_parkour_display dummy
scoreboard objectives add ff_parkour_math dummy
scoreboard players set #10 ff_parkour_math 10
scoreboard players set #100 ff_parkour_math 100
scoreboard players add $parkour_best_exists ff_parkour_display 0
scoreboard players add $parkour_best_time ff_parkour_display 0
scoreboard players add $parkour_best_sec ff_parkour_display 0
scoreboard players add $parkour_best_centi ff_parkour_display 0
scoreboard players add $parkour_best_centi_tens ff_parkour_display 0
scoreboard players add $parkour_best_centi_ones ff_parkour_display 0
setblock -18 75 -21 minecraft:light_weighted_pressure_plate
setblock -36 95 -43 minecraft:light_weighted_pressure_plate
function fossil_frights:parkour/display/rebuild
