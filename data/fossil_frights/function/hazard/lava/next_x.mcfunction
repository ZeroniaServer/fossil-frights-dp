scoreboard players set #z ff_hazard_rng 8
scoreboard players add #x ff_hazard_rng 1
execute if score #x ff_hazard_rng matches 6.. run function fossil_frights:hazard/lava/next_y
execute if score #x ff_hazard_rng matches ..5 run function fossil_frights:hazard/lava/scan
