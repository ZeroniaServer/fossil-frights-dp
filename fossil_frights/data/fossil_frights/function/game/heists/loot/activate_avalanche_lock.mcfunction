scoreboard players set $heist_avalanche_lock ff_heist 1
execute unless score $h_avalanche ff_hallucination matches 1 run function fossil_frights:hallucination/effects/avalanche/start
function fossil_frights:game/bossbar/update_hazards
