execute if score $alarm_effects_on ff_heist matches 0 run return 0

scoreboard players set $alarm_effects_on ff_heist 0
function fossil_frights:game/heists/alarm_effects/tick
