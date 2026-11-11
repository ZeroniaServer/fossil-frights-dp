scoreboard players set #hazard_available ff_hazard_rng 0
scoreboard players set #hazard_cursor ff_hazard_rng 0
scoreboard players set #hazard_done ff_hazard_rng 0
scoreboard players set #hazard_pick ff_hazard_rng 0

execute unless predicate fossil_frights:game_state/hazard_active/lava run scoreboard players add #hazard_available ff_hazard_rng 1

execute if score #hazard_available ff_hazard_rng matches 0 run return 0
execute if score #hazard_available ff_hazard_rng matches 1 run scoreboard players set #hazard_pick ff_hazard_rng 1


execute unless predicate fossil_frights:game_state/hazard_active/lava run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/lava if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_lava
