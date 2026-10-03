execute store result storage fossil_frights:red_alert gametime int 1 run time query gametime
data modify storage fossil_frights:red_alert gametime set compute default integer {type:"mod",left:{type:"storage",storage:"fossil_frights:red_alert",path:"gametime"},right:{type:"constant",value:40}}
function fossil_frights:util/player/red_alert_macro with storage fossil_frights:red_alert