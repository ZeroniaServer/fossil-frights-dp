execute if score #lava_anim_phase ff_hazard_rng matches 1 run function fossil_frights:hazard/lava/pass_start_2
execute if score #lava_anim_phase ff_hazard_rng matches 2 run function fossil_frights:hazard/lava/pass_start_3
execute if score #lava_anim_phase ff_hazard_rng matches 3 run function fossil_frights:hazard/lava/pass_start_4
execute if score #lava_anim_phase ff_hazard_rng matches 4 run scoreboard players set #lava_anim_phase ff_hazard_rng 0
