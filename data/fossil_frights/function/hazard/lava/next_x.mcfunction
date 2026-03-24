scoreboard players set #z ff_hazard_rng 18
scoreboard players add #x ff_hazard_rng 1
execute if score #x ff_hazard_rng matches 4.. run function fossil_frights:hazard/lava/next_y
execute if score #x ff_hazard_rng matches ..3 run function fossil_frights:hazard/lava/scan
