execute if score $heist_basement_lava_lock ff_heist matches 1.. run return 0
execute if score #lava_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute if score lava ff_hazard_active matches 0 run function fossil_frights:hazard/lava/manual_start
execute if score lava ff_hazard_active matches 1 run function fossil_frights:hazard/lava/manual_stop
