execute store result storage fossil_frights:hazard_lava x int 1 run scoreboard players get #x ff_hazard_rng
execute store result storage fossil_frights:hazard_lava y int 1 run scoreboard players get #y ff_hazard_rng
execute store result storage fossil_frights:hazard_lava y_below int 1 run scoreboard players get #y_below ff_hazard_rng
execute store result storage fossil_frights:hazard_lava z int 1 run scoreboard players get #z ff_hazard_rng

execute if score #lava_mode ff_hazard_rng matches 1 if score #lava_phase ff_hazard_rng matches 1 run function fossil_frights:hazard/lava/apply_start_30_magma with storage fossil_frights:hazard_lava
execute if score #lava_mode ff_hazard_rng matches 1 if score #lava_phase ff_hazard_rng matches 2 run function fossil_frights:hazard/lava/apply_start_50_magma with storage fossil_frights:hazard_lava
execute if score #lava_mode ff_hazard_rng matches 1 if score #lava_phase ff_hazard_rng matches 3 run function fossil_frights:hazard/lava/apply_start_50_lava with storage fossil_frights:hazard_lava
execute if score #lava_mode ff_hazard_rng matches 1 if score #lava_phase ff_hazard_rng matches 4 run function fossil_frights:hazard/lava/apply_final with storage fossil_frights:hazard_lava
execute if score #lava_mode ff_hazard_rng matches 0 run function fossil_frights:hazard/lava/apply_stop with storage fossil_frights:hazard_lava

scoreboard players add #z ff_hazard_rng 1
execute if score #z ff_hazard_rng matches 60.. run function fossil_frights:hazard/lava/next_x
execute if score #z ff_hazard_rng matches ..59 run function fossil_frights:hazard/lava/scan
