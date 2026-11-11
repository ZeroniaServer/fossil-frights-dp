# No eligible hazards remain when security and lava are excluded.
scoreboard players set #hazard_available ff_hazard_rng 0
scoreboard players set #hazard_cursor ff_hazard_rng 0
scoreboard players set #hazard_done ff_hazard_rng 0
scoreboard players set #hazard_pick ff_hazard_rng 0


execute if score #hazard_available ff_hazard_rng matches 0 run return 0
execute if score #hazard_available ff_hazard_rng matches 1 run scoreboard players set #hazard_pick ff_hazard_rng 1



scoreboard players set #hazard_done ff_hazard_rng 1
