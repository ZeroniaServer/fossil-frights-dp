execute if score lights ff_hazard_active matches 1 run return 0

scoreboard players set lights ff_hazard_active 1
function fossil_frights:advancements/checks/hazardous
scoreboard players set #lights_start_phase ff_hazard_rng 0
scoreboard players set #lights_stop_phase ff_hazard_rng 0

function fossil_frights:hazard/lights/start
