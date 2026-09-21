scoreboard players set #security_indicator ff_hazard_rng 0
scoreboard players set #security_indicator_timer ff_hazard_rng 0
scoreboard players set #security_alarm_timer ff_hazard_rng 0
function fossil_frights:hazard/security/update_panel

execute as @e[type=minecraft:item_display,tag=ff_security_gate] run function fossil_frights:animations/security_gate/open/start
