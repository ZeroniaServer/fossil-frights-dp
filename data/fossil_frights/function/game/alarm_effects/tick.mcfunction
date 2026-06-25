execute if score $alarm_effects_on ff_heist matches 0 if predicate {condition:"minecraft:time_check",clock:"fossil_frights:alarm",value:0,period:40} run time of fossil_frights:alarm pause
execute if score $alarm_effects_on ff_heist matches 1 run time of fossil_frights:alarm resume
