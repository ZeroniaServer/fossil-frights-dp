execute store result score #hazard_pick ff_hazard_rng run random value 1..2
execute if score #hazard_pick ff_hazard_rng matches 1 run function fossil_frights:hazard/lava/apply_magma with storage fossil_frights:hazard_lava
