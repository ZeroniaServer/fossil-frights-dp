execute if score lights ff_hazard_active matches 0 run return 0

scoreboard players set lights ff_hazard_active 0
function fossil_frights:run_breakdown/event/add {code:"H",id:"10"}
function fossil_frights:hazard/lights/update_camera_computer
scoreboard players set #lights_stop_phase ff_hazard_rng 0
scoreboard players set #lights_start_phase ff_hazard_rng 0

function fossil_frights:hazard/lights/stop
function fossil_frights:game/bossbar/update_hazards
