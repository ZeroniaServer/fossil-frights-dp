execute unless predicate fossil_frights:game_state/hallucination_active/jolly_curse run return 0


# State 0 waits 4 seconds between flicker bursts.
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_state ff_hazard_rng matches 0 run scoreboard players remove #jolly_curse_timer ff_hazard_rng 1
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_state ff_hazard_rng matches 0 if score #jolly_curse_timer ff_hazard_rng matches ..0 run function fossil_frights:hallucination/effects/jolly_curse/cycle

# Player debuff every 5s while active.
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse run scoreboard players remove #jolly_curse_effect_timer ff_hazard_rng 1
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_effect_timer ff_hazard_rng matches ..0 run function fossil_frights:hallucination/effects/jolly_curse/effect_roll

# State 1: dark for 5–10 ticks.
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_state ff_hazard_rng matches 1 run scoreboard players remove #jolly_curse_restore_timer ff_hazard_rng 1
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_state ff_hazard_rng matches 1 if score #jolly_curse_restore_timer ff_hazard_rng matches ..0 run function fossil_frights:hallucination/effects/jolly_curse/advance_off

# State 2: gap for 2–5 ticks.
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_state ff_hazard_rng matches 2 run scoreboard players remove #jolly_curse_second_timer ff_hazard_rng 1
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse if score #jolly_curse_state ff_hazard_rng matches 2 if score #jolly_curse_second_timer ff_hazard_rng matches ..0 run function fossil_frights:hallucination/effects/jolly_curse/resume_flicker
