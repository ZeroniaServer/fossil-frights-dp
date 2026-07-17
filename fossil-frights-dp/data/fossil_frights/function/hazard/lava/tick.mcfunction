execute if score #lava_manual_cooldown ff_hazard_rng matches 1.. run scoreboard players remove #lava_manual_cooldown ff_hazard_rng 1
execute if score lava ff_hazard_active matches 0 if score #lava_manual_cooldown ff_hazard_rng matches ..0 if block -3 71 15 minecraft:acacia_button[powered=true] run return run function fossil_frights:hazard/lava/manual_start
execute if score lava ff_hazard_active matches 1 if score #lava_manual_cooldown ff_hazard_rng matches ..0 if block -3 71 15 minecraft:acacia_button[powered=true] run function fossil_frights:hazard/lava/manual_stop
execute if score #lava_anim_phase ff_hazard_rng matches 1.. run scoreboard players remove #lava_anim_timer ff_hazard_rng 1
execute if score #lava_anim_phase ff_hazard_rng matches 1.. if score #lava_anim_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/lava/advance_phase
