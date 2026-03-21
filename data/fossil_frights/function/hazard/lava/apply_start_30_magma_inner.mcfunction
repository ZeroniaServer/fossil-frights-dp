execute store result score #hazard_pick ff_hazard_rng run random value 1..10
execute if score #hazard_pick ff_hazard_rng matches 1..3 run function fossil_frights:hazard/lava/apply_magma with storage fossil_frights:hazard_lava
