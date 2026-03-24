scoreboard players set #x ff_hazard_rng -25
scoreboard players add #y ff_hazard_rng 1
scoreboard players add #y_below ff_hazard_rng 1
execute if score #y ff_hazard_rng matches ..69 run function fossil_frights:hazard/lava/scan
