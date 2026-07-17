scoreboard players remove #floods_valve_rotation ff_hazard_rng 1
execute if score #floods_valve_rotation ff_hazard_rng matches ..-1 run scoreboard players set #floods_valve_rotation ff_hazard_rng 7
function fossil_frights:hazard/floods/apply_valve_rotation
