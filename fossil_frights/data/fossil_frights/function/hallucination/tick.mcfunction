scoreboard players set #h_entered_zero ff_hallucination 0
execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_active_count ff_hallucination matches 1.. run function fossil_frights:hallucination/clear
execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_was_zero ff_hallucination matches 1 run function fossil_frights:hallucination/clear
execute if score #dinonog_bar ff_dinonog matches 1.. run return 0
posteffect remove @a[predicate=fossil_frights:player/team/guard,tag=!ff_forced_spectate] fossil_frights:radial_blur/deactivate
posteffect add @a[predicate=fossil_frights:player/team/guard,tag=!ff_forced_spectate] fossil_frights:radial_blur/activate
execute store success score #h_entered_zero ff_hallucination unless score #h_was_zero ff_hallucination matches 1 run scoreboard players set #h_was_zero ff_hallucination 1
execute if score #h_entered_zero ff_hallucination matches 1 unless entity @a[tag=ff_dinonog_onboarded] as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:player/actionbar/show/fallback_instruction/drink_dinonog
execute if score #h_entered_zero ff_hallucination matches 1 run function fossil_frights:hallucination/add_random
execute if score #h_entered_zero ff_hallucination matches 1 run scoreboard players set #h_timer ff_hallucination 0
execute if score #h_entered_zero ff_hallucination matches 1 run return 0
scoreboard players add #h_timer ff_hallucination 1
execute if score #h_timer ff_hallucination matches 600.. run scoreboard players set #h_timer ff_hallucination 0