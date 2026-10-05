execute if score security ff_hazard_active matches 0 run return 0

scoreboard players set security ff_hazard_active 0
function fossil_frights:run_breakdown/event/add {code:"H",id:"40"}

function fossil_frights:hazard/security/stop
function fossil_frights:game/bossbar/update_hazards

function fossil_frights:game/heists/alarm_effects/stop
