scoreboard players set lights ff_hazard_active 0
scoreboard players set lava ff_hazard_active 0
scoreboard players set floods ff_hazard_active 0
scoreboard players set security ff_hazard_active 0
scoreboard players set curse ff_hazard_active 0
execute if score $heist_basement_lava_lock ff_heist matches 1.. run scoreboard players set lava ff_hazard_active 1
function fossil_frights:hazard/lava/map/update

function fossil_frights:hazard/lights/stop
function fossil_frights:hazard/lava/stop
function fossil_frights:hazard/floods/stop
function fossil_frights:hazard/security/stop
function fossil_frights:hazard/curse/stop
function fossil_frights:game/bossbar/update_hazards
