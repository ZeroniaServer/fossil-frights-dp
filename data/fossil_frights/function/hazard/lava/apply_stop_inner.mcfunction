execute store result score #hazard_pick ff_hazard_rng run random value 1..2
execute if score #hazard_pick ff_hazard_rng matches 1 run function fossil_frights:hazard/lava/apply_stone with storage fossil_frights:hazard_lava
execute if score #hazard_pick ff_hazard_rng matches 2 run function fossil_frights:hazard/lava/apply_andesite with storage fossil_frights:hazard_lava
