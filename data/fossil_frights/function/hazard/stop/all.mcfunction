# Force every hazard inactive first so reset logic is consistent after reloads.
scoreboard players set lights ff_hazard_active 0
scoreboard players set lava ff_hazard_active 0
scoreboard players set floods ff_hazard_active 0
scoreboard players set security ff_hazard_active 0
scoreboard players set curse ff_hazard_active 0

# Run the raw stop logic for every hazard even if it was not marked active.
function fossil_frights:hazard/lights/stop
function fossil_frights:hazard/lava/stop
function fossil_frights:hazard/floods/stop
function fossil_frights:hazard/security/stop
function fossil_frights:hazard/curse/stop
function fossil_frights:bossbar/update_hazards
