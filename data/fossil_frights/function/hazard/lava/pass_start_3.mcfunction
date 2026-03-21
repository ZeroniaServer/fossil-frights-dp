scoreboard players set #x ff_hazard_rng -28
scoreboard players set #y ff_hazard_rng 69
scoreboard players set #y_below ff_hazard_rng 68
scoreboard players set #z ff_hazard_rng 8
scoreboard players set #lava_mode ff_hazard_rng 1
scoreboard players set #lava_phase ff_hazard_rng 3
scoreboard players set #lava_anim_phase ff_hazard_rng 3
scoreboard players set #lava_anim_timer ff_hazard_rng 10
playsound minecraft:block.lava.pop master @a ~ ~ ~ 1.0 1.1
function fossil_frights:hazard/lava/scan
