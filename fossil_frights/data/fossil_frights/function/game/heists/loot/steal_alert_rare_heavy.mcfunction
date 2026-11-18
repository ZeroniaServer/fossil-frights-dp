# Rare or Heavy loot was just stolen: blare the alarm and slam the security gates.
function fossil_frights:game/heists/alarm_effects/start
execute as @a[predicate=fossil_frights:player/team/guard] at @s run playsound fossil_frights:heists.alarm master @s ~ ~ ~ 1 1
execute as @a[predicate=fossil_frights:player/team/thief] at @s run playsound fossil_frights:heists.alarm master @s ~ ~ ~ 1 1
execute as @a[predicate=fossil_frights:player/team/spectator] at @s run playsound fossil_frights:heists.alarm master @s ~ ~ ~ 1 1
function fossil_frights:hazard/start/security
scoreboard players set $security_by_loot ff_heist 1
tellraw Evtema3 [{text:"RARE HEAVY -- rare heavy exact="},{score:{name:"$rare_heavy_exact",objective:"ff_heist"}}," rare heavy exact prev=",{score:{name:"$rare_heavy_exact_prev",objective:"ff_heist"}}," taken rare heavy=",{score:{name:"$taken_rare_heavy",objective:"ff_heist"}}," taken total=",{score:{name:"$taken_total",objective:"ff_heist"}}," taken common uncommon=",{score:{name:"$taken_common_uncommon",objective:"ff_heist"}}," taken common uncommon prev=",{score:{name:"$taken_common_uncommon_prev",objective:"ff_heist"}}]