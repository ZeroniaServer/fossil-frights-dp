execute if score floods ff_hazard_active matches 0 run return 0

scoreboard players set floods ff_hazard_active 0
scoreboard players set #floods_turns ff_hazard_rng 0
scoreboard players set #floods_turn_on ff_hazard_rng 0
scoreboard players set #floods_valve_cooldown ff_hazard_rng 40

function fossil_frights:hazard/floods/stop
function fossil_frights:bossbar/update_hazards
