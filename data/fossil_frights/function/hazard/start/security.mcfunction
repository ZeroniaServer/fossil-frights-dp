execute if score security ff_hazard_active matches 1 run return 0

scoreboard players set security ff_hazard_active 1
function fossil_frights:advancements/checks/hazardous
function fossil_frights:game/bossbar/update_hazards
execute as @a[tag=ff_active] at @s run playsound fossil-frights:hazards.security master @s ~ ~ ~ 1 1
scoreboard players set #security_indicator ff_hazard_rng 0
scoreboard players set #security_indicator_timer ff_hazard_rng 8
scoreboard players set #security_alarm_timer ff_hazard_rng 10
function fossil_frights:hazard/security/set_indicator_alert_0

function fossil_frights:hazard/security/start