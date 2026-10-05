# On
execute if score $alarm_effects_on ff_heist matches 1 run function fossil_frights:game/heists/alarm_effects/red_alert_add with storage fossil_frights:red_alert
execute if score $alarm_effects_on ff_heist matches 1 run return run schedule function fossil_frights:game/heists/alarm_effects/tick 1t

# Turning off (wait for fade out)
execute unless predicate {type:"minecraft:int_value_check",value:{type:"minecraft:mod",left:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#gametime"},score:"ff_global"},right:40},test:{type:"minecraft:storage",storage:"fossil_frights:red_alert",path:"period_offset"}} run return run schedule function fossil_frights:game/heists/alarm_effects/tick 1t
function fossil_frights:game/heists/alarm_effects/red_alert_remove with storage fossil_frights:red_alert
