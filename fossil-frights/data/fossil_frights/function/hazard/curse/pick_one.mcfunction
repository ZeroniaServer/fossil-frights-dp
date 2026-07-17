execute store result score #curse_pick ff_hazard_rng run random value 1..7
scoreboard players set #curse_pick_found ff_hazard_rng 0

execute if score #curse_pick ff_hazard_rng matches 1 unless score #curse_sel_1 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 2 unless score #curse_sel_2 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 3 unless score #curse_sel_3 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 4 unless score #curse_sel_4 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 5 unless score #curse_sel_5 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 6 unless score #curse_sel_6 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 7 unless score #curse_sel_7 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1

execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_1 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_1 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_2 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 2
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_2 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_3 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 3
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_3 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_4 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 4
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_4 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_5 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 5
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_5 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_6 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 6
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_6 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_7 ff_hazard_rng matches 1 run scoreboard players set #curse_pick ff_hazard_rng 7
execute unless score #curse_pick_found ff_hazard_rng matches 1 unless score #curse_sel_7 ff_hazard_rng matches 1 run scoreboard players set #curse_pick_found ff_hazard_rng 1

execute if score #curse_pick ff_hazard_rng matches 1 run scoreboard players set #curse_sel_1 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 2 run scoreboard players set #curse_sel_2 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 3 run scoreboard players set #curse_sel_3 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 4 run scoreboard players set #curse_sel_4 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 5 run scoreboard players set #curse_sel_5 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 6 run scoreboard players set #curse_sel_6 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 7 run scoreboard players set #curse_sel_7 ff_hazard_rng 1
