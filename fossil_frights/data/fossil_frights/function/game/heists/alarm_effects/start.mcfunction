execute if score $alarm_effects_on ff_heist matches 1 run return 0

function fossil_frights:game/heists/alarm_effects/red_alert_remove with storage fossil_frights:red_alert
data modify storage fossil_frights:red_alert period_offset set compute default integer {type:"minecraft:mod",left:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#gametime"},score:"ff_global"},right:40}

scoreboard players set $alarm_effects_on ff_heist 1
function fossil_frights:game/heists/alarm_effects/tick
