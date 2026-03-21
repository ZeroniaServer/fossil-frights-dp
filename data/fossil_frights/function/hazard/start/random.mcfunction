scoreboard players set #hazard_available ff_hazard_rng 0
scoreboard players set #hazard_cursor ff_hazard_rng 0
scoreboard players set #hazard_done ff_hazard_rng 0

execute if score lights ff_hazard_active matches 0 run scoreboard players add #hazard_available ff_hazard_rng 1
execute if score lava ff_hazard_active matches 0 run scoreboard players add #hazard_available ff_hazard_rng 1
execute if score floods ff_hazard_active matches 0 run scoreboard players add #hazard_available ff_hazard_rng 1
execute if score security ff_hazard_active matches 0 run scoreboard players add #hazard_available ff_hazard_rng 1
execute if score curse ff_hazard_active matches 0 run scoreboard players add #hazard_available ff_hazard_rng 1

execute if score #hazard_available ff_hazard_rng matches 1 store result score #hazard_pick ff_hazard_rng run random value 1..1
execute if score #hazard_available ff_hazard_rng matches 2 store result score #hazard_pick ff_hazard_rng run random value 1..2
execute if score #hazard_available ff_hazard_rng matches 3 store result score #hazard_pick ff_hazard_rng run random value 1..3
execute if score #hazard_available ff_hazard_rng matches 4 store result score #hazard_pick ff_hazard_rng run random value 1..4
execute if score #hazard_available ff_hazard_rng matches 5 store result score #hazard_pick ff_hazard_rng run random value 1..5

execute if score lights ff_hazard_active matches 0 run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute if score lights ff_hazard_active matches 0 if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_lights

execute if score lava ff_hazard_active matches 0 run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute if score lava ff_hazard_active matches 0 if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_lava

execute if score floods ff_hazard_active matches 0 run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute if score floods ff_hazard_active matches 0 if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_floods

execute if score security ff_hazard_active matches 0 run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute if score security ff_hazard_active matches 0 if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_security

execute if score curse ff_hazard_active matches 0 run scoreboard players add #hazard_cursor ff_hazard_rng 1
execute if score curse ff_hazard_active matches 0 if score #hazard_cursor ff_hazard_rng = #hazard_pick ff_hazard_rng if score #hazard_done ff_hazard_rng matches 0 run function fossil_frights:hazard/start/select_curse
