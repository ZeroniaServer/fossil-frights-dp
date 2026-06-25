# A high-value loot was just stolen: blare the alarm and slam the security gates.
scoreboard players set $alarm_effects_on ff_heist 1
function fossil_frights:hazard/start/security
scoreboard players set $security_by_loot ff_heist 1
