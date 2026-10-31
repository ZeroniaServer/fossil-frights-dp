execute if score $heist_basement_lava_lock ff_heist matches 1.. run return 0
execute unless predicate fossil_frights:game_state/hazard_active/lava run return 0

scoreboard players set $lava ff_hazard_active 0
function fossil_frights:run_breakdown/event/add {code:"H",id:"20"}
function fossil_frights:hazard/lava/map/update
# setblock -1 71 15 minecraft:coal_block

function fossil_frights:hazard/lava/stop
function fossil_frights:game/bossbar/update_hazards
