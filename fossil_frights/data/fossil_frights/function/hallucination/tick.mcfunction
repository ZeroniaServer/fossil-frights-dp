scoreboard players set #h_entered_zero ff_hallucination 0
execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_active_count ff_hallucination matches 1.. run function fossil_frights:hallucination/clear
execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_was_zero ff_hallucination matches 1 run function fossil_frights:hallucination/clear
execute if score #dinonog_bar ff_dinonog matches 1.. run return 0
execute store success score #h_entered_zero ff_hallucination unless score #h_was_zero ff_hallucination matches 1 run scoreboard players set #h_was_zero ff_hallucination 1
execute if score #h_entered_zero ff_hallucination matches 1 run function fossil_frights:hallucination/add_random
execute if score #h_entered_zero ff_hallucination matches 1 run scoreboard players set #h_timer ff_hallucination 0
execute if score #h_entered_zero ff_hallucination matches 1 run return 0
scoreboard players add #h_timer ff_hallucination 1
execute if score #h_timer ff_hallucination matches 600.. run function fossil_frights:hallucination/add_random
execute if score #h_timer ff_hallucination matches 600.. run scoreboard players set #h_timer ff_hallucination 0
