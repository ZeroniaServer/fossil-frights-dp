# On
execute if score $alarm_effects_on ff_heist matches 1 run time of fossil_frights:alarm resume
execute if score $alarm_effects_on ff_heist matches 1 run return run schedule function fossil_frights:game/heists/alarm_effects/tick 1t

# Turning off (wait for fade out)
execute unless predicate {type:"minecraft:time_check",clock:"fossil_frights:alarm",value:0,period:40} run return run schedule function fossil_frights:game/heists/alarm_effects/tick 1t
time of fossil_frights:alarm pause
