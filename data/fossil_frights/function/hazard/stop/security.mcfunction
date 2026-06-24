execute if score security ff_hazard_active matches 0 run return 0

scoreboard players set security ff_hazard_active 0

function fossil_frights:hazard/security/stop
function fossil_frights:game/bossbar/update_hazards

# Disables heists alarm shader effect (see fossil_frights:game/heists/loot/alarm_effects
execute as @a at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.9921568627450981, 0.0, 0.984313725490196]}