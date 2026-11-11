kill @e[type=minecraft:armor_stand,tag=ff_hazard_compass_target]

# direct resets
function fossil_frights:interactions/glowberry_vine/reset
tag @e[type=minecraft:item_display,tag=ff_security_gate] add ff_security_gate.silent

function fossil_frights:hazard/stop/security
function fossil_frights:game/bossbar/update_hazards
function fossil_frights:hallucination/clear
