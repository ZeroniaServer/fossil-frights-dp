scoreboard players set #hazard_available ff_hazard_rng 0
scoreboard players set #hazard_cursor ff_hazard_rng 0
scoreboard players set #hazard_done ff_hazard_rng 0
scoreboard players set #hazard_pick ff_hazard_rng 0

execute unless predicate fossil_frights:game_state/hazard_active/lights run scoreboard players add #hazard_available ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/lava run scoreboard players add #hazard_available ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/floods run scoreboard players add #hazard_available ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/security run scoreboard players add #hazard_available ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/curse run scoreboard players add #hazard_available ff_hazard_rng 1

execute if score #hazard_available ff_hazard_rng matches 0 run return 0
execute if score #hazard_available ff_hazard_rng matches 1 run scoreboard players set #hazard_pick ff_hazard_rng 1
execute if score #hazard_available ff_hazard_rng matches 2 store result score #hazard_pick ff_hazard_rng run random value 1..2
execute if score #hazard_available ff_hazard_rng matches 3 store result score #hazard_pick ff_hazard_rng run random value 1..3
execute if score #hazard_available ff_hazard_rng matches 4 store result score #hazard_pick ff_hazard_rng run random value 1..4
execute if score #hazard_available ff_hazard_rng matches 5 store result score #hazard_pick ff_hazard_rng run random value 1..5

execute unless predicate fossil_frights:game_state/hazard_active/lights run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/lights if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_lights

execute unless predicate fossil_frights:game_state/hazard_active/lava run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/lava if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_lava

execute unless predicate fossil_frights:game_state/hazard_active/floods run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/floods if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_floods

execute unless predicate fossil_frights:game_state/hazard_active/security run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/security if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_security

execute unless predicate fossil_frights:game_state/hazard_active/curse run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute unless predicate fossil_frights:game_state/hazard_active/curse if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_curse
