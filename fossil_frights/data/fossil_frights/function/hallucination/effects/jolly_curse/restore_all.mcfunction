execute if score #jolly_curse_sel_1 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 1..7 run function fossil_frights:hallucination/effects/jolly_curse/area_1_on
execute if score #jolly_curse_sel_1 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..0 run function fossil_frights:hallucination/effects/jolly_curse/area_1_off
execute if score #jolly_curse_sel_1 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_1_on
execute if score #jolly_curse_sel_2 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 2..7 run function fossil_frights:hallucination/effects/jolly_curse/area_2_on
execute if score #jolly_curse_sel_2 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..1 run function fossil_frights:hallucination/effects/jolly_curse/area_2_off
execute if score #jolly_curse_sel_2 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_2_on
execute if score #jolly_curse_sel_3 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 3..7 run function fossil_frights:hallucination/effects/jolly_curse/area_3_on
execute if score #jolly_curse_sel_3 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..2 run function fossil_frights:hallucination/effects/jolly_curse/area_3_off
execute if score #jolly_curse_sel_3 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_3_on
execute if score #jolly_curse_sel_4 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 4..7 run function fossil_frights:hallucination/effects/jolly_curse/area_4_on
execute if score #jolly_curse_sel_4 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..3 run function fossil_frights:hallucination/effects/jolly_curse/area_4_off
execute if score #jolly_curse_sel_4 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_4_on
execute if score #jolly_curse_sel_5 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 5..7 run function fossil_frights:hallucination/effects/jolly_curse/area_5_on
execute if score #jolly_curse_sel_5 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..4 run function fossil_frights:hallucination/effects/jolly_curse/area_5_off
execute if score #jolly_curse_sel_5 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_5_on
execute if score #jolly_curse_sel_6 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 6..7 run function fossil_frights:hallucination/effects/jolly_curse/area_6_on
execute if score #jolly_curse_sel_6 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..5 run function fossil_frights:hallucination/effects/jolly_curse/area_6_off
execute if score #jolly_curse_sel_6 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_6_on
execute if score #jolly_curse_sel_7 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches 7..7 run function fossil_frights:hallucination/effects/jolly_curse/area_7_on
execute if score #jolly_curse_sel_7 ff_hazard_rng matches 1 if score #darkness_waves_restored ff_hallucination matches ..6 run function fossil_frights:hallucination/effects/jolly_curse/area_7_off
execute if score #jolly_curse_sel_7 ff_hazard_rng matches 1 unless predicate fossil_frights:game_state/hallucination_active/darkness run function fossil_frights:hallucination/effects/jolly_curse/area_7_on
