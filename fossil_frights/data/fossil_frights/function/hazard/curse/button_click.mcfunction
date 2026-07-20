execute if score #curse_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute if score curse ff_hazard_active matches 0 run function fossil_frights:hazard/curse/manual_start
execute if score curse ff_hazard_active matches 1 run function fossil_frights:hazard/curse/manual_stop
