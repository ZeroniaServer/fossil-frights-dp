execute store result score #curse_pick ff_hazard_rng run random value 1..7
execute if score #curse_pick ff_hazard_rng matches 1 if score #curse_sel_1 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one
execute if score #curse_pick ff_hazard_rng matches 2 if score #curse_sel_2 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one
execute if score #curse_pick ff_hazard_rng matches 3 if score #curse_sel_3 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one
execute if score #curse_pick ff_hazard_rng matches 4 if score #curse_sel_4 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one
execute if score #curse_pick ff_hazard_rng matches 5 if score #curse_sel_5 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one
execute if score #curse_pick ff_hazard_rng matches 6 if score #curse_sel_6 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one
execute if score #curse_pick ff_hazard_rng matches 7 if score #curse_sel_7 ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/pick_one

execute if score #curse_pick ff_hazard_rng matches 1 run scoreboard players set #curse_sel_1 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 2 run scoreboard players set #curse_sel_2 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 3 run scoreboard players set #curse_sel_3 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 4 run scoreboard players set #curse_sel_4 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 5 run scoreboard players set #curse_sel_5 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 6 run scoreboard players set #curse_sel_6 ff_hazard_rng 1
execute if score #curse_pick ff_hazard_rng matches 7 run scoreboard players set #curse_sel_7 ff_hazard_rng 1
