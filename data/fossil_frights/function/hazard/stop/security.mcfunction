execute if score security ff_hazard_active matches 0 run return 0

scoreboard players set security ff_hazard_active 0

function fossil_frights:hazard/security/stop
function fossil_frights:game/bossbar/update_hazards

scoreboard players set $alarm_effects_on ff_heist 0
