execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_1 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_1_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_2 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_2_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_3 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_3_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_4 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_4_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_5 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_5_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_6 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_6_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_7 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_7_off
execute unless predicate fossil_frights:game_state/hallucination_active/darkness run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.7 0.8

execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_1 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_1_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_2 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_2_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_3 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_3_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_4 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_4_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_5 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_5_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_6 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_6_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness if score #jolly_curse_sel_7 ff_hazard_rng matches 1 run function fossil_frights:hallucination/effects/jolly_curse/area_7_on
execute if predicate fossil_frights:game_state/hallucination_active/darkness run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.7 1.15
