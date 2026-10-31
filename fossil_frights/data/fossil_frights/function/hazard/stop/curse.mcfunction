execute unless predicate fossil_frights:game_state/hazard_active/curse run return 0

scoreboard players set $curse ff_hazard_active 0
function fossil_frights:run_breakdown/event/add {code:"H",id:"50"}
function fossil_frights:hazard/curse/update_forcefield

function fossil_frights:hazard/curse/stop
function fossil_frights:game/bossbar/update_hazards
