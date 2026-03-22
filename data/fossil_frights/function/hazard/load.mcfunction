# Hazard registry.
# Add one scoreboard reset line here for each new hazard.

scoreboard players set lights ff_hazard_active 0
scoreboard players set lava ff_hazard_active 0
scoreboard players set floods ff_hazard_active 0
scoreboard players set security ff_hazard_active 0
scoreboard players set curse ff_hazard_active 0
scoreboard players set #hazard_count ff_hazard_rng 5
function fossil_frights:hazard/curse/summon_toggle
function fossil_frights:hazard/curse/set_indicator_safe
