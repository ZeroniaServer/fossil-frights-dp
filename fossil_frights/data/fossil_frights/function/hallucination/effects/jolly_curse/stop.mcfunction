execute if score $h_jolly_curse ff_hallucination matches 0 run return 0
scoreboard players set $h_jolly_curse ff_hallucination 0
scoreboard players remove #h_active_count ff_hallucination 1
function fossil_frights:hallucination/effects/jolly_curse/cleanup
function fossil_frights:game/bossbar/update_hazards
