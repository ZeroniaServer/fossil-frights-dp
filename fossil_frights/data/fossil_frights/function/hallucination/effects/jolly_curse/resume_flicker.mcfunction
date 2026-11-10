function fossil_frights:hallucination/effects/jolly_curse/apply_selected
execute store result score #jolly_curse_restore_timer ff_hazard_rng run random value 3..7
scoreboard players set #jolly_curse_state ff_hazard_rng 1
