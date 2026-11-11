kill @e[type=minecraft:armor_stand,tag=ff_hazard_compass_target]

# direct resets
function fossil_frights:interactions/glowberry_vine/reset
tag @e[type=minecraft:item_display,tag=ff_security_gate] add ff_security_gate.silent

scoreboard players set $security ff_hazard_active 0
function fossil_frights:hazard/security/stop
function fossil_frights:hallucination/reset
function fossil_frights:game/bossbar/update_hazards
